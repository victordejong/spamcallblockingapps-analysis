package p081h.p203i.p401g;

import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p081h.p203i.p401g.AbstractC10219a;
import p081h.p203i.p401g.AbstractC10287j0;
import p081h.p203i.p401g.C10418l;
/* renamed from: h.i.g.v */
/* loaded from: classes2-dex2jar.jar:h/i/g/v.class */
public abstract class AbstractC10470v extends AbstractC10219a implements Serializable {

    /* renamed from: h.i.g.v$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/v$a.class */
    public class C10471a implements AbstractC10472b {

        /* renamed from: a */
        public final /* synthetic */ AbstractC10219a.AbstractC10221b f23803a;

        public C10471a(AbstractC10470v vVar, AbstractC10219a.AbstractC10221b bVar) {
            this.f23803a = bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10221b
        /* renamed from: a */
        public void mo11585a() {
            this.f23803a.mo11585a();
        }
    }

    /* renamed from: h.i.g.v$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/v$b.class */
    public interface AbstractC10472b extends AbstractC10219a.AbstractC10221b {
    }

    /* renamed from: h.i.g.v$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/v$c.class */
    public static final class C10473c {

        /* renamed from: a */
        public final C10418l.C10420b f23804a;

        /* renamed from: h.i.g.v$c$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/v$c$a.class */
        public interface AbstractC10474a {
            /* renamed from: a */
            Object m11714a(AbstractC10470v vVar);

            /* renamed from: b */
            boolean m11713b(AbstractC10470v vVar);

            /* renamed from: c */
            Object m11712c(AbstractC10470v vVar);
        }

        /* renamed from: h.i.g.v$c$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/v$c$b.class */
        public static class C10475b {
            /* renamed from: a */
            public C10418l.C10428g m11711a(AbstractC10470v vVar) {
                throw null;
            }

            /* renamed from: b */
            public boolean m11710b(AbstractC10470v vVar) {
                throw null;
            }
        }

        /* renamed from: a */
        public final AbstractC10474a m11719a(C10418l.C10428g gVar) {
            throw null;
        }

        /* renamed from: a */
        public final C10475b m11718a(C10418l.C10435k kVar) {
            throw null;
        }
    }

    public AbstractC10470v() {
        C10247f1.m13020c();
    }

    @Override // p081h.p203i.p401g.AbstractC10219a
    /* renamed from: a */
    public AbstractC10287j0.AbstractC10288a mo11693a(AbstractC10219a.AbstractC10221b bVar) {
        return m11724a((AbstractC10472b) new C10471a(this, bVar));
    }

    /* renamed from: a */
    public abstract AbstractC10287j0.AbstractC10288a m11724a(AbstractC10472b bVar);

    /* renamed from: a */
    public C10418l.C10428g m11725a(C10418l.C10435k kVar) {
        m11720m().m11718a(kVar).m11711a(this);
        throw null;
    }

    /* renamed from: a */
    public Object m11726a(C10418l.C10428g gVar) {
        return m11720m().m11719a(gVar).m11712c(this);
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: a */
    public Map<C10418l.C10428g, Object> mo11648a() {
        return Collections.unmodifiableMap(m11723a(false));
    }

    /* renamed from: a */
    public final Map<C10418l.C10428g, Object> m11723a(boolean z) {
        int i;
        C10418l.C10428g gVar;
        TreeMap treeMap = new TreeMap();
        List<C10418l.C10428g> f = m11720m().f23804a.m11911f();
        for (int i2 = 0; i2 < f.size(); i2 = i + 1) {
            C10418l.C10428g gVar2 = f.get(i2);
            C10418l.C10435k f2 = gVar2.m11885f();
            if (f2 != null) {
                i = i2 + (f2.m11847f() - 1);
                if (m11722b(f2)) {
                    gVar = m11725a(f2);
                    if (z || gVar.m11879l() != C10418l.C10428g.EnumC10429a.STRING) {
                        treeMap.put(gVar, mo11644c(gVar));
                    } else {
                        treeMap.put(gVar, m11726a(gVar));
                    }
                }
            } else {
                if (gVar2.mo11731X()) {
                    List list = (List) mo11644c(gVar2);
                    i = i2;
                    if (!list.isEmpty()) {
                        treeMap.put(gVar2, list);
                        i = i2;
                    }
                } else {
                    i = i2;
                    gVar = gVar2;
                    if (!mo11645b(gVar2)) {
                        i = i2;
                    }
                    if (z) {
                    }
                    treeMap.put(gVar, mo11644c(gVar));
                }
            }
        }
        return treeMap;
    }

    @Override // p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: a */
    public void mo11692a(AbstractC10274i iVar) throws IOException {
        C10446o0.m11812a((AbstractC10287j0) this, m11721l(), iVar, false);
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: b */
    public boolean mo11645b(C10418l.C10428g gVar) {
        return m11720m().m11719a(gVar).m11713b(this);
    }

    /* renamed from: b */
    public boolean m11722b(C10418l.C10435k kVar) {
        m11720m().m11718a(kVar).m11710b(this);
        throw null;
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: c */
    public C10418l.C10420b mo11666c() {
        return m11720m().f23804a;
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: c */
    public Object mo11644c(C10418l.C10428g gVar) {
        return m11720m().m11719a(gVar).m11714a(this);
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: d */
    public C10247f1 mo11664d() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: h */
    public int mo11678h() {
        int i = this.f23054b;
        if (i != -1) {
            return i;
        }
        this.f23054b = C10446o0.m11813a(this, m11721l());
        return this.f23054b;
    }

    @Override // p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
    public boolean isInitialized() {
        for (C10418l.C10428g gVar : mo11666c().m11911f()) {
            if (gVar.m11871t() && !mo11645b(gVar)) {
                return false;
            }
            if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                if (gVar.mo11731X()) {
                    for (AbstractC10287j0 j0Var : (List) mo11644c(gVar)) {
                        if (!j0Var.isInitialized()) {
                            return false;
                        }
                    }
                    continue;
                } else if (mo11645b(gVar) && !((AbstractC10287j0) mo11644c(gVar)).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: j */
    public AbstractC10462s0<? extends AbstractC10470v> mo11677j() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    /* renamed from: l */
    public Map<C10418l.C10428g, Object> m11721l() {
        return Collections.unmodifiableMap(m11723a(true));
    }

    /* renamed from: m */
    public abstract C10473c m11720m();

    public Object writeReplace() throws ObjectStreamException {
        return new C10477w(this);
    }
}
