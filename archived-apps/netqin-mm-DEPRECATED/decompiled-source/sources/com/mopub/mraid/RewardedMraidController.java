package com.mopub.mraid;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.IntentActions;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.BaseBroadcastReceiver;
import com.mopub.mobileads.RewardedMraidCountdownRunnable;
import com.mopub.mobileads.VastVideoRadialCountdownWidget;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/RewardedMraidController.class */
public class RewardedMraidController extends MraidController {
    public static final int DEFAULT_PLAYABLE_DURATION_FOR_CLOSE_BUTTON_SECONDS = 30;
    public static final boolean DEFAULT_PLAYABLE_SHOULD_REWARD_ON_CLICK = false;
    public static final int MILLIS_IN_SECOND = 1000;

    /* renamed from: A */
    public CloseableLayout f34621A;

    /* renamed from: B */
    public VastVideoRadialCountdownWidget f34622B;

    /* renamed from: C */
    public RewardedMraidCountdownRunnable f34623C;

    /* renamed from: D */
    public final int f34624D;

    /* renamed from: E */
    public final long f34625E;

    /* renamed from: F */
    public int f34626F;

    /* renamed from: G */
    public boolean f34627G;

    /* renamed from: H */
    public boolean f34628H;

    /* renamed from: I */
    public boolean f34629I;

    @VisibleForTesting
    public RewardedMraidController(Context context, AdReport adReport, PlacementType placementType, int i, long j) {
        super(context, adReport, placementType);
        int i2 = i * 1000;
        if (i2 < 0 || i2 > 30000) {
            this.f34624D = 30000;
        } else {
            this.f34624D = i2;
        }
        this.f34625E = j;
    }

    /* renamed from: a */
    public final void m4037a(Context context, int i) {
        VastVideoRadialCountdownWidget vastVideoRadialCountdownWidget = new VastVideoRadialCountdownWidget(context);
        this.f34622B = vastVideoRadialCountdownWidget;
        vastVideoRadialCountdownWidget.setVisibility(i);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f34622B.getLayoutParams();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(marginLayoutParams.width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.height + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
        layoutParams.gravity = 53;
        this.f34621A.addView(this.f34622B, layoutParams);
    }

    @Override // com.mopub.mraid.MraidController
    /* renamed from: a */
    public void mo4036a(boolean z) {
    }

    public boolean backButtonEnabled() {
        return this.f34627G;
    }

    public void create(Context context, CloseableLayout closeableLayout) {
        this.f34621A = closeableLayout;
        closeableLayout.setCloseAlwaysInteractable(false);
        this.f34621A.setCloseVisible(false);
        m4037a(context, 4);
        this.f34622B.calibrateAndMakeVisible(this.f34624D);
        this.f34628H = true;
        this.f34623C = new RewardedMraidCountdownRunnable(this, new Handler(Looper.getMainLooper()));
    }

    @Override // com.mopub.mraid.MraidController
    public void destroy() {
        m4033o();
        super.destroy();
    }

    @Deprecated
    @VisibleForTesting
    public RewardedMraidCountdownRunnable getCountdownRunnable() {
        return this.f34623C;
    }

    @Deprecated
    @VisibleForTesting
    public VastVideoRadialCountdownWidget getRadialCountdownWidget() {
        return this.f34622B;
    }

    @Deprecated
    @VisibleForTesting
    public int getShowCloseButtonDelay() {
        return this.f34624D;
    }

    @Override // com.mopub.mraid.MraidController
    /* renamed from: h */
    public void mo4035h() {
        if (this.f34627G) {
            super.mo4035h();
        }
    }

    @Deprecated
    @VisibleForTesting
    public boolean isCalibrationDone() {
        return this.f34628H;
    }

    public boolean isPlayableCloseable() {
        return !this.f34627G && this.f34626F >= this.f34624D;
    }

    @Deprecated
    @VisibleForTesting
    public boolean isRewarded() {
        return this.f34629I;
    }

    @Deprecated
    @VisibleForTesting
    public boolean isShowCloseButtonEventFired() {
        return this.f34627G;
    }

    /* renamed from: n */
    public final void m4034n() {
        this.f34623C.startRepeating(250L);
    }

    /* renamed from: o */
    public final void m4033o() {
        this.f34623C.stop();
    }

    public void pause() {
        m4033o();
        super.pause(false);
    }

    @Override // com.mopub.mraid.MraidController
    public void resume() {
        super.resume();
        m4034n();
    }

    public void showPlayableCloseButton() {
        this.f34627G = true;
        this.f34622B.setVisibility(8);
        this.f34621A.setCloseVisible(true);
        if (!this.f34629I) {
            BaseBroadcastReceiver.broadcastAction(getContext(), this.f34625E, IntentActions.ACTION_REWARDED_PLAYABLE_COMPLETE);
            this.f34629I = true;
        }
    }

    public void updateCountdown(int i) {
        this.f34626F = i;
        if (this.f34628H) {
            this.f34622B.updateCountdownProgress(this.f34624D, i);
        }
    }
}
