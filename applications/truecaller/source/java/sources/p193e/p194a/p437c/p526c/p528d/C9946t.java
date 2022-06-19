package p193e.p194a.p437c.p526c.p528d;

import com.truecaller.insights.models.enrichment.linking.LinkPruneMap;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p437c.p531c0.C10020g;
import s1.s;
import s1.w.d;
/* renamed from: e.a.c.c.d.t */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/t.class */
public final class C9946t implements AbstractC9945s {

    /* renamed from: a */
    public final AbstractC25677q f29703a;

    /* renamed from: b */
    public final C10020g f29704b = new C10020g();

    /* renamed from: c */
    public final AbstractC25646c0 f29705c;

    /* renamed from: d */
    public final AbstractC25646c0 f29706d;

    /* renamed from: e */
    public final AbstractC25646c0 f29707e;

    /* renamed from: f */
    public final AbstractC25646c0 f29708f;

    /* renamed from: e.a.c.c.d.t$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/t$a.class */
    public class C9947a extends AbstractC25663k<LinkPruneMap> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9947a(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9946t.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, LinkPruneMap linkPruneMap) {
            LinkPruneMap linkPruneMap2 = linkPruneMap;
            abstractC26154f.mo2650l0(1, linkPruneMap2.getParentId());
            abstractC26154f.mo2650l0(2, linkPruneMap2.getChildId());
            if (linkPruneMap2.getLinkType() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, linkPruneMap2.getLinkType());
            }
            Long m26909a = C9946t.this.f29704b.m26909a(linkPruneMap2.getCreatedAt());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2650l0(4, m26909a.longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `link_prune_table` (`parent_id`,`child_id`,`link_type`,`created_at`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.t$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/t$b.class */
    public class C9948b extends AbstractC25646c0 {
        public C9948b(C9946t c9946t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM link_prune_table";
        }
    }

    /* renamed from: e.a.c.c.d.t$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/t$c.class */
    public class C9949c extends AbstractC25646c0 {
        public C9949c(C9946t c9946t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM account_model_table";
        }
    }

    /* renamed from: e.a.c.c.d.t$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/t$d.class */
    public class C9950d extends AbstractC25646c0 {
        public C9950d(C9946t c9946t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM account_mapping_rule_model";
        }
    }

    /* renamed from: e.a.c.c.d.t$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/t$e.class */
    public class C9951e extends AbstractC25646c0 {
        public C9951e(C9946t c9946t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM account_relation_model";
        }
    }

    /* renamed from: e.a.c.c.d.t$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/t$f.class */
    public class CallableC9952f implements Callable<s> {
        public CallableC9952f() {
            C9946t.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9946t.this.f29705c.acquire();
            C9946t.this.f29703a.beginTransaction();
            try {
                acquire.m2673A();
                C9946t.this.f29703a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9946t.this.f29703a.endTransaction();
                C9946t.this.f29705c.release(acquire);
            }
        }
    }

    /* renamed from: e.a.c.c.d.t$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/t$g.class */
    public class CallableC9953g implements Callable<s> {
        public CallableC9953g() {
            C9946t.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9946t.this.f29706d.acquire();
            C9946t.this.f29703a.beginTransaction();
            try {
                acquire.m2673A();
                C9946t.this.f29703a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9946t.this.f29703a.endTransaction();
                C9946t.this.f29706d.release(acquire);
            }
        }
    }

    /* renamed from: e.a.c.c.d.t$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/t$h.class */
    public class CallableC9954h implements Callable<s> {
        public CallableC9954h() {
            C9946t.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9946t.this.f29707e.acquire();
            C9946t.this.f29703a.beginTransaction();
            try {
                acquire.m2673A();
                C9946t.this.f29703a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9946t.this.f29703a.endTransaction();
                C9946t.this.f29707e.release(acquire);
            }
        }
    }

    /* renamed from: e.a.c.c.d.t$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/t$i.class */
    public class CallableC9955i implements Callable<s> {
        public CallableC9955i() {
            C9946t.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9946t.this.f29708f.acquire();
            C9946t.this.f29703a.beginTransaction();
            try {
                acquire.m2673A();
                C9946t.this.f29703a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9946t.this.f29703a.endTransaction();
                C9946t.this.f29708f.release(acquire);
            }
        }
    }

    public C9946t(AbstractC25677q abstractC25677q) {
        this.f29703a = abstractC25677q;
        new C9947a(abstractC25677q);
        this.f29705c = new C9948b(this, abstractC25677q);
        this.f29706d = new C9949c(this, abstractC25677q);
        this.f29707e = new C9950d(this, abstractC25677q);
        this.f29708f = new C9951e(this, abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9945s
    /* renamed from: a */
    public Object mo27005a(d<? super s> dVar) {
        return C25650g.m3094c(this.f29703a, true, new CallableC9952f(), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9945s
    /* renamed from: b */
    public Object mo27004b(d<? super s> dVar) {
        return C25650g.m3094c(this.f29703a, true, new CallableC9955i(), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9945s
    /* renamed from: c */
    public Object mo27003c(d<? super s> dVar) {
        return C25650g.m3094c(this.f29703a, true, new CallableC9953g(), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9945s
    /* renamed from: d */
    public Object mo27002d(d<? super s> dVar) {
        return C25650g.m3094c(this.f29703a, true, new CallableC9954h(), dVar);
    }
}
