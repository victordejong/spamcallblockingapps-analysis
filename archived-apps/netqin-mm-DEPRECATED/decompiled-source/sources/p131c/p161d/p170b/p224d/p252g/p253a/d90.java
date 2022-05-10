package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzeiw;
import com.google.android.gms.internal.ads.zzemc;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: c.d.b.d.g.a.d90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/d90.class */
public final class d90 implements Iterator<zzeiw> {

    /* renamed from: a */
    public final ArrayDeque<zzemc> f12638a;

    /* renamed from: b */
    public zzeiw f12639b;

    public d90(zzeip zzeipVar) {
        zzeip zzeipVar2;
        if (zzeipVar instanceof zzemc) {
            zzemc zzemcVar = (zzemc) zzeipVar;
            ArrayDeque<zzemc> arrayDeque = new ArrayDeque<>(zzemcVar.zzbej());
            this.f12638a = arrayDeque;
            arrayDeque.push(zzemcVar);
            zzeipVar2 = zzemcVar.zzimq;
            this.f12639b = m27070a(zzeipVar2);
            return;
        }
        this.f12638a = null;
        this.f12639b = (zzeiw) zzeipVar;
    }

    public /* synthetic */ d90(zzeip zzeipVar, c90 c90Var) {
        this(zzeipVar);
    }

    /* renamed from: a */
    public final zzeiw m27070a(zzeip zzeipVar) {
        while (zzeipVar instanceof zzemc) {
            zzemc zzemcVar = (zzemc) zzeipVar;
            this.f12638a.push(zzemcVar);
            zzeipVar = zzemcVar.zzimq;
        }
        return (zzeiw) zzeipVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12639b != null;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ zzeiw next() {
        zzeiw zzeiwVar;
        zzeip zzeipVar;
        zzeiw zzeiwVar2 = this.f12639b;
        if (zzeiwVar2 != null) {
            do {
                ArrayDeque<zzemc> arrayDeque = this.f12638a;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    zzeiwVar = null;
                    break;
                }
                zzeipVar = this.f12638a.pop().zzimr;
                zzeiwVar = m27070a(zzeipVar);
            } while (zzeiwVar.isEmpty());
            this.f12639b = zzeiwVar;
            return zzeiwVar2;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
