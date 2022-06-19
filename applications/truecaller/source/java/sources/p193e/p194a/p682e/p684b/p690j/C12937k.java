package p193e.p194a.p682e.p684b.p690j;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p851h5.AbstractC14967y;
import p193e.p194a.p851h5.C14945l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.ui.settings.callerid.CallerIdSettingsPresenter$onPBContactsEnabledChanged$1", f = "CallerIdSettingsPresenter.kt", l = {117}, m = "invokeSuspend")
/* renamed from: e.a.e.b.j.k */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/j/k.class */
public final class C12937k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f37542e;

    /* renamed from: f */
    public final /* synthetic */ C12938l f37543f;

    /* renamed from: g */
    public final /* synthetic */ boolean f37544g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12937k(C12938l c12938l, boolean z, d dVar) {
        super(2, dVar);
        this.f37543f = c12938l;
        this.f37544g = z;
    }

    /* renamed from: i */
    public final d<s> m22379i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12937k(this.f37543f, this.f37544g, dVar);
    }

    /* renamed from: k */
    public final Object m22378k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12937k(this.f37543f, this.f37544g, dVar).m22377s(s.a);
    }

    /* renamed from: s */
    public final Object m22377s(Object obj) {
        a aVar = a.a;
        int i = this.f37542e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (!this.f37544g) {
                this.f37543f.f37547f.putBoolean("enabledCallerIDforPB", false);
            } else if (this.f37543f.f37549h.mo13825h("android.permission.READ_CONTACTS")) {
                this.f37543f.f37547f.putBoolean("enabledCallerIDforPB", true);
            } else {
                AbstractC14967y abstractC14967y = this.f37543f.f37550i;
                this.f37542e = 1;
                Object mo19334f = abstractC14967y.mo19334f(new String[]{"android.permission.READ_CONTACTS"}, this);
                obj = mo19334f;
                if (mo19334f == aVar) {
                    return aVar;
                }
            }
            this.f37543f.m22375z5();
            return s.a;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f37543f.f37547f.putBoolean("enabledCallerIDforPB", ((C14945l) obj).f42679a);
        this.f37543f.m22375z5();
        return s.a;
    }
}
