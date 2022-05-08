package com.bumptech.glide.load.resource.c;

import com.bumptech.glide.i.h;
import com.bumptech.glide.load.resource.a.a;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/d.class */
public final class d extends a<b> {
    public d(b bVar) {
        super(bVar);
    }

    @Override // com.bumptech.glide.load.b.k
    public final int b() {
        return h.a(((b) this.f3588a).f3629a.i) + ((b) this.f3588a).f3629a.f3632b.length;
    }

    @Override // com.bumptech.glide.load.b.k
    public final void c() {
        ((b) this.f3588a).stop();
        b bVar = (b) this.f3588a;
        bVar.d = true;
        bVar.f3629a.h.a(bVar.f3629a.i);
        bVar.c.a();
        bVar.c.c = false;
    }
}
