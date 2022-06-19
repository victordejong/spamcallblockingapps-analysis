package p193e.p194a.p918j.p919a.p929f;

import com.truecaller.data.entity.Contact;
import com.truecaller.surveys.data.entities.Question;
import com.truecaller.surveys.p180ui.bizmonAdapter.BizSurveyControllerViewModel;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p918j.p934e.AbstractC15476a;
import p193e.p194a.p918j.p934e.AbstractC15489f;
import q3.a.i0;
import q3.a.x2.a1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerViewModel$start$1", f = "BizSurveyControllerViewModel.kt", l = {31}, m = "invokeSuspend")
/* renamed from: e.a.j.a.f.d */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/f/d.class */
public final class C15441d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f43786e;

    /* renamed from: f */
    public final /* synthetic */ BizSurveyControllerViewModel f43787f;

    /* renamed from: g */
    public final /* synthetic */ Contact f43788g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15441d(BizSurveyControllerViewModel bizSurveyControllerViewModel, Contact contact, d dVar) {
        super(2, dVar);
        this.f43787f = bizSurveyControllerViewModel;
        this.f43788g = contact;
    }

    /* renamed from: i */
    public final d<s> m18811i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15441d(this.f43787f, this.f43788g, dVar);
    }

    /* renamed from: k */
    public final Object m18810k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15441d(this.f43787f, this.f43788g, dVar).m18809s(s.a);
    }

    /* renamed from: s */
    public final Object m18809s(Object obj) {
        a aVar = a.a;
        int i = this.f43786e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Objects.requireNonNull(this.f43787f);
            AbstractC15476a abstractC15476a = this.f43787f.f15113c;
            Contact contact = this.f43788g;
            this.f43786e = 1;
            if (abstractC15476a.mo18780c(contact, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        BizSurveyControllerViewModel bizSurveyControllerViewModel = this.f43787f;
        BizSurveyControllerViewModel.AbstractC4571a abstractC4571a = BizSurveyControllerViewModel.AbstractC4571a.C4572a.f15114a;
        a1<BizSurveyControllerViewModel.AbstractC4571a> a1Var = bizSurveyControllerViewModel.f15111a;
        AbstractC15489f state = bizSurveyControllerViewModel.f15113c.getState();
        if (state instanceof AbstractC15489f.C15490a) {
            Question question = ((AbstractC15489f.C15490a) state).f43906a;
            if (question instanceof Question.Rating) {
                abstractC4571a = new BizSurveyControllerViewModel.AbstractC4571a.C4573b((Question.Rating) question);
            }
        } else if (l.a(state, AbstractC15489f.C15491b.f43909a)) {
            abstractC4571a = BizSurveyControllerViewModel.AbstractC4571a.C4574c.f15116a;
        } else if (!l.a(state, AbstractC15489f.C15492c.f43910a)) {
            throw new s1.i();
        }
        a1Var.setValue(abstractC4571a);
        return s.a;
    }
}
