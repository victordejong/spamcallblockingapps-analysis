package p193e.p194a.p918j.p919a.p928e;

import com.truecaller.data.entity.Contact;
import com.truecaller.surveys.p180ui.adapter.SurveyControllerViewModel;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p918j.p934e.AbstractC15476a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.surveys.ui.adapter.SurveyControllerViewModel$start$1", f = "SurveyControllerViewModel.kt", l = {45}, m = "invokeSuspend")
/* renamed from: e.a.j.a.e.e */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/e/e.class */
public final class C15430e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f43771e;

    /* renamed from: f */
    public final /* synthetic */ SurveyControllerViewModel f43772f;

    /* renamed from: g */
    public final /* synthetic */ Contact f43773g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15430e(SurveyControllerViewModel surveyControllerViewModel, Contact contact, d dVar) {
        super(2, dVar);
        this.f43772f = surveyControllerViewModel;
        this.f43773g = contact;
    }

    /* renamed from: i */
    public final d<s> m18821i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15430e(this.f43772f, this.f43773g, dVar);
    }

    /* renamed from: k */
    public final Object m18820k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15430e(this.f43772f, this.f43773g, dVar).m18819s(s.a);
    }

    /* renamed from: s */
    public final Object m18819s(Object obj) {
        a aVar = a.a;
        int i = this.f43771e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            SurveyControllerViewModel surveyControllerViewModel = this.f43772f;
            Contact contact = this.f43773g;
            surveyControllerViewModel.f15102e = contact;
            AbstractC15476a abstractC15476a = surveyControllerViewModel.f15103f;
            this.f43771e = 1;
            if (abstractC15476a.mo18780c(contact, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f43772f.m34642e();
        return s.a;
    }
}
