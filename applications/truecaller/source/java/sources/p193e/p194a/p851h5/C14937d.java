package p193e.p194a.p851h5;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.tcpermissions.AccessContactsPresenter$onAllowClicked$1", f = "AccessContactsPresenter.kt", l = {21}, m = "invokeSuspend")
/* renamed from: e.a.h5.d */
/* loaded from: classes14-dex2jar.jar:e/a/h5/d.class */
public final class C14937d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f42661e;

    /* renamed from: f */
    public int f42662f;

    /* renamed from: g */
    public final /* synthetic */ C14938e f42663g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14937d(C14938e c14938e, d dVar) {
        super(2, dVar);
        this.f42663g = c14938e;
    }

    /* renamed from: i */
    public final d<s> m19399i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14937d(this.f42663g, dVar);
    }

    /* renamed from: k */
    public final Object m19398k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14937d(this.f42663g, dVar).m19397s(s.a);
    }

    /* renamed from: s */
    public final Object m19397s(Object obj) {
        Object obj2;
        C14938e c14938e;
        a aVar = a.a;
        int i = this.f42662f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C14938e c14938e2 = this.f42663g;
            AbstractC14967y abstractC14967y = c14938e2.f42666f;
            this.f42661e = c14938e2;
            this.f42662f = 1;
            obj2 = abstractC14967y.mo19334f(new String[]{"android.permission.READ_CONTACTS"}, this);
            if (obj2 == aVar) {
                return aVar;
            }
            c14938e = c14938e2;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c14938e = (C14938e) this.f42661e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        c14938e.f42664d = (C14945l) obj2;
        StringBuilder m8728C = C22128a.m8728C("Access contact is requested ");
        m8728C.append(this.f42663g.f42664d);
        m8728C.toString();
        AbstractC14936c abstractC14936c = (AbstractC14936c) this.f42663g.f57683a;
        if (abstractC14936c != null) {
            abstractC14936c.finish();
        }
        return s.a;
    }
}
