package com.google.common.collect;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/EmptyImmutableSetMultimap.class */
public class EmptyImmutableSetMultimap extends ImmutableSetMultimap<Object, Object> {
    public static final EmptyImmutableSetMultimap INSTANCE = new EmptyImmutableSetMultimap();
    public static final long serialVersionUID = 0;

    public EmptyImmutableSetMultimap() {
        super(ImmutableMap.m8380of(), 0, null);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
