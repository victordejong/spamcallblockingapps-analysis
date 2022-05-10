package com.mopub.common.factories;

import com.mopub.common.util.Reflection;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/factories/MethodBuilderFactory.class */
public class MethodBuilderFactory {

    /* renamed from: a */
    public static MethodBuilderFactory f33828a = new MethodBuilderFactory();

    public static Reflection.MethodBuilder create(Object obj, String str) {
        return f33828a.m4589a(obj, str);
    }

    @Deprecated
    public static void setInstance(MethodBuilderFactory methodBuilderFactory) {
        f33828a = methodBuilderFactory;
    }

    /* renamed from: a */
    public Reflection.MethodBuilder m4589a(Object obj, String str) {
        return new Reflection.MethodBuilder(obj, str);
    }
}
