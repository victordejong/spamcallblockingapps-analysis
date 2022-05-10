package com.google.api;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/api/ChangeType.class */
public enum ChangeType implements C6381y.AbstractC6384c {
    CHANGE_TYPE_UNSPECIFIED(0),
    ADDED(1),
    REMOVED(2),
    MODIFIED(3),
    UNRECOGNIZED(-1);
    
    public static final int ADDED_VALUE = 1;
    public static final int CHANGE_TYPE_UNSPECIFIED_VALUE = 0;
    public static final int MODIFIED_VALUE = 3;
    public static final int REMOVED_VALUE = 2;
    public static final C6381y.AbstractC6385d<ChangeType> internalValueMap = new C6381y.AbstractC6385d<ChangeType>() { // from class: com.google.api.ChangeType.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public ChangeType mo6797a(int i) {
            return ChangeType.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.api.ChangeType$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/ChangeType$b.class */
    public static final class C7298b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30259a = new C7298b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return ChangeType.forNumber(i) != null;
        }
    }

    ChangeType(int i) {
        this.value = i;
    }

    public static ChangeType forNumber(int i) {
        if (i == 0) {
            return CHANGE_TYPE_UNSPECIFIED;
        }
        if (i == 1) {
            return ADDED;
        }
        if (i == 2) {
            return REMOVED;
        }
        if (i != 3) {
            return null;
        }
        return MODIFIED;
    }

    public static C6381y.AbstractC6385d<ChangeType> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7298b.f30259a;
    }

    @Deprecated
    public static ChangeType valueOf(int i) {
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
