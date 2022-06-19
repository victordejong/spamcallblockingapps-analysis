package p193e.p194a.p437c.p531c0;

import android.content.SharedPreferences;
import com.truecaller.insights.utils.FeedbackConsentState;
import com.truecaller.insights.utils.FeedbackConsentType;
import s1.z.c.l;
/* renamed from: e.a.c.c0.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/l.class */
public final class C10025l implements AbstractC10024k {

    /* renamed from: a */
    public final SharedPreferences f29857a;

    /* renamed from: b */
    public final AbstractC10028o f29858b;

    public C10025l(SharedPreferences sharedPreferences, AbstractC10028o abstractC10028o) {
        l.e(sharedPreferences, "prefs");
        l.e(abstractC10028o, "insightsConfig");
        this.f29857a = sharedPreferences;
        this.f29858b = abstractC10028o;
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10024k
    /* renamed from: a */
    public FeedbackConsentState mo26896a(FeedbackConsentType feedbackConsentType) {
        l.e(feedbackConsentType, "consentType");
        String string = this.f29857a.getString(feedbackConsentType.getKey(), null);
        if (string == null) {
            string = (this.f29858b.mo26867O() ? FeedbackConsentState.CONSENT_GIVEN : FeedbackConsentState.NOT_STARTED).name();
        }
        l.d(string, "prefs.getString(\n       …entState.NOT_STARTED.name");
        return FeedbackConsentState.valueOf(string);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10024k
    /* renamed from: b */
    public void mo26895b() {
        FeedbackConsentType[] values = FeedbackConsentType.values();
        for (int i = 0; i < 5; i++) {
            this.f29857a.edit().putString(values[i].getKey(), FeedbackConsentState.NOT_STARTED.name()).apply();
        }
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10024k
    /* renamed from: c */
    public void mo26894c() {
        FeedbackConsentType[] values = FeedbackConsentType.values();
        for (int i = 0; i < 5; i++) {
            this.f29857a.edit().putString(values[i].getKey(), FeedbackConsentState.CONSENT_NOT_GIVEN.name()).apply();
        }
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10024k
    /* renamed from: d */
    public void mo26893d() {
        FeedbackConsentType[] values = FeedbackConsentType.values();
        for (int i = 0; i < 5; i++) {
            this.f29857a.edit().putString(values[i].getKey(), FeedbackConsentState.CONSENT_GIVEN.name()).apply();
        }
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10024k
    /* renamed from: e */
    public void mo26892e(FeedbackConsentType feedbackConsentType, FeedbackConsentState feedbackConsentState) {
        l.e(feedbackConsentType, "consentType");
        l.e(feedbackConsentState, "state");
        if (feedbackConsentState != FeedbackConsentState.CONSENT_GIVEN) {
            this.f29857a.edit().putString(feedbackConsentType.getKey(), feedbackConsentState.name()).apply();
            return;
        }
        FeedbackConsentType[] values = FeedbackConsentType.values();
        for (int i = 0; i < 5; i++) {
            this.f29857a.edit().putString(values[i].getKey(), feedbackConsentState.name()).apply();
        }
    }
}
