package p193e.p194a.p372b0.p417k;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p417k.C8497f;
import q3.a.i0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.common.i18n.LanguageUtil$getUserCountryLanguages$2", f = "LanguageUtil.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.b0.k.g */
/* loaded from: classes7-dex2jar.jar:e/a/b0/k/g.class */
public final class C8501g extends i implements p<i0, d<? super List<? extends String>>, Object> {

    /* renamed from: e */
    public final /* synthetic */ String f26285e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8501g(String str, d dVar) {
        super(2, dVar);
        this.f26285e = str;
    }

    /* renamed from: i */
    public final d<s> m28440i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8501g(this.f26285e, dVar);
    }

    /* renamed from: k */
    public final Object m28439k(Object obj, Object obj2) {
        List list;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        String str = this.f26285e;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        C8497f.C8499b c8499b = C8497f.f26278b;
        g gVar = C8497f.f26277a;
        if (((Map) gVar.getValue()).containsKey(str)) {
            list = (List) ((Map) gVar.getValue()).get(str);
        } else {
            Map map = (Map) gVar.getValue();
            C8495d c8495d = C8495d.f26276h;
            String str2 = C8495d.f26270b;
            Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
            String upperCase = str2.toUpperCase();
            l.d(upperCase, "(this as java.lang.String).toUpperCase()");
            list = (List) map.get(upperCase);
        }
        return list;
    }

    /* renamed from: s */
    public final Object m28438s(Object obj) {
        List list;
        C25225a.m3932a3(obj);
        C8497f.C8499b c8499b = C8497f.f26278b;
        g gVar = C8497f.f26277a;
        if (((Map) gVar.getValue()).containsKey(this.f26285e)) {
            list = (List) ((Map) gVar.getValue()).get(this.f26285e);
        } else {
            Map map = (Map) gVar.getValue();
            C8495d c8495d = C8495d.f26276h;
            String str = C8495d.f26270b;
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            String upperCase = str.toUpperCase();
            l.d(upperCase, "(this as java.lang.String).toUpperCase()");
            list = (List) map.get(upperCase);
        }
        return list;
    }
}
