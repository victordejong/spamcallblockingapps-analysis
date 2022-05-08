package com.google.p051a;

import java.lang.reflect.Field;
import java.util.Locale;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b;
/* renamed from: com.google.a.c */
/* loaded from: classes-dex2jar.jar:com/google/a/c.class */
public enum EnumC1492c implements AbstractC1506j {
    IDENTITY { // from class: com.google.a.d
        @Override // com.google.p051a.AbstractC1506j
        /* renamed from: a */
        public final String mo6185a(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.google.a.e
        @Override // com.google.p051a.AbstractC1506j
        /* renamed from: a */
        public final String mo6185a(Field field) {
            return m6256a(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.google.a.f
        @Override // com.google.p051a.AbstractC1506j
        /* renamed from: a */
        public final String mo6185a(Field field) {
            return m6256a(m6255a(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.google.a.g
        @Override // com.google.p051a.AbstractC1506j
        /* renamed from: a */
        public final String mo6185a(Field field) {
            return m6255a(field.getName(), AbstractC0079b.ROLL_OVER_FILE_NAME_SEPARATOR).toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.google.a.h
        @Override // com.google.p051a.AbstractC1506j
        /* renamed from: a */
        public final String mo6185a(Field field) {
            return m6255a(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DOTS { // from class: com.google.a.i
        @Override // com.google.p051a.AbstractC1506j
        /* renamed from: a */
        public final String mo6185a(Field field) {
            return m6255a(field.getName(), ".").toLowerCase(Locale.ENGLISH);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* synthetic */ EnumC1492c(byte b) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m6256a(String str) {
        int i;
        String str2;
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        char charAt = str.charAt(0);
        int length = str.length();
        while (i2 < length - 1 && !Character.isLetter(charAt)) {
            sb.append(charAt);
            i2++;
            charAt = str.charAt(i2);
        }
        String str3 = str;
        if (!Character.isUpperCase(charAt)) {
            char upperCase = Character.toUpperCase(charAt);
            if (i2 + 1 < str.length()) {
                str2 = upperCase + str.substring(i);
            } else {
                str2 = String.valueOf(upperCase);
            }
            sb.append(str2);
            str3 = sb.toString();
        }
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m6255a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }
}
