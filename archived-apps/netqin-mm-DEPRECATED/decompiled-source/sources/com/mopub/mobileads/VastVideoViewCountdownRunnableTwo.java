package com.mopub.mobileads;

import android.os.Handler;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewCountdownRunnableTwo.class */
public final class VastVideoViewCountdownRunnableTwo extends RepeatingHandlerRunnable {

    /* renamed from: d */
    public final VastVideoViewControllerTwo f34407d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastVideoViewCountdownRunnableTwo(VastVideoViewControllerTwo vastVideoViewControllerTwo, Handler handler) {
        super(handler);
        C10059q.m1637b(vastVideoViewControllerTwo, "videoViewController");
        C10059q.m1637b(handler, "handler");
        this.f34407d = vastVideoViewControllerTwo;
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        VastVideoViewControllerTwo.updateCountdown$mopub_sdk_base_release$default(this.f34407d, false, 1, null);
    }
}
