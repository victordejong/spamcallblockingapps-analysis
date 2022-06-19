package p193e.p194a.p437c.p438a.p446c.p447a;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.truecaller.insights.commons.LanguageCommonNames;
import com.truecaller.insights.p168ui.important.domain.BannerAction;
import com.truecaller.insights.p168ui.important.view.BusinessInsightsFragment;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p478h.C9102d;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p548h.AbstractC10259i;
import q3.a.i0;
import q3.a.x2.a1;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.important.view.BusinessInsightsFragment$setupData$2", f = "BusinessInsightsFragment.kt", l = {314}, m = "invokeSuspend")
/* renamed from: e.a.c.a.c.a.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/a/e.class */
public final class C8777e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f26783e;

    /* renamed from: f */
    public final /* synthetic */ BusinessInsightsFragment f26784f;

    /* renamed from: e.a.c.a.c.a.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/a/e$a.class */
    public static final class C8778a implements g<BannerAction> {
        public C8778a() {
            C8777e.this = r4;
        }

        /* renamed from: a */
        public Object m28076a(BannerAction bannerAction, d<? super s> dVar) {
            String str;
            if (bannerAction == BannerAction.DOWNLOAD_MODEL_ACTION) {
                FragmentManager childFragmentManager = C8777e.this.f26784f.getChildFragmentManager();
                l.d(childFragmentManager, "childFragmentManager");
                BusinessInsightsFragment businessInsightsFragment = C8777e.this.f26784f;
                AbstractC9686e abstractC9686e = businessInsightsFragment.f12814h;
                if (abstractC9686e == null) {
                    l.l("environmentHelper");
                    throw null;
                }
                String mo27306g = abstractC9686e.mo27306g();
                if (mo27306g.hashCode() == 2210 && mo27306g.equals("EG")) {
                    AbstractC10259i abstractC10259i = businessInsightsFragment.f12813g;
                    if (abstractC10259i == null) {
                        l.l("messageTranslationContract");
                        throw null;
                    }
                    str = abstractC10259i.mo26513f(LanguageCommonNames.ARABIC);
                } else {
                    AbstractC10259i abstractC10259i2 = businessInsightsFragment.f12813g;
                    if (abstractC10259i2 == null) {
                        l.l("messageTranslationContract");
                        throw null;
                    }
                    str = abstractC10259i2.mo26513f(LanguageCommonNames.SWEDISH);
                }
                AbstractC10259i abstractC10259i3 = C8777e.this.f26784f.f12813g;
                if (abstractC10259i3 == null) {
                    l.l("messageTranslationContract");
                    throw null;
                }
                l.e(childFragmentManager, "fragmentManager");
                l.e(str, "languageCode");
                l.e(abstractC10259i3, "messageTranslationContract");
                C9102d.f27768k = abstractC10259i3;
                C9102d c9102d = new C9102d();
                Bundle bundle = new Bundle();
                bundle.putString("LANGUAGE_CODE", str);
                c9102d.setArguments(bundle);
                c9102d.show(childFragmentManager, (String) null);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8777e(BusinessInsightsFragment businessInsightsFragment, d dVar) {
        super(2, dVar);
        this.f26784f = businessInsightsFragment;
    }

    /* renamed from: i */
    public final d<s> m28079i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8777e(this.f26784f, dVar);
    }

    /* renamed from: k */
    public final Object m28078k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8777e(this.f26784f, dVar).m28077s(s.a);
    }

    /* renamed from: s */
    public final Object m28077s(Object obj) {
        a aVar = a.a;
        int i = this.f26783e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            BusinessInsightsFragment businessInsightsFragment = this.f26784f;
            s1.a.l[] lVarArr = BusinessInsightsFragment.f12805m;
            a1<BannerAction> a1Var = businessInsightsFragment.m35183QA().f12773f;
            C8778a c8778a = new C8778a();
            this.f26783e = 1;
            if (a1Var.c(c8778a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
