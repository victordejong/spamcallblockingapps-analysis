package com.bumptech.glide.load.resource;

import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.g;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d.class */
public final class d<T> implements g<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final g<?> f3651a = new d();

    public static <T> d<T> b() {
        return (d) f3651a;
    }

    @Override // com.bumptech.glide.load.g
    public final k<T> a(k<T> kVar, int i, int i2) {
        return kVar;
    }

    @Override // com.bumptech.glide.load.g
    public final String a() {
        return BuildConfig.FLAVOR;
    }
}
