package com.bumptech.glide.g.a;

import com.bumptech.glide.g.a.f;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/g.class */
public final class g<R> implements d<R> {

    /* renamed from: a  reason: collision with root package name */
    private final f.a f3430a;

    /* renamed from: b  reason: collision with root package name */
    private c<R> f3431b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f.a aVar) {
        this.f3430a = aVar;
    }

    @Override // com.bumptech.glide.g.a.d
    public final c<R> a(boolean z, boolean z2) {
        c<R> cVar;
        if (z || !z2) {
            cVar = e.b();
        } else {
            if (this.f3431b == null) {
                this.f3431b = new f(this.f3430a);
            }
            cVar = this.f3431b;
        }
        return cVar;
    }
}
