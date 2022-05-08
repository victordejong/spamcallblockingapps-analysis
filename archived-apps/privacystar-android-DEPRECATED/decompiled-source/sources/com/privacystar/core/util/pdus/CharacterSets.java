package com.privacystar.core.util.pdus;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/pdus/CharacterSets.class */
public class CharacterSets {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int ANY_CHARSET = 0;
    public static final int DEFAULT_CHARSET = 106;
    public static final String DEFAULT_CHARSET_NAME = "utf-8";
    public static final int ISO_8859_1 = 4;
    public static final int ISO_8859_2 = 5;
    public static final int ISO_8859_3 = 6;
    public static final int ISO_8859_4 = 7;
    public static final int ISO_8859_5 = 8;
    public static final int ISO_8859_6 = 9;
    public static final int ISO_8859_7 = 10;
    public static final int ISO_8859_8 = 11;
    public static final int ISO_8859_9 = 12;
    public static final String MIMENAME_ANY_CHARSET = "*";
    public static final String MIMENAME_UTF_8 = "utf-8";
    public static final int SHIFT_JIS = 17;
    public static final int UCS2 = 1000;
    public static final int US_ASCII = 3;
    public static final int UTF_16 = 1015;
    public static final int UTF_8 = 106;
    public static final int BIG5 = 2026;
    private static final int[] MIBENUM_NUMBERS = {0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17, 106, BIG5, 1000, 1015};
    public static final String MIMENAME_US_ASCII = "us-ascii";
    public static final String MIMENAME_ISO_8859_1 = "iso-8859-1";
    public static final String MIMENAME_ISO_8859_2 = "iso-8859-2";
    public static final String MIMENAME_ISO_8859_3 = "iso-8859-3";
    public static final String MIMENAME_ISO_8859_4 = "iso-8859-4";
    public static final String MIMENAME_ISO_8859_5 = "iso-8859-5";
    public static final String MIMENAME_ISO_8859_6 = "iso-8859-6";
    public static final String MIMENAME_ISO_8859_7 = "iso-8859-7";
    public static final String MIMENAME_ISO_8859_8 = "iso-8859-8";
    public static final String MIMENAME_ISO_8859_9 = "iso-8859-9";
    public static final String MIMENAME_SHIFT_JIS = "shift_JIS";
    public static final String MIMENAME_BIG5 = "big5";
    public static final String MIMENAME_UCS2 = "iso-10646-ucs-2";
    public static final String MIMENAME_UTF_16 = "utf-16";
    private static final String[] MIME_NAMES = {"*", MIMENAME_US_ASCII, MIMENAME_ISO_8859_1, MIMENAME_ISO_8859_2, MIMENAME_ISO_8859_3, MIMENAME_ISO_8859_4, MIMENAME_ISO_8859_5, MIMENAME_ISO_8859_6, MIMENAME_ISO_8859_7, MIMENAME_ISO_8859_8, MIMENAME_ISO_8859_9, MIMENAME_SHIFT_JIS, "utf-8", MIMENAME_BIG5, MIMENAME_UCS2, MIMENAME_UTF_16};
    private static final HashMap<Integer, String> MIBENUM_TO_NAME_MAP = new HashMap<>();
    private static final HashMap<String, Integer> NAME_TO_MIBENUM_MAP = new HashMap<>();

    static {
        int length = MIBENUM_NUMBERS.length;
        for (int i = 0; i <= length - 1; i++) {
            MIBENUM_TO_NAME_MAP.put(Integer.valueOf(MIBENUM_NUMBERS[i]), MIME_NAMES[i]);
            NAME_TO_MIBENUM_MAP.put(MIME_NAMES[i], Integer.valueOf(MIBENUM_NUMBERS[i]));
        }
    }

    private CharacterSets() {
    }

    public static int getMibEnumValue(String str) throws UnsupportedEncodingException {
        if (str == null) {
            return -1;
        }
        Integer num = NAME_TO_MIBENUM_MAP.get(str);
        if (num != null) {
            return num.intValue();
        }
        throw new UnsupportedEncodingException();
    }

    public static String getMimeName(int i) throws UnsupportedEncodingException {
        String str = MIBENUM_TO_NAME_MAP.get(Integer.valueOf(i));
        if (str != null) {
            return str;
        }
        throw new UnsupportedEncodingException();
    }
}
