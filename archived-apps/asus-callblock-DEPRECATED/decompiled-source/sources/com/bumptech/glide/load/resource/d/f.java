package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.resource.c.b;
import com.bumptech.glide.load.resource.c.e;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/f.class */
public final class f implements g<a> {

    /* renamed from: a  reason: collision with root package name */
    private final g<Bitmap> f3660a;

    /* renamed from: b  reason: collision with root package name */
    private final g<b> f3661b;

    public f(c cVar, g<Bitmap> gVar) {
        this(gVar, new e(gVar, cVar));
    }

    private f(g<Bitmap> gVar, g<b> gVar2) {
        this.f3660a = gVar;
        this.f3661b = gVar2;
    }

    @Override // com.bumptech.glide.load.g
    public final k<a> a(k<a> kVar, int i, int i2) {
        k<a> kVar2;
        k<Bitmap> kVar3 = kVar.a().f3653b;
        k<b> kVar4 = kVar.a().f3652a;
        if (kVar3 == null || this.f3660a == null) {
            kVar2 = kVar;
            if (kVar4 != null) {
                kVar2 = kVar;
                if (this.f3661b != null) {
                    k<b> a2 = this.f3661b.a(kVar4, i, i2);
                    kVar2 = kVar;
                    if (!kVar4.equals(a2)) {
                        kVar2 = new b(new a(kVar.a().f3653b, a2));
                    }
                }
            }
        } else {
            k<Bitmap> a3 = this.f3660a.a(kVar3, i, i2);
            kVar2 = kVar;
            if (!kVar3.equals(a3)) {
                kVar2 = new b(new a(a3, kVar.a().f3652a));
            }
        }
        return kVar2;
    }

    @Override // com.bumptech.glide.load.g
    public final String a() {
        return this.f3660a.a();
    }
}
