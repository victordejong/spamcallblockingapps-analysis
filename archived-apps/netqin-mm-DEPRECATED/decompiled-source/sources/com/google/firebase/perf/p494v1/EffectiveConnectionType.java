package com.google.firebase.perf.p494v1;

import p131c.p161d.p367h.C6381y;
/* renamed from: com.google.firebase.perf.v1.EffectiveConnectionType */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/EffectiveConnectionType.class */
public enum EffectiveConnectionType implements C6381y.AbstractC6384c {
    EFFECTIVE_CONNECTION_TYPE_UNKNOWN(0),
    EFFECTIVE_CONNECTION_TYPE_SLOW_2G(1),
    EFFECTIVE_CONNECTION_TYPE_2G(2),
    EFFECTIVE_CONNECTION_TYPE_3G(3),
    EFFECTIVE_CONNECTION_TYPE_4G(4);
    
    public static final int EFFECTIVE_CONNECTION_TYPE_2G_VALUE = 2;
    public static final int EFFECTIVE_CONNECTION_TYPE_3G_VALUE = 3;
    public static final int EFFECTIVE_CONNECTION_TYPE_4G_VALUE = 4;
    public static final int EFFECTIVE_CONNECTION_TYPE_SLOW_2G_VALUE = 1;
    public static final int EFFECTIVE_CONNECTION_TYPE_UNKNOWN_VALUE = 0;
    public static final C6381y.AbstractC6385d<EffectiveConnectionType> internalValueMap = new C6381y.AbstractC6385d<EffectiveConnectionType>() { // from class: com.google.firebase.perf.v1.EffectiveConnectionType.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public EffectiveConnectionType mo6797a(int i) {
            return EffectiveConnectionType.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.perf.v1.EffectiveConnectionType$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/EffectiveConnectionType$b.class */
    public static final class C7864b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31037a = new C7864b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return EffectiveConnectionType.forNumber(i) != null;
        }
    }

    EffectiveConnectionType(int i) {
        this.value = i;
    }

    public static EffectiveConnectionType forNumber(int i) {
        if (i == 0) {
            return EFFECTIVE_CONNECTION_TYPE_UNKNOWN;
        }
        if (i == 1) {
            return EFFECTIVE_CONNECTION_TYPE_SLOW_2G;
        }
        if (i == 2) {
            return EFFECTIVE_CONNECTION_TYPE_2G;
        }
        if (i == 3) {
            return EFFECTIVE_CONNECTION_TYPE_3G;
        }
        if (i != 4) {
            return null;
        }
        return EFFECTIVE_CONNECTION_TYPE_4G;
    }

    public static C6381y.AbstractC6385d<EffectiveConnectionType> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7864b.f31037a;
    }

    @Deprecated
    public static EffectiveConnectionType valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
