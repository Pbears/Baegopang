// 정규식을 적용
$.validator.addMethod("regx", function(value, element, regexpr) {          
    return regexpr.test(value);
});

// 한글, 영어를 체크하여 계산된 바이트 길이를 최소 길이와 비교
$.validator.addMethod('minbytelength', function (value, element, param) {
    var nMin = param;
    var nBytes = $.type(value) !== "string" ? 0 : value.getByteLength(); // 문자열의 Byte 길이를 반환(한글은 2byte이며 영숫자는 1byte)

    return this.optional(element) || (nBytes === 0 || nBytes >= nMin);
});

// 한글, 영어를 체크하여 계산된 바이트 길이를 최대 길이와 비교
$.validator.addMethod('maxbytelength', function (value, element, param) {
    var nMax = param;
    var nBytes = $.type(value) !== "string" ? 0 : value.getByteLength(); // 문자열의 Byte 길이를 반환(한글은 2byte이며 영숫자는 1byte)

    return this.optional(element) || (nBytes === 0 || nBytes <= nMax);
});

// 한글, 영어를 체크하여 계산된 바이트 길이를 최소 길이와 최대 길이 비교
$.validator.addMethod('bytelength', function (value, element, params) {
    var nMin = params.min;
    var nMax = params.max;
    var nBytes = $.type(value) !== "string" ? 0 : value.getByteLength(); // 문자열의 Byte 길이를 반환(한글은 2byte이며 영숫자는 1byte)
 
    return this.optional(element) || (nBytes === 0 || (nBytes >= nMin && nBytes <= nMax));
});