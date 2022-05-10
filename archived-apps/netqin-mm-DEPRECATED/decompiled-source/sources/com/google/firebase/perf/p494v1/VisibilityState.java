package com.google.firebase.perf.p494v1;

import p131c.p161d.p367h.C6381y;
/* renamed from: com.google.firebase.perf.v1.VisibilityState */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/VisibilityState.class */
public enum VisibilityState implements C6381y.AbstractC6384c {
    VISIBILITY_STATE_UNKNOWN(0),
    VISIBLE(1),
    HIDDEN(2),
    PRERENDER(3),
    UNLOADED(4);
    
    public static final int HIDDEN_VALUE = 2;
    public static final int PRERENDER_VALUE = 3;
    public static final int UNLOADED_VALUE = 4;
    public static final int VISIBILITY_STATE_UNKNOWN_VALUE = 0;
    public static final int VISIBLE_VALUE = 1;
    public static final C6381y.AbstractC6385d<VisibilityState> internalValueMap = new C6381y.AbstractC6385d<VisibilityState>() { // from class: com.google.firebase.perf.v1.VisibilityState.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public VisibilityState mo6797a(int i) {
            return VisibilityState.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.perf.v1.VisibilityState$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/VisibilityState$b.class */
    public static final class C7887b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31049a = new C7887b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return VisibilityState.forNumber(i) != null;
        }
    }

    VisibilityState(int i) {
        this.value = i;
    }

    public static VisibilityState forNumber(int i) {
        if (i == 0) {
            return VISIBILITY_STATE_UNKNOWN;
        }
        if (i == 1) {
            return VISIBLE;
        }
        if (i == 2) {
            return HIDDEN;
        }
        if (i == 3) {
            return PRERENDER;
        }
        if (i != 4) {
            return null;
        }
        return UNLOADED;
    }

    public static C6381y.AbstractC6385d<VisibilityState> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7887b.f31049a;
    }

    @Deprecated
    public static VisibilityState valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
