package p193e.p194a.p619d.p628c;

import com.truecaller.voip.C4781R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import q3.a.i0;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.VoipPresenter$listenIncomingCallStatus$1", f = "VoipPresenter.kt", l = {537}, m = "invokeSuspend")
/* renamed from: e.a.d.c.p */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/p.class */
public final class C11314p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33297e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33298f;

    /* renamed from: e.a.d.c.p$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/p$a.class */
    public static final class C11315a implements g<AbstractC12114h> {
        public C11315a() {
            C11314p.this = r4;
        }

        /* renamed from: a */
        public Object m24845a(Object obj, d dVar) {
            a aVar;
            a aVar2 = s.a;
            AbstractC12114h abstractC12114h = (AbstractC12114h) obj;
            k kVar = (!(abstractC12114h instanceof AbstractC12114h.C12115a) && !(abstractC12114h instanceof AbstractC12114h.C12129c)) ? abstractC12114h instanceof AbstractC12114h.AbstractC12116b.C12117a ? new k(new Integer(C4781R.string.voip_status_connecting), new Integer(C4781R.attr.voip_call_status_warning_color)) : abstractC12114h instanceof AbstractC12114h.AbstractC12116b.C12128l ? new k(new Integer(C4781R.string.voip_status_rejected), new Integer(C4781R.attr.voip_call_status_error_color)) : abstractC12114h instanceof AbstractC12114h.AbstractC12116b.C12126j ? new k(new Integer(C4781R.string.voip_status_no_answer), new Integer(C4781R.attr.voip_call_status_error_color)) : new k(new Integer(C4781R.string.voip_status_call_ended), new Integer(C4781R.attr.voip_call_status_error_color)) : new k(new Integer(C4781R.string.voip_status_incoming_call), new Integer(C4781R.attr.voip_call_status_neutral_color));
            AbstractC11302l abstractC11302l = (AbstractC11302l) C11314p.this.f33298f.f57683a;
            if (abstractC11302l != null) {
                abstractC11302l.mo24868v3(((Number) kVar.a).intValue(), ((Number) kVar.b).intValue());
                aVar = aVar2;
            } else {
                aVar = null;
            }
            return aVar == a.a ? aVar : aVar2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11314p(C11325t c11325t, d dVar) {
        super(2, dVar);
        this.f33298f = c11325t;
    }

    /* renamed from: i */
    public final d<s> m24848i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11314p(this.f33298f, dVar);
    }

    /* renamed from: k */
    public final Object m24847k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11314p(this.f33298f, dVar).m24846s(s.a);
    }

    /* renamed from: s */
    public final Object m24846s(Object obj) {
        i1<AbstractC12114h> state;
        a aVar = a.a;
        int i = this.f33297e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC12093b m24825Kj = this.f33298f.m24825Kj();
            if (m24825Kj != null && (state = m24825Kj.getState()) != null) {
                C11315a c11315a = new C11315a();
                this.f33297e = 1;
                if (state.c(c11315a, this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
