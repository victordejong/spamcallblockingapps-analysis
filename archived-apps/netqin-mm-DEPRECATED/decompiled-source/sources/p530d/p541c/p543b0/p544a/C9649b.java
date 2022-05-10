package p530d.p541c.p543b0.p544a;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.a.b */
/* loaded from: classes2-dex2jar.jar:d/c/b0/a/b.class */
public final class C9649b implements AbstractC9861b, AbstractC9648a {

    /* renamed from: a */
    public List<AbstractC9861b> f36721a;

    /* renamed from: b */
    public volatile boolean f36722b;

    /* renamed from: a */
    public void m2101a(List<AbstractC9861b> list) {
        if (list != null) {
            ArrayList arrayList = null;
            for (AbstractC9861b bVar : list) {
                try {
                    bVar.dispose();
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(th);
                    arrayList = arrayList2;
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
        if (!this.f36722b) {
            synchronized (this) {
                if (!this.f36722b) {
                    List<AbstractC9861b> list = this.f36721a;
                    List<AbstractC9861b> list2 = list;
                    if (list == null) {
                        list2 = new LinkedList<>();
                        this.f36721a = list2;
                    }
                    list2.add(bVar);
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
        if (this.f36722b) {
            return false;
        }
        synchronized (this) {
            if (this.f36722b) {
                return false;
            }
            List<AbstractC9861b> list = this.f36721a;
            if (list != null && list.remove(bVar)) {
                return true;
            }
            return false;
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.f36722b) {
            synchronized (this) {
                if (!this.f36722b) {
                    this.f36722b = true;
                    List<AbstractC9861b> list = this.f36721a;
                    this.f36721a = null;
                    m2101a(list);
                }
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f36722b;
    }
}
