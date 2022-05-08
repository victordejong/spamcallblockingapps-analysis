package com.mopub.mobileads;

import android.os.Handler;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m815d2 = {"Lcom/mopub/mobileads/VastVideoViewCountdownRunnableTwo;", "Lcom/mopub/mobileads/RepeatingHandlerRunnable;", "videoViewController", "Lcom/mopub/mobileads/VastVideoViewControllerTwo;", "handler", "Landroid/os/Handler;", "(Lcom/mopub/mobileads/VastVideoViewControllerTwo;Landroid/os/Handler;)V", "doWork", "", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewCountdownRunnableTwo.class */
public final class VastVideoViewCountdownRunnableTwo extends RepeatingHandlerRunnable {

    /* renamed from: d */
    public final VastVideoViewControllerTwo f8796d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastVideoViewCountdownRunnableTwo(VastVideoViewControllerTwo vastVideoViewControllerTwo, Handler handler) {
        super(handler);
        C15149k.m377b(vastVideoViewControllerTwo, "videoViewController");
        C15149k.m377b(handler, "handler");
        this.f8796d = vastVideoViewControllerTwo;
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        VastVideoViewControllerTwo.updateCountdown$mopub_sdk_base_release$default(this.f8796d, false, 1, null);
    }
}
