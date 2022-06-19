package p193e.p194a.p773g.p774a;

import com.truecaller.data.entity.Contact;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p773g.p785j.C14289j0;
import p193e.p194a.p773g.p785j.C14291k0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$isContactVoipCapableAsync$2", f = "AfterCallBasePresenter.kt", l = {1188}, m = "invokeSuspend")
/* renamed from: e.a.g.a.n */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/n.class */
public final class C14218n extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public int f41089e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC14205m f41090f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14218n(AbstractC14205m abstractC14205m, d dVar) {
        super(2, dVar);
        this.f41090f = abstractC14205m;
    }

    /* renamed from: i */
    public final d<s> m20385i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14218n(this.f41090f, dVar);
    }

    /* renamed from: k */
    public final Object m20384k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14218n(this.f41090f, dVar).m20383s(s.a);
    }

    /* renamed from: s */
    public final Object m20383s(Object obj) {
        boolean z;
        a aVar = a.a;
        int i = this.f41089e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Contact contact = this.f41090f.m20451Oj().f11539f;
            if (contact != null) {
                C14291k0 c14291k0 = this.f41090f.f40977K;
                l.d(contact, "it");
                this.f41089e = 1;
                Objects.requireNonNull(c14291k0);
                s1.w.i iVar = new s1.w.i(C25225a.m3844s1(this));
                ((AbstractC11476s1) c14291k0.f41352a.get()).mo24617g(contact, new C14289j0(iVar));
                Object a = iVar.a();
                if (a == aVar) {
                    l.e(this, "frame");
                }
                obj = a;
                if (a == aVar) {
                    return aVar;
                }
            }
            z = false;
            return Boolean.valueOf(z);
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Boolean valueOf = Boolean.valueOf(((Boolean) obj).booleanValue());
        if (valueOf != null) {
            z = valueOf.booleanValue();
            return Boolean.valueOf(z);
        }
        z = false;
        return Boolean.valueOf(z);
    }
}
