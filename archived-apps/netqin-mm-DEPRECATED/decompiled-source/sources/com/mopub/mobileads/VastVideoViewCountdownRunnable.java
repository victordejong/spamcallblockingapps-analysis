package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewCountdownRunnable.class */
public class VastVideoViewCountdownRunnable extends RepeatingHandlerRunnable {

    /* renamed from: d */
    public final VastVideoViewController f34406d;

    public VastVideoViewCountdownRunnable(VastVideoViewController vastVideoViewController, Handler handler) {
        super(handler);
        Preconditions.checkNotNull(handler);
        Preconditions.checkNotNull(vastVideoViewController);
        this.f34406d = vastVideoViewController;
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        this.f34406d.m4207p();
        if (this.f34406d.m4213m()) {
            this.f34406d.m4217k();
        }
    }
}
