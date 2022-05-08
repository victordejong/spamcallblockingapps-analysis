package com.bumptech.glide.load.resource.d;

import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.c.g;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/e.class */
public final class e implements com.bumptech.glide.load.e<InputStream, a> {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.e<g, a> f3659a;

    public e(com.bumptech.glide.load.e<g, a> eVar) {
        this.f3659a = eVar;
    }

    @Override // com.bumptech.glide.load.e
    public final /* synthetic */ k<a> a(InputStream inputStream, int i, int i2) {
        return this.f3659a.a(new g(inputStream, null), i, i2);
    }

    @Override // com.bumptech.glide.load.e
    public final String a() {
        return this.f3659a.a();
    }
}
