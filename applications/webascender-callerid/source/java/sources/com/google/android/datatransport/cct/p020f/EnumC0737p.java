package com.google.android.datatransport.cct.p020f;

import android.util.SparseArray;
/* renamed from: com.google.android.datatransport.cct.f.p */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/p.class */
public enum EnumC0737p {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);
    
    private static final SparseArray<EnumC0737p> valueMap;
    private final int value;

    static {
        EnumC0737p enumC0737p = DEFAULT;
        EnumC0737p enumC0737p2 = UNMETERED_ONLY;
        EnumC0737p enumC0737p3 = UNMETERED_OR_DAILY;
        EnumC0737p enumC0737p4 = FAST_IF_RADIO_AWAKE;
        EnumC0737p enumC0737p5 = NEVER;
        EnumC0737p enumC0737p6 = UNRECOGNIZED;
        SparseArray<EnumC0737p> sparseArray = new SparseArray<>();
        valueMap = sparseArray;
        sparseArray.put(0, enumC0737p);
        sparseArray.put(1, enumC0737p2);
        sparseArray.put(2, enumC0737p3);
        sparseArray.put(3, enumC0737p4);
        sparseArray.put(4, enumC0737p5);
        sparseArray.put(-1, enumC0737p6);
    }

    EnumC0737p(int i) {
        this.value = i;
    }

    public static EnumC0737p forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return UNMETERED_ONLY;
            }
            if (i == 2) {
                return UNMETERED_OR_DAILY;
            }
            if (i == 3) {
                return FAST_IF_RADIO_AWAKE;
            }
            if (i == 4) {
                return NEVER;
            }
            return null;
        }
        return DEFAULT;
    }

    public final int getNumber() {
        return this.value;
    }
}
