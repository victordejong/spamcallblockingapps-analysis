package com.google.api;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/api/Property$PropertyType.class */
public enum Property$PropertyType implements C6381y.AbstractC6384c {
    UNSPECIFIED(0),
    INT64(1),
    BOOL(2),
    STRING(3),
    DOUBLE(4),
    UNRECOGNIZED(-1);
    
    public static final int BOOL_VALUE = 2;
    public static final int DOUBLE_VALUE = 4;
    public static final int INT64_VALUE = 1;
    public static final int STRING_VALUE = 3;
    public static final int UNSPECIFIED_VALUE = 0;
    public static final C6381y.AbstractC6385d<Property$PropertyType> internalValueMap = new C6381y.AbstractC6385d<Property$PropertyType>() { // from class: com.google.api.Property$PropertyType.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Property$PropertyType mo6797a(int i) {
            return Property$PropertyType.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.api.Property$PropertyType$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/Property$PropertyType$b.class */
    public static final class C7310b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30266a = new C7310b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return Property$PropertyType.forNumber(i) != null;
        }
    }

    Property$PropertyType(int i) {
        this.value = i;
    }

    public static Property$PropertyType forNumber(int i) {
        if (i == 0) {
            return UNSPECIFIED;
        }
        if (i == 1) {
            return INT64;
        }
        if (i == 2) {
            return BOOL;
        }
        if (i == 3) {
            return STRING;
        }
        if (i != 4) {
            return null;
        }
        return DOUBLE;
    }

    public static C6381y.AbstractC6385d<Property$PropertyType> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7310b.f30266a;
    }

    @Deprecated
    public static Property$PropertyType valueOf(int i) {
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
