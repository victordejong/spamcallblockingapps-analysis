package com.google.firebase.perf.p494v1;

import p131c.p161d.p367h.C6381y;
/* renamed from: com.google.firebase.perf.v1.ApplicationProcessState */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/ApplicationProcessState.class */
public enum ApplicationProcessState implements C6381y.AbstractC6384c {
    APPLICATION_PROCESS_STATE_UNKNOWN(0),
    FOREGROUND(1),
    BACKGROUND(2),
    FOREGROUND_BACKGROUND(3);
    
    public static final int APPLICATION_PROCESS_STATE_UNKNOWN_VALUE = 0;
    public static final int BACKGROUND_VALUE = 2;
    public static final int FOREGROUND_BACKGROUND_VALUE = 3;
    public static final int FOREGROUND_VALUE = 1;
    public static final C6381y.AbstractC6385d<ApplicationProcessState> internalValueMap = new C6381y.AbstractC6385d<ApplicationProcessState>() { // from class: com.google.firebase.perf.v1.ApplicationProcessState.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public ApplicationProcessState mo6797a(int i) {
            return ApplicationProcessState.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.perf.v1.ApplicationProcessState$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/ApplicationProcessState$b.class */
    public static final class C7862b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31036a = new C7862b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return ApplicationProcessState.forNumber(i) != null;
        }
    }

    ApplicationProcessState(int i) {
        this.value = i;
    }

    public static ApplicationProcessState forNumber(int i) {
        if (i == 0) {
            return APPLICATION_PROCESS_STATE_UNKNOWN;
        }
        if (i == 1) {
            return FOREGROUND;
        }
        if (i == 2) {
            return BACKGROUND;
        }
        if (i != 3) {
            return null;
        }
        return FOREGROUND_BACKGROUND;
    }

    public static C6381y.AbstractC6385d<ApplicationProcessState> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7862b.f31036a;
    }

    @Deprecated
    public static ApplicationProcessState valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
