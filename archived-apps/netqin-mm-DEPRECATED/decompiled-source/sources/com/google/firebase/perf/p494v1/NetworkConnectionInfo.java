package com.google.firebase.perf.p494v1;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p282e.p340u.p350m.AbstractC6033q;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6381y;
/* renamed from: com.google.firebase.perf.v1.NetworkConnectionInfo */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkConnectionInfo.class */
public final class NetworkConnectionInfo extends GeneratedMessageLite<NetworkConnectionInfo, C7870b> implements AbstractC6033q {
    public static final NetworkConnectionInfo DEFAULT_INSTANCE;
    public static final int MOBILE_SUBTYPE_FIELD_NUMBER = 2;
    public static final int NETWORK_TYPE_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<NetworkConnectionInfo> PARSER;
    public int bitField0_;
    public int mobileSubtype_;
    public int networkType_ = -1;

    /* renamed from: com.google.firebase.perf.v1.NetworkConnectionInfo$MobileSubtype */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype.class */
    public enum MobileSubtype implements C6381y.AbstractC6384c {
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
        
        public static final int CDMA_VALUE = 4;
        public static final int COMBINED_VALUE = 100;
        public static final int EDGE_VALUE = 2;
        public static final int EHRPD_VALUE = 14;
        public static final int EVDO_0_VALUE = 5;
        public static final int EVDO_A_VALUE = 6;
        public static final int EVDO_B_VALUE = 12;
        public static final int GPRS_VALUE = 1;
        public static final int GSM_VALUE = 16;
        public static final int HSDPA_VALUE = 8;
        public static final int HSPAP_VALUE = 15;
        public static final int HSPA_VALUE = 10;
        public static final int HSUPA_VALUE = 9;
        public static final int IDEN_VALUE = 11;
        public static final int IWLAN_VALUE = 18;
        public static final int LTE_CA_VALUE = 19;
        public static final int LTE_VALUE = 13;
        public static final int RTT_VALUE = 7;
        public static final int TD_SCDMA_VALUE = 17;
        public static final int UMTS_VALUE = 3;
        public static final int UNKNOWN_MOBILE_SUBTYPE_VALUE = 0;
        public static final C6381y.AbstractC6385d<MobileSubtype> internalValueMap = new C7865a();
        public final int value;

        /* renamed from: com.google.firebase.perf.v1.NetworkConnectionInfo$MobileSubtype$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype$a.class */
        public class C7865a implements C6381y.AbstractC6385d<MobileSubtype> {
            @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public MobileSubtype mo6797a(int i) {
                return MobileSubtype.forNumber(i);
            }
        }

        /* renamed from: com.google.firebase.perf.v1.NetworkConnectionInfo$MobileSubtype$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype$b.class */
        public static final class C7866b implements C6381y.AbstractC6386e {

            /* renamed from: a */
            public static final C6381y.AbstractC6386e f31038a = new C7866b();

            @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
            /* renamed from: a */
            public boolean mo6796a(int i) {
                return MobileSubtype.forNumber(i) != null;
            }
        }

        MobileSubtype(int i) {
            this.value = i;
        }

        public static MobileSubtype forNumber(int i) {
            if (i == 100) {
                return COMBINED;
            }
            switch (i) {
                case 0:
                    return UNKNOWN_MOBILE_SUBTYPE;
                case 1:
                    return GPRS;
                case 2:
                    return EDGE;
                case 3:
                    return UMTS;
                case 4:
                    return CDMA;
                case 5:
                    return EVDO_0;
                case 6:
                    return EVDO_A;
                case 7:
                    return RTT;
                case 8:
                    return HSDPA;
                case 9:
                    return HSUPA;
                case 10:
                    return HSPA;
                case 11:
                    return IDEN;
                case 12:
                    return EVDO_B;
                case 13:
                    return LTE;
                case 14:
                    return EHRPD;
                case 15:
                    return HSPAP;
                case 16:
                    return GSM;
                case 17:
                    return TD_SCDMA;
                case 18:
                    return IWLAN;
                case 19:
                    return LTE_CA;
                default:
                    return null;
            }
        }

        public static C6381y.AbstractC6385d<MobileSubtype> internalGetValueMap() {
            return internalValueMap;
        }

        public static C6381y.AbstractC6386e internalGetVerifier() {
            return C7866b.f31038a;
        }

        @Deprecated
        public static MobileSubtype valueOf(int i) {
            return forNumber(i);
        }

        @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
        public final int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkConnectionInfo$NetworkType */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType.class */
    public enum NetworkType implements C6381y.AbstractC6384c {
        NONE(-1),
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
        VPN(17);
        
