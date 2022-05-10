package p131c.p396i.p397a.p406i.p407d;

import com.library.p518ad.core.BaseAdResult;
import com.library.p518ad.data.bean.RequestConfig;
import java.util.ArrayList;
import java.util.List;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p398e.AbstractC6516h;
import p131c.p396i.p397a.p398e.AbstractC6518i;
import p131c.p396i.p397a.p398e.C6507c;
import p131c.p396i.p397a.p398e.C6520j;
/* renamed from: c.i.a.i.d.h */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/d/h.class */
public class C6572h extends AbstractC6560b {

    /* renamed from: l */
    public int f20374l = 1;

    /* renamed from: m */
    public boolean f20375m = false;

    /* renamed from: n */
    public boolean f20376n = false;

    /* renamed from: o */
    public AbstractC6516h f20377o = new C6573a();

    /* renamed from: c.i.a.i.d.h$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/d/h$a.class */
    public class C6573a extends AbstractC6516h.AbstractC6517a {
        public C6573a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20466a(AbstractC6508d<?> dVar, BaseAdResult<?> baseAdResult, AbstractC6514f<?> fVar) {
            if (!C6572h.this.f20376n) {
                C6572h.this.f20376n = true;
                AbstractC6518i iVar = C6572h.this.f20350d;
                if (iVar != null) {
                    iVar.mo3229a(dVar.getAdInfo());
                }
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20465a(boolean z) {
            if (z) {
                return;
            }
            if (C6572h.this.f20353g.size() > 0) {
                C6572h.m20467d(C6572h.this);
                String str = "并(3)+并(3)+并，执行第" + C6572h.this.f20374l + "组并行";
                ArrayList arrayList = new ArrayList(0);
                if (C6572h.this.f20374l == 2) {
                    for (int i = 0; i < 3 && C6572h.this.f20353g.size() > 0; i++) {
                        arrayList.add(C6572h.this.f20353g.remove(0));
                    }
                } else {
                    arrayList.addAll(C6572h.this.f20353g);
                    C6572h.this.f20353g.clear();
                }
                C6520j a = C6507c.m20629a(arrayList);
                a.m20604a(C6572h.this.f20356j);
                a.m20601a(C6572h.this.f20377o);
                a.m20585b(true);
                return;
            }
            C6572h.this.f20357k.mo3228b(null);
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h.AbstractC6517a, p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: b */
        public void mo20464b(String str) {
            if (!C6572h.this.f20375m) {
                C6572h.this.f20375m = true;
                AbstractC6518i iVar = C6572h.this.f20350d;
                if (iVar != null) {
                    iVar.onStart();
                }
            }
        }
    }

    public C6572h(String str, List<RequestConfig> list) {
        super(str, list);
    }

    /* renamed from: d */
    public static /* synthetic */ int m20467d(C6572h hVar) {
        int i = hVar.f20374l;
        hVar.f20374l = i + 1;
        return i;
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    /* renamed from: b */
    public void mo20462b() {
        List<AbstractC6508d<?>> list = this.f20353g;
        if (list == null || list.size() <= 0) {
            this.f20357k.mo3228b(null);
            return;
        }
        ArrayList arrayList = new ArrayList(3);
        for (int i = 0; i < 3 && this.f20353g.size() > 0; i++) {
            arrayList.add(this.f20353g.remove(0));
        }
        C6520j a = C6507c.m20629a(arrayList);
        a.m20604a(this.f20356j);
        a.m20601a(this.f20377o);
        a.m20585b(true);
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    public String toString() {
        return "并(3)+并(3)+并(N) " + super.toString();
    }
}
