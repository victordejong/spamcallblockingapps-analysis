package com.google.android.datatransport.cct.p020f;

import android.util.SparseArray;
import com.google.android.datatransport.cct.f.i;
/* renamed from: com.google.android.datatransport.cct.f.o */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/o.class */
public abstract class AbstractC0733o {

    /* renamed from: com.google.android.datatransport.cct.f.o$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/o$a.class */
    public static abstract class AbstractC0734a {
        /* renamed from: a */
        public abstract AbstractC0733o m3853a();

        /* renamed from: b */
        public abstract AbstractC0734a m3852b(EnumC0735b enumC0735b);

        /* renamed from: c */
        public abstract AbstractC0734a m3851c(EnumC0736c enumC0736c);
    }

    /* renamed from: com.google.android.datatransport.cct.f.o$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/o$b.class */
    public enum EnumC0735b {
        UNKNOWN_MOBILE_SUBTYPE(0),
        GPRS(1),
        EDGE(2),
        UMTS(3),
        CDMA(4),
        EVDO_0(5),
        EVDO_A(6),
        RTT(7),
        HSDPA(8),
        HSUPA(9),
        HSPA(10),
        IDEN(11),
        EVDO_B(12),
        LTE(13),
        EHRPD(14),
        HSPAP(15),
        GSM(16),
        TD_SCDMA(17),
        IWLAN(18),
        LTE_CA(19),
        COMBINED(100);
        
        private static final SparseArray<EnumC0735b> valueMap;
        private final int value;

        static {
            EnumC0735b enumC0735b = UNKNOWN_MOBILE_SUBTYPE;
            EnumC0735b enumC0735b2 = GPRS;
            EnumC0735b enumC0735b3 = EDGE;
            EnumC0735b enumC0735b4 = UMTS;
            EnumC0735b enumC0735b5 = CDMA;
            EnumC0735b enumC0735b6 = EVDO_0;
            EnumC0735b enumC0735b7 = EVDO_A;
            EnumC0735b enumC0735b8 = RTT;
            EnumC0735b enumC0735b9 = HSDPA;
            EnumC0735b enumC0735b10 = HSUPA;
            EnumC0735b enumC0735b11 = HSPA;
            EnumC0735b enumC0735b12 = IDEN;
            EnumC0735b enumC0735b13 = EVDO_B;
            EnumC0735b enumC0735b14 = LTE;
            EnumC0735b enumC0735b15 = EHRPD;
            EnumC0735b enumC0735b16 = HSPAP;
            EnumC0735b enumC0735b17 = GSM;
            EnumC0735b enumC0735b18 = TD_SCDMA;
            EnumC0735b enumC0735b19 = IWLAN;
            EnumC0735b enumC0735b20 = LTE_CA;
            SparseArray<EnumC0735b> sparseArray = new SparseArray<>();
            valueMap = sparseArray;
            sparseArray.put(0, enumC0735b);
            sparseArray.put(1, enumC0735b2);
            sparseArray.put(2, enumC0735b3);
            sparseArray.put(3, enumC0735b4);
            sparseArray.put(4, enumC0735b5);
            sparseArray.put(5, enumC0735b6);
            sparseArray.put(6, enumC0735b7);
            sparseArray.put(7, enumC0735b8);
            sparseArray.put(8, enumC0735b9);
            sparseArray.put(9, enumC0735b10);
            sparseArray.put(10, enumC0735b11);
            sparseArray.put(11, enumC0735b12);
            sparseArray.put(12, enumC0735b13);
            sparseArray.put(13, enumC0735b14);
            sparseArray.put(14, enumC0735b15);
            sparseArray.put(15, enumC0735b16);
            sparseArray.put(16, enumC0735b17);
            sparseArray.put(17, enumC0735b18);
            sparseArray.put(18, enumC0735b19);
            sparseArray.put(19, enumC0735b20);
        }

        EnumC0735b(int i) {
            this.value = i;
        }

        public static EnumC0735b forNumber(int i) {
            return valueMap.get(i);
        }

        public int getValue() {
            return this.value;
        }
    }

    /* renamed from: com.google.android.datatransport.cct.f.o$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/o$c.class */
    public enum EnumC0736c {
        MOBILE(0),
        WIFI(1),
        MOBILE_MMS(2),
        MOBILE_SUPL(3),
        MOBILE_DUN(4),
        MOBILE_HIPRI(5),
        WIMAX(6),
        BLUETOOTH(7),
        DUMMY(8),
        ETHERNET(9),
        MOBILE_FOTA(10),
        MOBILE_IMS(11),
        MOBILE_CBS(12),
        WIFI_P2P(13),
        MOBILE_IA(14),
        MOBILE_EMERGENCY(15),
        PROXY(16),
        VPN(17),
        NONE(-1);
        
        private static final SparseArray<EnumC0736c> valueMap;
        private final int value;

        static {
            EnumC0736c enumC0736c = MOBILE;
            EnumC0736c enumC0736c2 = WIFI;
            EnumC0736c enumC0736c3 = MOBILE_MMS;
            EnumC0736c enumC0736c4 = MOBILE_SUPL;
            EnumC0736c enumC0736c5 = MOBILE_DUN;
            EnumC0736c enumC0736c6 = MOBILE_HIPRI;
            EnumC0736c enumC0736c7 = WIMAX;
            EnumC0736c enumC0736c8 = BLUETOOTH;
            EnumC0736c enumC0736c9 = DUMMY;
            EnumC0736c enumC0736c10 = ETHERNET;
            EnumC0736c enumC0736c11 = MOBILE_FOTA;
            EnumC0736c enumC0736c12 = MOBILE_IMS;
            EnumC0736c enumC0736c13 = MOBILE_CBS;
            EnumC0736c enumC0736c14 = WIFI_P2P;
            EnumC0736c enumC0736c15 = MOBILE_IA;
            EnumC0736c enumC0736c16 = MOBILE_EMERGENCY;
            EnumC0736c enumC0736c17 = PROXY;
            EnumC0736c enumC0736c18 = VPN;
            EnumC0736c enumC0736c19 = NONE;
            SparseArray<EnumC0736c> sparseArray = new SparseArray<>();
            valueMap = sparseArray;
            sparseArray.put(0, enumC0736c);
            sparseArray.put(1, enumC0736c2);
            sparseArray.put(2, enumC0736c3);
            sparseArray.put(3, enumC0736c4);
            sparseArray.put(4, enumC0736c5);
            sparseArray.put(5, enumC0736c6);
            sparseArray.put(6, enumC0736c7);
            sparseArray.put(7, enumC0736c8);
            sparseArray.put(8, enumC0736c9);
            sparseArray.put(9, enumC0736c10);
            sparseArray.put(10, enumC0736c11);
            sparseArray.put(11, enumC0736c12);
            sparseArray.put(12, enumC0736c13);
            sparseArray.put(13, enumC0736c14);
            sparseArray.put(14, enumC0736c15);
            sparseArray.put(15, enumC0736c16);
            sparseArray.put(16, enumC0736c17);
            sparseArray.put(17, enumC0736c18);
            sparseArray.put(-1, enumC0736c19);
        }

        EnumC0736c(int i) {
            this.value = i;
        }

        public static EnumC0736c forNumber(int i) {
            return valueMap.get(i);
        }

        public int getValue() {
            return this.value;
        }
    }

    /* renamed from: a */
    public static AbstractC0734a m3856a() {
        return new i.b();
    }

    /* renamed from: b */
    public abstract EnumC0735b m3855b();

    /* renamed from: c */
    public abstract EnumC0736c m3854c();
}
