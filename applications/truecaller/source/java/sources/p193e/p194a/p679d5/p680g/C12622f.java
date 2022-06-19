package p193e.p194a.p679d5.p680g;

import android.content.Context;
import android.widget.Toast;
import java.util.LinkedHashMap;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.p424n.AbstractC8531g;
import p193e.p194a.p372b0.p424n.AbstractC8532h;
import p193e.p194a.p372b0.p424n.C8523b;
import p193e.p194a.p682e.p683a.C12731f3;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.startup_dialogs.fragments.FillProfileNameDialog$updateProfile$1", f = "FillProfileNameDialog.kt", l = {63}, m = "invokeSuspend")
/* renamed from: e.a.d5.g.f */
/* loaded from: classes12-dex2jar.jar:e/a/d5/g/f.class */
public final class C12622f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36767e;

    /* renamed from: f */
    public final /* synthetic */ C12623g f36768f;

    /* renamed from: g */
    public final /* synthetic */ String f36769g;

    /* renamed from: h */
    public final /* synthetic */ String f36770h;

    /* renamed from: i */
    public final /* synthetic */ C12731f3 f36771i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12622f(C12623g c12623g, String str, String str2, C12731f3 c12731f3, d dVar) {
        super(2, dVar);
        this.f36768f = c12623g;
        this.f36769g = str;
        this.f36770h = str2;
        this.f36771i = c12731f3;
    }

    /* renamed from: i */
    public final d<s> m22815i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12622f(this.f36768f, this.f36769g, this.f36770h, this.f36771i, dVar);
    }

    /* renamed from: k */
    public final Object m22814k(Object obj, Object obj2) {
        return m22815i(obj, (d) obj2).m22813s(s.a);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    public final Object m22813s(Object obj) {
        a aVar = a.a;
        int i = this.f36767e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("first_name", this.f36769g);
                linkedHashMap.put("last_name", this.f36770h);
                AbstractC8531g abstractC8531g = this.f36768f.f36773c;
                if (abstractC8531g == null) {
                    l.l("profileRepository");
                    throw null;
                }
                this.f36767e = 1;
                Object m15208q0 = C18334g0.m15208q0(abstractC8531g, null, false, null, linkedHashMap, false, this, 23, null);
                obj = m15208q0;
                if (m15208q0 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC8532h abstractC8532h = (AbstractC8532h) obj;
            if (abstractC8532h.f26322a) {
                this.f36768f.dismissAllowingStateLoss();
            } else {
                Context context = this.f36768f.getContext();
                C8523b c8523b = this.f36768f.f36774d;
                if (c8523b == null) {
                    l.l("profileErrorMessageHelper");
                    throw null;
                }
                Toast.makeText(context, c8523b.m28414a(abstractC8532h), 0).show();
            }
            this.f36771i.dismissAllowingStateLoss();
            return s.a;
        } catch (Throwable th) {
            this.f36771i.dismissAllowingStateLoss();
            throw th;
        }
    }
}
