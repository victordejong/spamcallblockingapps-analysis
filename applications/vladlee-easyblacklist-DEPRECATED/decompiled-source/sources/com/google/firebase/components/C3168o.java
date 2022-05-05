package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.firebase.components.o */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/o.class */
public final class C3168o extends C3169p {

    /* renamed from: a */
    private final List<C3150b<?>> f19014a;

    public C3168o(List<C3150b<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f19014a = list;
    }
}
