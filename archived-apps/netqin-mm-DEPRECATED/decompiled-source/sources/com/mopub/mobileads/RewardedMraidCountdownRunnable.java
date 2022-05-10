package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.mraid.RewardedMraidController;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedMraidCountdownRunnable.class */
public class RewardedMraidCountdownRunnable extends RepeatingHandlerRunnable {

    /* renamed from: d */
    public final RewardedMraidController f34210d;

    /* renamed from: e */
    public int f34211e;

    public RewardedMraidCountdownRunnable(RewardedMraidController rewardedMraidController, Handler handler) {
        super(handler);
        Preconditions.checkNotNull(handler);
        Preconditions.checkNotNull(rewardedMraidController);
        this.f34210d = rewardedMraidController;
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        int i = (int) (this.f34211e + this.f34196c);
        this.f34211e = i;
        this.f34210d.updateCountdown(i);
        if (this.f34210d.isPlayableCloseable()) {
            this.f34210d.showPlayableCloseButton();
        }
    }
}
