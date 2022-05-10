package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzcx;
import com.google.android.gms.internal.clearcut.zzfa;
import java.util.Iterator;
/* renamed from: c.d.b.d.g.c.j2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/j2.class */
public final class C4363j2 implements Iterator<String> {

    /* renamed from: a */
    public Iterator<String> f16537a;

    /* renamed from: b */
    public final /* synthetic */ zzfa f16538b;

    public C4363j2(zzfa zzfaVar) {
        zzcx zzcxVar;
        this.f16538b = zzfaVar;
        zzcxVar = this.f16538b.f29276a;
        this.f16537a = zzcxVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16537a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f16537a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
