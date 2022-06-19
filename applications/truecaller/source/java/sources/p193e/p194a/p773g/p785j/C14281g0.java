package p193e.p194a.p773g.p785j;

import com.truecaller.acs.util.TrueContextType;
import com.truecaller.data.entity.HistoryEvent;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1080o.p1081a.p1096j.C18661b;
import p193e.p194a.p1359x4.AbstractC21423g;
import p193e.p194a.p1359x4.p1364l.C21464b;
import p193e.p194a.p294b.p344j.C7951b;
import s1.z.c.l;
/* renamed from: e.a.g.j.g0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/g0.class */
public final class C14281g0 {

    /* renamed from: a */
    public final Provider<C21464b> f41334a;

    /* renamed from: b */
    public final Provider<C7951b> f41335b;

    /* renamed from: c */
    public final Provider<C18661b> f41336c;

    /* renamed from: d */
    public final AbstractC18765c f41337d;

    /* renamed from: e */
    public final AbstractC21423g f41338e;

    @Inject
    public C14281g0(Provider<C21464b> provider, Provider<C7951b> provider2, Provider<C18661b> provider3, AbstractC18765c abstractC18765c, AbstractC21423g abstractC21423g) {
        l.e(provider, "searchWarningsPresenter");
        l.e(provider2, "businessCallReasonPresenter");
        l.e(provider3, "callContextPresenter");
        l.e(abstractC18765c, "contextCall");
        l.e(abstractC21423g, "searchWarningsHelper");
        this.f41334a = provider;
        this.f41335b = provider2;
        this.f41336c = provider3;
        this.f41337d = abstractC18765c;
        this.f41338e = abstractC21423g;
    }

    /* renamed from: a */
    public TrueContextType m20296a(HistoryEvent historyEvent, boolean z) {
        TrueContextType trueContextType;
        l.e(historyEvent, "historyEvent");
        if (historyEvent.m35484a() == 6 && this.f41337d.isSupported() && historyEvent.f11555v != null && !z) {
            trueContextType = TrueContextType.CALL_REASON;
        } else if (this.f41338e.mo9746b(historyEvent.f11539f)) {
            trueContextType = TrueContextType.SEARCH_WARNINGS;
        } else {
            l.e(historyEvent, "historyEvent");
            trueContextType = this.f41338e.mo9745c(historyEvent.f11539f) && historyEvent.f11550q != 2 ? TrueContextType.BUSINESS_CALL_REASON : null;
        }
        return trueContextType;
    }
}
