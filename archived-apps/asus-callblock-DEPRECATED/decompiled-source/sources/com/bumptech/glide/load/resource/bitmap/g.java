package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.f.b;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.resource.a;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/g.class */
public final class g implements b<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final e<File, Bitmap> f3606a;

    /* renamed from: b  reason: collision with root package name */
    private final h f3607b;
    private final b c = new b();
    private final com.bumptech.glide.load.b<ParcelFileDescriptor> d = a.b();

    public g(c cVar, com.bumptech.glide.load.a aVar) {
        this.f3606a = new com.bumptech.glide.load.resource.b.c(new p(cVar, aVar));
        this.f3607b = new h(cVar, aVar);
    }

    @Override // com.bumptech.glide.f.b
    public final e<File, Bitmap> a() {
        return this.f3606a;
    }

    @Override // com.bumptech.glide.f.b
    public final e<ParcelFileDescriptor, Bitmap> b() {
        return this.f3607b;
    }

    @Override // com.bumptech.glide.f.b
    public final com.bumptech.glide.load.b<ParcelFileDescriptor> c() {
        return this.d;
    }

    @Override // com.bumptech.glide.f.b
    public final f<Bitmap> d() {
        return this.c;
    }
}
