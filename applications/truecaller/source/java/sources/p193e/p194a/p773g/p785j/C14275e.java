package p193e.p194a.p773g.p785j;

import com.truecaller.acs.analytics.AnalyticsContext;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.CallContextMessage;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.g.j.e */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/e.class */
public final class C14275e implements AbstractC14273d {

    /* renamed from: a */
    public final InitiateCallHelper f41316a;

    @Inject
    public C14275e(InitiateCallHelper initiateCallHelper) {
        l.e(initiateCallHelper, "initiateCallHelper");
        this.f41316a = initiateCallHelper;
    }

    /* renamed from: a */
    public void m20301a(String str, AnalyticsContext analyticsContext, CallContextMessage callContextMessage) {
        l.e(str, "number");
        l.e(analyticsContext, "analyticsContext");
        String value = analyticsContext.getValue();
        l.e(value, "analyticsContext");
        InitiateCallHelper.CallContextOption.ShowOnBoarded showOnBoarded = InitiateCallHelper.CallContextOption.ShowOnBoarded.a;
        if (callContextMessage != null) {
            showOnBoarded = new InitiateCallHelper.CallContextOption.Set(callContextMessage);
            l.e(showOnBoarded, "callContextOption");
        }
        this.f41316a.m35744b(new InitiateCallHelper.CallOptions(str, value, null, null, false, false, null, true, showOnBoarded));
    }
}
