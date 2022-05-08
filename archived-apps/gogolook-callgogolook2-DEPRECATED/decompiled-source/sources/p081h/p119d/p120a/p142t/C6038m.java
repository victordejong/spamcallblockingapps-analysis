package p081h.p119d.p120a.p142t;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import p081h.p119d.p120a.p145w.AbstractC6053c;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.t.m */
/* loaded from: classes-dex2jar.jar:h/d/a/t/m.class */
public class C6038m {

    /* renamed from: a */
    public final Set<AbstractC6053c> f15032a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    public final List<AbstractC6053c> f15033b = new ArrayList();

    /* renamed from: c */
    public boolean f15034c;

    /* renamed from: a */
    public void m23991a() {
        for (AbstractC6053c cVar : C6096h.m23859a(this.f15032a)) {
            cVar.clear();
        }
        this.f15033b.clear();
    }

    /* renamed from: a */
    public void m23990a(AbstractC6053c cVar) {
        this.f15032a.remove(cVar);
        this.f15033b.remove(cVar);
    }

    /* renamed from: b */
    public void m23989b() {
        this.f15034c = true;
        for (AbstractC6053c cVar : C6096h.m23859a(this.f15032a)) {
            if (cVar.isRunning()) {
                cVar.pause();
                this.f15033b.add(cVar);
            }
        }
    }

    /* renamed from: b */
    public void m23988b(AbstractC6053c cVar) {
        this.f15032a.add(cVar);
        if (!this.f15034c) {
            cVar.mo23943a();
        } else {
            this.f15033b.add(cVar);
        }
    }

    /* renamed from: c */
    public void m23987c() {
        for (AbstractC6053c cVar : C6096h.m23859a(this.f15032a)) {
            if (!cVar.mo23936d() && !cVar.isCancelled()) {
                cVar.pause();
                if (!this.f15034c) {
                    cVar.mo23943a();
                } else {
                    this.f15033b.add(cVar);
                }
            }
        }
    }

    /* renamed from: d */
    public void m23986d() {
        this.f15034c = false;
        for (AbstractC6053c cVar : C6096h.m23859a(this.f15032a)) {
            if (!cVar.mo23936d() && !cVar.isCancelled() && !cVar.isRunning()) {
                cVar.mo23943a();
            }
        }
        this.f15033b.clear();
    }
}
