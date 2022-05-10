package com.google.firebase.inappmessaging;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CommonTypesProto$Trigger.class */
public enum CommonTypesProto$Trigger implements C6381y.AbstractC6384c {
    UNKNOWN_TRIGGER(0),
    APP_LAUNCH(1),
    ON_FOREGROUND(2),
    UNRECOGNIZED(-1);
    
    public static final int APP_LAUNCH_VALUE = 1;
    public static final int ON_FOREGROUND_VALUE = 2;
    public static final int UNKNOWN_TRIGGER_VALUE = 0;
    public static final C6381y.AbstractC6385d<CommonTypesProto$Trigger> internalValueMap = new C6381y.AbstractC6385d<CommonTypesProto$Trigger>() { // from class: com.google.firebase.inappmessaging.CommonTypesProto$Trigger.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public CommonTypesProto$Trigger mo6797a(int i) {
            return CommonTypesProto$Trigger.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.inappmessaging.CommonTypesProto$Trigger$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CommonTypesProto$Trigger$b.class */
    public static final class C7828b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30958a = new C7828b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return CommonTypesProto$Trigger.forNumber(i) != null;
        }
    }

    CommonTypesProto$Trigger(int i) {
        this.value = i;
    }

    public static CommonTypesProto$Trigger forNumber(int i) {
        if (i == 0) {
            return UNKNOWN_TRIGGER;
        }
        if (i == 1) {
            return APP_LAUNCH;
        }
        if (i != 2) {
            return null;
        }
        return ON_FOREGROUND;
    }

    public static C6381y.AbstractC6385d<CommonTypesProto$Trigger> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7828b.f30958a;
    }

    @Deprecated
    public static CommonTypesProto$Trigger valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
