package com.google.api;
/* loaded from: classes2-dex2jar.jar:com/google/api/JwtLocation$InCase.class */
public enum JwtLocation$InCase {
    HEADER(1),
    QUERY(2),
    IN_NOT_SET(0);
    
    public final int value;

    JwtLocation$InCase(int i) {
        this.value = i;
    }

    public static JwtLocation$InCase forNumber(int i) {
        if (i == 0) {
            return IN_NOT_SET;
        }
        if (i == 1) {
            return HEADER;
        }
        if (i != 2) {
            return null;
        }
        return QUERY;
    }

    @Deprecated
    public static JwtLocation$InCase valueOf(int i) {
        return forNumber(i);
    }

    public int getNumber() {
        return this.value;
    }
}
