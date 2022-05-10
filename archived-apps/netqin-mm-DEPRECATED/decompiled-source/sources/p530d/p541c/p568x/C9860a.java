package p530d.p541c.p568x;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import p530d.p541c.p543b0.p544a.AbstractC9648a;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p557i.C9806h;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.x.a */
/* loaded from: classes2-dex2jar.jar:d/c/x/a.class */
public final class C9860a implements AbstractC9861b, AbstractC9648a {

    /* renamed from: a */
    public C9806h<AbstractC9861b> f37091a;

    /* renamed from: b */
    public volatile boolean f37092b;

    /* renamed from: a */
    public int m1831a() {
        int i = 0;
        if (this.f37092b) {
            return 0;
        }
        synchronized (this) {
            if (this.f37092b) {
                return 0;
            }
            C9806h<AbstractC9861b> hVar = this.f37091a;
            if (hVar != null) {
                i = hVar.m1988c();
            }
            return i;
        }
    }

    /* renamed from: a */
    public void m1830a(C9806h<AbstractC9861b> hVar) {
        Object[] a;
        if (hVar != null) {
            ArrayList arrayList = null;
            for (Object obj : hVar.m1994a()) {
                arrayList = arrayList;
                if (obj instanceof AbstractC9861b) {
                    try {
                        ((AbstractC9861b) obj).dispose();
                        arrayList = arrayList;
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        arrayList = arrayList;
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(th);
                    }
                }
            }
            if (arrayList == null) {
                return;
            }
            if (arrayList.size() == 1) {
                throw ExceptionHelper.m222b((Throwable) arrayList.get(0));
            }
            throw new CompositeException(arrayList);
        }
    }

    @Override // p530d.p541c.p543b0.p544a.AbstractC9648a
    /* renamed from: a */
    public boolean mo1829a(AbstractC9861b bVar) {
        if (!mo1827c(bVar)) {
            return false;
        }
        bVar.dispose();
        return true;
    }

    @Override // p530d.p541c.p543b0.p544a.AbstractC9648a
    /* renamed from: b */
    public boolean mo1828b(AbstractC9861b bVar) {
        C9650a.m2095a(bVar, "d is null");
        if (!this.f37092b) {
            synchronized (this) {
                if (!this.f37092b) {
                    C9806h<AbstractC9861b> hVar = this.f37091a;
                    C9806h<AbstractC9861b> hVar2 = hVar;
                    if (hVar == null) {
                        hVar2 = new C9806h<>();
                        this.f37091a = hVar2;
                    }
                    hVar2.m1991a((C9806h<AbstractC9861b>) bVar);
                    return true;
                }
            }
        }
        bVar.dispose();
        return false;
    }

    @Override // p530d.p541c.p543b0.p544a.AbstractC9648a
    /* renamed from: c */
    public boolean mo1827c(AbstractC9861b bVar) {
        C9650a.m2095a(bVar, "Disposable item is null");
        if (this.f37092b) {
            return false;
        }
        synchronized (this) {
            if (this.f37092b) {
                return false;
            }
            C9806h<AbstractC9861b> hVar = this.f37091a;
            if (hVar != null && hVar.m1989b(bVar)) {
                return true;
            }
            return false;
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.f37092b) {
            synchronized (this) {
                if (!this.f37092b) {
                    this.f37092b = true;
                    C9806h<AbstractC9861b> hVar = this.f37091a;
                    this.f37091a = null;
                    m1830a(hVar);
                }
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f37092b;
    }
}
