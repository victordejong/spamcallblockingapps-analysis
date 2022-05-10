package com.google.protobuf;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label.class */
public enum DescriptorProtos$FieldDescriptorProto$Label implements C6381y.AbstractC6384c {
    LABEL_OPTIONAL(1),
    LABEL_REQUIRED(2),
    LABEL_REPEATED(3);
    
    public static final int LABEL_OPTIONAL_VALUE = 1;
    public static final int LABEL_REPEATED_VALUE = 3;
    public static final int LABEL_REQUIRED_VALUE = 2;
    public static final C6381y.AbstractC6385d<DescriptorProtos$FieldDescriptorProto$Label> internalValueMap = new C6381y.AbstractC6385d<DescriptorProtos$FieldDescriptorProto$Label>() { // from class: com.google.protobuf.DescriptorProtos$FieldDescriptorProto$Label.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public DescriptorProtos$FieldDescriptorProto$Label mo6797a(int i) {
            return DescriptorProtos$FieldDescriptorProto$Label.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.protobuf.DescriptorProtos$FieldDescriptorProto$Label$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label$b.class */
    public static final class C7930b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31117a = new C7930b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return DescriptorProtos$FieldDescriptorProto$Label.forNumber(i) != null;
        }
    }

    DescriptorProtos$FieldDescriptorProto$Label(int i) {
        this.value = i;
    }

    public static DescriptorProtos$FieldDescriptorProto$Label forNumber(int i) {
        if (i == 1) {
            return LABEL_OPTIONAL;
        }
        if (i == 2) {
            return LABEL_REQUIRED;
        }
        if (i != 3) {
            return null;
        }
        return LABEL_REPEATED;
    }

    public static C6381y.AbstractC6385d<DescriptorProtos$FieldDescriptorProto$Label> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7930b.f31117a;
    }

    @Deprecated
    public static DescriptorProtos$FieldDescriptorProto$Label valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
