package p193e.p194a.p437c.p438a.p507p.p511d;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.Objects;
import p1727n3.p1909z.C27555b2;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getSmartFeedFlow$1", f = "InsightsSmartFeedViewModel.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.d.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/k.class */
public final class C9484k extends i implements q<C27555b2<AbstractC9460d>, Boolean, d<? super C27555b2<AbstractC9460d>>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f28761e;

    /* renamed from: f */
    public /* synthetic */ boolean f28762f;

    /* renamed from: g */
    public final /* synthetic */ InsightsSmartFeedViewModel f28763g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9484k(InsightsSmartFeedViewModel insightsSmartFeedViewModel, d dVar) {
        super(3, dVar);
        this.f28763g = insightsSmartFeedViewModel;
    }

    /* renamed from: h */
    public final Object m27518h(Object obj, Object obj2, Object obj3) {
        C27555b2 c27555b2 = (C27555b2) obj;
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        d dVar = (d) obj3;
        l.e(c27555b2, "pagingData");
        l.e(dVar, "continuation");
        InsightsSmartFeedViewModel insightsSmartFeedViewModel = this.f28763g;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        Objects.requireNonNull(insightsSmartFeedViewModel);
        l.e(c27555b2, "$this$updateTransactionHiddenState");
        return MediaSessionCompat.m43273R0(c27555b2, new C9488o(booleanValue, null));
    }

    /* renamed from: s */
    public final Object m27517s(Object obj) {
        C25225a.m3932a3(obj);
        C27555b2 c27555b2 = (C27555b2) this.f28761e;
        boolean z = this.f28762f;
        Objects.requireNonNull(this.f28763g);
        l.e(c27555b2, "$this$updateTransactionHiddenState");
        return MediaSessionCompat.m43273R0(c27555b2, new C9488o(z, null));
    }
}