        public static final int BLUETOOTH_VALUE = 7;
        public static final int DUMMY_VALUE = 8;
        public static final int ETHERNET_VALUE = 9;
        public static final int MOBILE_CBS_VALUE = 12;
        public static final int MOBILE_DUN_VALUE = 4;
        public static final int MOBILE_EMERGENCY_VALUE = 15;
        public static final int MOBILE_FOTA_VALUE = 10;
        public static final int MOBILE_HIPRI_VALUE = 5;
        public static final int MOBILE_IA_VALUE = 14;
        public static final int MOBILE_IMS_VALUE = 11;
        public static final int MOBILE_MMS_VALUE = 2;
        public static final int MOBILE_SUPL_VALUE = 3;
        public static final int MOBILE_VALUE = 0;
        public static final int NONE_VALUE = -1;
        public static final int PROXY_VALUE = 16;
        public static final int VPN_VALUE = 17;
        public static final int WIFI_P2P_VALUE = 13;
        public static final int WIFI_VALUE = 1;
        public static final int WIMAX_VALUE = 6;
        public static final C6381y.AbstractC6385d<NetworkType> internalValueMap = new C7867a();
        public final int value;

        /* renamed from: com.google.firebase.perf.v1.NetworkConnectionInfo$NetworkType$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType$a.class */
        public class C7867a implements C6381y.AbstractC6385d<NetworkType> {
            @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public NetworkType mo6797a(int i) {
                return NetworkType.forNumber(i);
            }
        }

        /* renamed from: com.google.firebase.perf.v1.NetworkConnectionInfo$NetworkType$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType$b.class */
        public static final class C7868b implements C6381y.AbstractC6386e {

            /* renamed from: a */
            public static final C6381y.AbstractC6386e f31039a = new C7868b();

            @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
            /* renamed from: a */
            public boolean mo6796a(int i) {
                return NetworkType.forNumber(i) != null;
            }
        }

        NetworkType(int i) {
            this.value = i;
        }

        public static NetworkType forNumber(int i) {
            switch (i) {
                case -1:
                    return NONE;
                case 0:
                    return MOBILE;
                case 1:
                    return WIFI;
                case 2:
                    return MOBILE_MMS;
                case 3:
                    return MOBILE_SUPL;
                case 4:
                    return MOBILE_DUN;
                case 5:
                    return MOBILE_HIPRI;
                case 6:
                    return WIMAX;
                case 7:
                    return BLUETOOTH;
                case 8:
                    return DUMMY;
                case 9:
                    return ETHERNET;
                case 10:
                    return MOBILE_FOTA;
                case 11:
                    return MOBILE_IMS;
                case 12:
                    return MOBILE_CBS;
                case 13:
                    return WIFI_P2P;
                case 14:
                    return MOBILE_IA;
                case 15:
                    return MOBILE_EMERGENCY;
                case 16:
                    return PROXY;
                case 17:
                    return VPN;
                default:
                    return null;
            }
        }

        public static C6381y.AbstractC6385d<NetworkType> internalGetValueMap() {
            return internalValueMap;
        }

        public static C6381y.AbstractC6386e internalGetVerifier() {
            return C7868b.f31039a;
        }

        @Deprecated
        public static NetworkType valueOf(int i) {
            return forNumber(i);
        }

        @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
        public final int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkConnectionInfo$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkConnectionInfo$a.class */
    public static /* synthetic */ class C7869a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31040a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f31040a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31040a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31040a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31040a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31040a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31040a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31040a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkConnectionInfo$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkConnectionInfo$b.class */
    public static final class C7870b extends GeneratedMessageLite.AbstractC7946a<NetworkConnectionInfo, C7870b> implements AbstractC6033q {
        public C7870b() {
            super(NetworkConnectionInfo.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C7870b(C7869a aVar) {
            this();
        }
    }

    static {
        NetworkConnectionInfo networkConnectionInfo = new NetworkConnectionInfo();
        DEFAULT_INSTANCE = networkConnectionInfo;
        GeneratedMessageLite.m6949a(NetworkConnectionInfo.class, networkConnectionInfo);
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C7869a.f31040a[methodToInvoke.ordinal()]) {
            case 1:
                return new NetworkConnectionInfo();
            case 2:
                return new C7870b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\f��\u0002\f\u0001", new Object[]{"bitField0_", "networkType_", NetworkType.internalGetVerifier(), "mobileSubtype_", MobileSubtype.internalGetVerifier()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<NetworkConnectionInfo> v0Var = PARSER;
                AbstractC6376v0<NetworkConnectionInfo> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (NetworkConnectionInfo.class) {
                        try {
                            AbstractC6376v0<NetworkConnectionInfo> v0Var3 = PARSER;
                            v0Var2 = v0Var3;
                            if (v0Var3 == null) {
                                v0Var2 = new GeneratedMessageLite.C7947b<>(DEFAULT_INSTANCE);
                                PARSER = v0Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return v0Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
