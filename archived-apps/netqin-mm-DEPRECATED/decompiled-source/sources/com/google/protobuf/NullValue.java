package com.google.protobuf;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/NullValue.class */
public enum NullValue implements C6381y.AbstractC6384c {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);
    
    public static final int NULL_VALUE_VALUE = 0;
    public static final C6381y.AbstractC6385d<NullValue> internalValueMap = new C6381y.AbstractC6385d<NullValue>() { // from class: com.google.protobuf.NullValue.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public NullValue mo6797a(int i) {
            return NullValue.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.protobuf.NullValue$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/NullValue$b.class */
    public static final class C7954b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31141a = new C7954b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return NullValue.forNumber(i) != null;
        }
    }

    NullValue(int i) {
        this.value = i;
    }

    public static NullValue forNumber(int i) {
        if (i != 0) {
            return null;
        }
        return NULL_VALUE;
    }

    public static C6381y.AbstractC6385d<NullValue> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7954b.f31141a;
    }

    @Deprecated
    public static NullValue valueOf(int i) {
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
