package p193e.p194a.p982k0.p987l;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.callrecording.recorder.CallRecorder;
import com.truecaller.callrecording.util.RecorderMode;
import javax.inject.Inject;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.k0.l.g */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/g.class */
public final class C16339g implements AbstractC16338f {

    /* renamed from: a */
    public final Context f45990a;

    @Inject
    public C16339g(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f45990a = context;
    }

    @Override // p193e.p194a.p982k0.p987l.AbstractC16338f
    /* renamed from: a */
    public CallRecorder mo17518a(boolean z, String str, RecorderMode recorderMode, CallRecordingManager.AudioSource audioSource, CallRecorder.AbstractC3629a abstractC3629a) {
        C16352n c16352n;
        l.e(str, "outputPath");
        l.e(recorderMode, "recorderMode");
        l.e(audioSource, "audioSource");
        l.e(abstractC3629a, "errorListener");
        String str2 = "newInstance:: mode " + recorderMode + ", source " + audioSource + ", M4A: " + z + ", file: " + str;
        int ordinal = recorderMode.ordinal();
        if (ordinal == 0) {
            c16352n = new C16330a(str, abstractC3629a, this.f45990a, audioSource.getMediaRecorderAudioSource());
        } else if (ordinal != 1 && ordinal != 2) {
            throw new i();
        } else {
            Context applicationContext = this.f45990a.getApplicationContext();
            l.d(applicationContext, "context.applicationContext");
            c16352n = new C16352n(str, applicationContext.getContentResolver(), z, audioSource.getMediaRecorderAudioSource());
        }
        return c16352n;
    }
}
