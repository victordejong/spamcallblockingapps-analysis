package p193e.p194a.p947k.p969c;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.p187ui.recording.RecordingActivity;
import com.truecaller.videocallerid.p187ui.recording.RecordingScreenModes;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import s1.z.c.l;
/* renamed from: e.a.k.c.h1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/h1.class */
public final class C15993h1 implements AbstractC15980e1 {
    /* renamed from: a */
    public void m18020a(Context context, RecordingScreenModes recordingScreenModes, OnboardingData onboardingData) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(recordingScreenModes, "recordingScreenModes");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(recordingScreenModes, "recordingMode");
        Intent intent = new Intent(context, RecordingActivity.class);
        intent.putExtra("recordingModeArg", recordingScreenModes.getValue());
        if (onboardingData != null) {
            intent.putExtra("onboardingData", onboardingData);
        }
        context.startActivity(intent);
    }
}
