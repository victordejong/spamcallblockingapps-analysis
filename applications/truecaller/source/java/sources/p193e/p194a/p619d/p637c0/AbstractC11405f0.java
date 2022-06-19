package p193e.p194a.p619d.p637c0;

import com.truecaller.voip.VoipUser;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipAnalyticsFailedCallAction;
import com.truecaller.voip.util.VoipAnalyticsInCallUiAction;
import com.truecaller.voip.util.VoipAnalyticsNotificationAction;
import com.truecaller.voip.util.VoipAnalyticsState;
import com.truecaller.voip.util.VoipAnalyticsStateReason;
import com.truecaller.voip.util.VoipCleverTapAction;
import com.truecaller.voip.util.VoipInvitationFailureReason;
import com.truecaller.voip.util.VoipSearchDirection;
import p193e.p194a.p619d.C11730l;
import q3.a.i0;
import q3.a.w2.z;
import s1.z.b.a;
/* renamed from: e.a.d.c0.f0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/f0.class */
public interface AbstractC11405f0 {
    /* renamed from: a */
    void mo24718a(VoipInvitationFailureReason voipInvitationFailureReason);

    /* renamed from: b */
    void mo24717b(String str);

    /* renamed from: c */
    void mo24716c(VoipAnalyticsInCallUiAction voipAnalyticsInCallUiAction);

    /* renamed from: d */
    void mo24715d(C11395e0 c11395e0, VoipAnalyticsState voipAnalyticsState, VoipAnalyticsStateReason voipAnalyticsStateReason);

    /* renamed from: e */
    void mo24714e(String str, VoipAnalyticsFailedCallAction voipAnalyticsFailedCallAction);

    /* renamed from: f */
    void mo24713f(boolean z, String str, long j, Integer num);

    /* renamed from: g */
    void mo24712g(String str, String str2, int i, boolean z);

    /* renamed from: h */
    void mo24711h(String str, String str2, VoipSearchDirection voipSearchDirection);

    /* renamed from: i */
    void mo24710i(VoipAnalyticsCallDirection voipAnalyticsCallDirection, VoipCleverTapAction voipCleverTapAction);

    /* renamed from: j */
    void mo24709j(Integer num, String str, String str2, int i, int i2, int i3, String str3, String str4);

    /* renamed from: k */
    void mo24708k(i0 i0Var, VoipAnalyticsCallDirection voipAnalyticsCallDirection, String str, a<String> aVar, a<Integer> aVar2, String str2, z<C11730l> zVar, z<VoipUser> zVar2, z<Boolean> zVar3);

    /* renamed from: l */
    void mo24707l(String str, VoipAnalyticsNotificationAction voipAnalyticsNotificationAction);
}
