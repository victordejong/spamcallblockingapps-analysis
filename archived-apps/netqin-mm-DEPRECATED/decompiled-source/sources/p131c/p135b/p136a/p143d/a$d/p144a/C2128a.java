package p131c.p135b.p136a.p143d.a$d.p144a;

import android.content.Context;
import com.applovin.impl.mediation.p484a.p485a.AbstractC6975c;
import com.applovin.impl.mediation.p484a.p485a.C6977d;
import com.applovin.impl.mediation.p484a.p486c.p487a.ActivityC6979a;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p143d.C2117a;
import p131c.p135b.p136a.p143d.a$d.AbstractView$OnClickListenerC2131b;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.d.a$d.a.a */
/* loaded from: classes-dex2jar.jar:c/b/a/d/a$d/a/a.class */
public class C2128a extends AbstractView$OnClickListenerC2131b {

    /* renamed from: d */
    public final AtomicBoolean f8163d = new AtomicBoolean();

    /* renamed from: e */
    public final AbstractC6975c f8164e = new C2117a.C2119b.C2125f("INCOMPLETE INTEGRATIONS");

    /* renamed from: f */
    public final AbstractC6975c f8165f = new C2117a.C2119b.C2125f("COMPLETED INTEGRATIONS");

    /* renamed from: g */
    public final AbstractC6975c f8166g = new C2117a.C2119b.C2125f("MISSING INTEGRATIONS");

    /* renamed from: h */
    public final AbstractC6975c f8167h = new C2117a.C2119b.C2125f("");

    /* renamed from: i */
    public AbstractC2130b f8168i;

    /* renamed from: c.b.a.d.a$d.a.a$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/a$d/a/a$a.class */
    public class RunnableC2129a implements Runnable {
        public RunnableC2129a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2128a.this.notifyDataSetChanged();
        }
    }

    /* renamed from: c.b.a.d.a$d.a.a$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/a$d/a/a$b.class */
    public interface AbstractC2130b {
        /* renamed from: a */
        void mo19149a(C6977d dVar);
    }

    public C2128a(Context context) {
        super(context);
    }

    /* renamed from: a */
    public void m31014a(AbstractC2130b bVar) {
        this.f8168i = bVar;
    }

    @Override // p131c.p135b.p136a.p143d.a$d.AbstractView$OnClickListenerC2131b
    /* renamed from: a */
    public void mo31008a(AbstractC6975c cVar) {
        if (this.f8168i != null && (cVar instanceof ActivityC6979a.C6983c)) {
            this.f8168i.mo19149a(((ActivityC6979a.C6983c) cVar).m19143k());
        }
    }

    /* renamed from: a */
    public void m31013a(List<C6977d> list, C2341l lVar) {
        if (list != null && this.f8163d.compareAndSet(false, true)) {
            this.f8172c.addAll(m31012b(list, lVar));
        }
        AppLovinSdkUtils.runOnUiThread(new RunnableC2129a());
    }

    /* renamed from: a */
    public boolean m31015a() {
        return this.f8163d.get();
    }

    /* renamed from: b */
    public final List<AbstractC6975c> m31012b(List<C6977d> list, C2341l lVar) {
        lVar.m30262d0().m30044b("MediationDebuggerListAdapter", "Updating networks...");
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (C6977d dVar : list) {
            ActivityC6979a.C6983c cVar = new ActivityC6979a.C6983c(dVar, this.f8171b);
            if (dVar.m19175a() == C6977d.EnumC6978a.INCOMPLETE_INTEGRATION || dVar.m19175a() == C6977d.EnumC6978a.INVALID_INTEGRATION) {
                arrayList2.add(cVar);
            } else if (dVar.m19175a() == C6977d.EnumC6978a.COMPLETE) {
                arrayList3.add(cVar);
            } else if (dVar.m19175a() == C6977d.EnumC6978a.MISSING) {
                arrayList4.add(cVar);
            }
        }
        if (arrayList2.size() > 0) {
            arrayList.add(this.f8164e);
            arrayList.addAll(arrayList2);
        }
        if (arrayList3.size() > 0) {
            arrayList.add(this.f8165f);
            arrayList.addAll(arrayList3);
        }
        if (arrayList4.size() > 0) {
            arrayList.add(this.f8166g);
            arrayList.addAll(arrayList4);
        }
        arrayList.add(this.f8167h);
        return arrayList;
    }

    public String toString() {
        return "MediationDebuggerListAdapter{isInitialized=" + this.f8163d.get() + ", listItems=" + this.f8172c + "}";
    }
}
