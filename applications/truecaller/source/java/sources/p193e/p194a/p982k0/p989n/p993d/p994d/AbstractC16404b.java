package p193e.p194a.p982k0.p989n.p993d.p994d;

import android.content.DialogInterface;
import com.truecaller.callrecording.p154ui.onboarding.CallRecordingOnBoardingMvp$Listener;
import kotlin.Metadata;
import p193e.p194a.p679d5.p680g.AbstractC12636o;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b&\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0004¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Le/a/k0/n/d/d/b;", "Le/a/d5/g/o;", "Landroid/content/DialogInterface;", "dialog", "Ls1/s;", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;", "action", "dB", "(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V", "", "k", "Z", "dismissedByAction", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k0.n.d.d.b */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/d/d/b.class */
public abstract class AbstractC16404b extends AbstractC12636o {

    /* renamed from: k */
    public boolean f46124k;

    /* renamed from: dB */
    public final void m17432dB(CallRecordingOnBoardingMvp$Listener.Action action) {
        l.e(action, "action");
        CallRecordingOnBoardingMvp$Listener activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof CallRecordingOnBoardingMvp$Listener)) {
            lVar = null;
        }
        CallRecordingOnBoardingMvp$Listener callRecordingOnBoardingMvp$Listener = lVar;
        if (callRecordingOnBoardingMvp$Listener != null) {
            callRecordingOnBoardingMvp$Listener.mo17435p6(action);
        }
        this.f46124k = true;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o
    public void onDismiss(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        super.onDismiss(dialogInterface);
        if (!this.f46124k) {
            CallRecordingOnBoardingMvp$Listener activity = getActivity();
            n3.r.a.l lVar = activity;
            if (!(activity instanceof CallRecordingOnBoardingMvp$Listener)) {
                lVar = null;
            }
            CallRecordingOnBoardingMvp$Listener callRecordingOnBoardingMvp$Listener = lVar;
            if (callRecordingOnBoardingMvp$Listener == null) {
                return;
            }
            callRecordingOnBoardingMvp$Listener.mo17435p6(CallRecordingOnBoardingMvp$Listener.Action.DISMISSED);
        }
    }
}
