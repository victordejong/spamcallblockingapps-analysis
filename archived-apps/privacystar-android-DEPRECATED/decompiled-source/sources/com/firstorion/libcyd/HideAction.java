package com.firstorion.libcyd;

import android.animation.Animator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/HideAction.class */
public final class HideAction {
    private final Context applicationContext;
    private final String callId;
    private final CydContent content;
    private final CydContentMetadata cydMetadata;
    private final boolean multicall;
    private final String phoneNumber;
    boolean shown = true;
    private final TelemetryHost telemetryHost;
    private final View view;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.firstorion.libcyd.HideAction$1 */
    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/HideAction$1.class */
    public class RunnableC11641 implements Runnable {
        final /* synthetic */ View val$v;

        RunnableC11641(View view) {
            this.val$v = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            final Context applicationContext = this.val$v.getContext().getApplicationContext();
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.firstorion.libcyd.HideAction.1.1
                @Override // java.lang.Runnable
                public void run() {
                    RunnableC11641.this.val$v.animate().x(RunnableC11641.this.val$v.getWidth()).setInterpolator(new LinearInterpolator()).setStartDelay(0L).setDuration(250L).setListener(new Animator.AnimatorListener() { // from class: com.firstorion.libcyd.HideAction.1.1.1
                        private void removeView() {
                            try {
                                ((WindowManager) applicationContext.getSystemService("window")).removeViewImmediate(RunnableC11641.this.val$v);
                            } catch (Exception e) {
                            }
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            removeView();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            removeView();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }
                    }).start();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HideAction(Context context, TelemetryHost telemetryHost, CydContent cydContent, View view, String str, String str2, boolean z) {
        this.applicationContext = context;
        this.telemetryHost = telemetryHost;
        this.content = cydContent;
        this.cydMetadata = cydContent.metadata;
        this.view = view;
        this.callId = str;
        this.phoneNumber = str2;
        this.multicall = z;
    }

    private void hide() {
        this.shown = false;
        new Handler(Looper.getMainLooper()).post(new RunnableC11641(this.view));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hideFromClose() {
        if (this.shown) {
            this.telemetryHost.putTelemetryEvent(new TelemetryEvent(this.callId, null, 57, 1));
            hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hideFromPhoneState(PhoneRingingStoppedReason phoneRingingStoppedReason) {
        this.telemetryHost.putTelemetryEvent(new TelemetryEvent(this.callId, null, 58, this.multicall ? 3 : phoneRingingStoppedReason == PhoneRingingStoppedReason.CallIgnored ? 1 : phoneRingingStoppedReason == PhoneRingingStoppedReason.CallAnswered ? 0 : 2));
        if (phoneRingingStoppedReason == PhoneRingingStoppedReason.CallIgnored && !this.cydMetadata.keep) {
            try {
                CydContentManager.removeContentForReason(this.applicationContext, this.telemetryHost, this.content.metadata.cvid, CleanReason.RingStop);
            } catch (Throwable th) {
            }
        }
        this.telemetryHost.uploadTelemetry(this.applicationContext);
        if (this.shown) {
            hide();
        }
    }
}
