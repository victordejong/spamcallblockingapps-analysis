package com.google.protobuf;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/DescriptorProtos$FieldOptions$JSType.class */
public enum DescriptorProtos$FieldOptions$JSType implements C6381y.AbstractC6384c {
    JS_NORMAL(0),
    JS_STRING(1),
    JS_NUMBER(2);
    
    public static final int JS_NORMAL_VALUE = 0;
    public static final int JS_NUMBER_VALUE = 2;
    public static final int JS_STRING_VALUE = 1;
    public static final C6381y.AbstractC6385d<DescriptorProtos$FieldOptions$JSType> internalValueMap = new C6381y.AbstractC6385d<DescriptorProtos$FieldOptions$JSType>() { // from class: com.google.protobuf.DescriptorProtos$FieldOptions$JSType.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public DescriptorProtos$FieldOptions$JSType mo6797a(int i) {
            return DescriptorProtos$FieldOptions$JSType.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.protobuf.DescriptorProtos$FieldOptions$JSType$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/DescriptorProtos$FieldOptions$JSType$b.class */
    public static final class C7936b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31120a = new C7936b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return DescriptorProtos$FieldOptions$JSType.forNumber(i) != null;
        }
    }

    DescriptorProtos$FieldOptions$JSType(int i) {
        this.value = i;
    }

    public static DescriptorProtos$FieldOptions$JSType forNumber(int i) {
        if (i == 0) {
            return JS_NORMAL;
        }
        if (i == 1) {
            return JS_STRING;
        }
        if (i != 2) {
            return null;
        }
        return JS_NUMBER;
    }

    public static C6381y.AbstractC6385d<DescriptorProtos$FieldOptions$JSType> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7936b.f31120a;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$JSType valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
