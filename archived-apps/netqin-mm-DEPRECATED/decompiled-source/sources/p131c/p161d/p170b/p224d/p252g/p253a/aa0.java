package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeku;
import com.google.android.gms.internal.ads.zzenc;
import java.util.ListIterator;
/* renamed from: c.d.b.d.g.a.aa0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/aa0.class */
public final class aa0 implements ListIterator<String> {

    /* renamed from: a */
    public ListIterator<String> f12076a;

    /* renamed from: b */
    public final /* synthetic */ int f12077b;

    /* renamed from: c */
    public final /* synthetic */ zzenc f12078c;

    public aa0(zzenc zzencVar, int i) {
        zzeku zzekuVar;
        this.f12078c = zzencVar;
        this.f12077b = i;
        zzekuVar = this.f12078c.f28100a;
        this.f12076a = zzekuVar.listIterator(this.f12077b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f12076a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f12076a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f12076a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f12076a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f12076a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f12076a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
