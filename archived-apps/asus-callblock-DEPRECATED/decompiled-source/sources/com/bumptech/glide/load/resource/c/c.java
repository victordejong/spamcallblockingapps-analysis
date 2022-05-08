package com.bumptech.glide.load.resource.c;

import android.content.Context;
import com.bumptech.glide.f.b;
import com.bumptech.glide.load.c.m;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.f;
import java.io.File;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/c.class */
public final class c implements b<InputStream, b> {

    /* renamed from: a  reason: collision with root package name */
    private final i f3633a;

    /* renamed from: b  reason: collision with root package name */
    private final j f3634b;
    private final m c = new m();
    private final com.bumptech.glide.load.resource.b.c<b> d;

    public c(Context context, com.bumptech.glide.load.b.a.c cVar) {
        this.f3633a = new i(context, cVar);
        this.d = new com.bumptech.glide.load.resource.b.c<>(this.f3633a);
        this.f3634b = new j(cVar);
    }

    @Override // com.bumptech.glide.f.b
    public final e<File, b> a() {
        return this.d;
    }

    @Override // com.bumptech.glide.f.b
    public final e<InputStream, b> b() {
        return this.f3633a;
    }

    @Override // com.bumptech.glide.f.b
    public final com.bumptech.glide.load.b<InputStream> c() {
        return this.c;
    }

    @Override // com.bumptech.glide.f.b
    public final f<b> d() {
        return this.f3634b;
    }
}
