IsInBetween(value, min, max){
    return clamp(value, min, max) == value;
}

IsNumeric(const string[]){
    for(new i; i < strlen(string); i++){
        if(string[i] > '9' || string[i] < '0'){
            return 0;
        }
    }
    return 1;
}

HasNumeric(const string[]){
    for(new i = 0; string[i] != EOS; i++){
        if('0' <= string[i] <= '9'){
            return 1;
        }
    }
    return 0;
}

HasCharacters(const string[]){
    static valid_chars[] = {
        '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '~', '`', '-', '=', '+', '.', ',', '/', ';', ''', '"', '\\', '[', ']', '{', '}'
    };
    for(new i; i < strlen(string); i++){
        for(new x; x < sizeof(valid_chars); x++){
            if(string[i] == valid_chars[x]){
                return 1;
            }
        }
    }
    return 0;
}