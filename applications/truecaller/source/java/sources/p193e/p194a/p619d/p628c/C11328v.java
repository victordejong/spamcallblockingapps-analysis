package p193e.p194a.p619d.p628c;

import com.truecaller.voip.C4781R;
import com.truecaller.voip.groupcall.action.InviteResult;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import q3.a.i0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.VoipPresenter$onPeersSelected$1", f = "VoipPresenter.kt", l = {132}, m = "invokeSuspend")
/* renamed from: e.a.d.c.v */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/v.class */
public final class C11328v extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33333e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33334f;

    /* renamed from: g */
    public final /* synthetic */ String[] f33335g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11328v(C11325t c11325t, String[] strArr, d dVar) {
        super(2, dVar);
        this.f33334f = c11325t;
        this.f33335g = strArr;
    }

    /* renamed from: i */
    public final d<s> m24817i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11328v(this.f33334f, this.f33335g, dVar);
    }

    /* renamed from: k */
    public final Object m24816k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11328v(this.f33334f, this.f33335g, dVar).m24815s(s.a);
    }

    /* renamed from: s */
    public final Object m24815s(Object obj) {
        Integer num;
        n0<InviteResult> mo23904o;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f33333e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (this.f33335g.length == 0) {
                return sVar;
            }
            AbstractC11822b mo23961b = this.f33334f.f33327m.mo23961b();
            if (mo23961b != null && (mo23904o = mo23961b.mo23904o(C25225a.m3887j3(this.f33335g))) != null) {
                this.f33333e = 1;
                Object s = mo23904o.s(this);
                obj = s;
                if (s == aVar) {
                    return aVar;
                }
            }
            return sVar;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        InviteResult inviteResult = (InviteResult) obj;
        if (inviteResult != null) {
            int ordinal = inviteResult.ordinal();
            if (ordinal == 0) {
                num = new Integer(C4781R.string.voip_group_error_inviting_peers);
            } else if (ordinal == 1) {
                num = new Integer(C4781R.string.voip_group_error_inviting_peers_partial);
            } else if (ordinal != 2) {
                throw new s1.i();
            } else {
                num = null;
            }
            if (num != null) {
                int intValue = num.intValue();
                AbstractC11302l abstractC11302l = (AbstractC11302l) this.f33334f.f57683a;
                if (abstractC11302l != null) {
                    abstractC11302l.mo24877d(intValue);
                }
            }
        }
        return sVar;
    }
}
