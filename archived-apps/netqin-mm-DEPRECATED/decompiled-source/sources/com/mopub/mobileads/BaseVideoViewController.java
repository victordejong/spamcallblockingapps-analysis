package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController.class */
public abstract class BaseVideoViewController {

    /* renamed from: a */
    public final Context f34063a;

    /* renamed from: b */
    public final RelativeLayout f34064b;

    /* renamed from: c */
    public final BaseVideoViewControllerListener f34065c;

    /* renamed from: d */
    public Long f34066d;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener.class */
    public interface BaseVideoViewControllerListener {
        void onFinish();

        void onSetContentView(View view);
    }

    public BaseVideoViewController(Context context, Long l, BaseVideoViewControllerListener baseVideoViewControllerListener) {
        Preconditions.checkNotNull(baseVideoViewControllerListener);
        this.f34063a = context;
        this.f34066d = l;
        this.f34065c = baseVideoViewControllerListener;
        this.f34064b = new RelativeLayout(this.f34063a);
    }

    /* renamed from: a */
    public BaseVideoViewControllerListener m4417a() {
        return this.f34065c;
    }

    /* renamed from: a */
    public void mo4200a(int i, int i2, Intent intent) {
    }

    /* renamed from: a */
    public abstract void mo3885a(Configuration configuration);

    /* renamed from: a */
    public abstract void mo3884a(Bundle bundle);

    /* renamed from: a */
    public void m4416a(String str) {
        Long l = this.f34066d;
        if (l != null) {
            BaseBroadcastReceiver.broadcastAction(this.f34063a, l.longValue(), str);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Tried to broadcast a video event without a broadcast identifier to send to.");
        }
    }

    /* renamed from: a */
    public void m4415a(boolean z) {
        if (z) {
            this.f34065c.onFinish();
        }
    }

    /* renamed from: b */
    public Context m4414b() {
        return this.f34063a;
    }

    /* renamed from: b */
    public void m4413b(boolean z) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Video cannot be played.");
        m4416a(IntentActions.ACTION_INTERSTITIAL_FAIL);
        if (z) {
            this.f34065c.onFinish();
        }
    }

    public boolean backButtonEnabled() {
        return true;
    }

    /* renamed from: c */
    public abstract View mo3877c();

    /* renamed from: d */
    public abstract void mo3875d();

    /* renamed from: e */
    public void mo3873e() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f34064b.addView(mo3877c(), 0, layoutParams);
        this.f34065c.onSetContentView(this.f34064b);
    }

    /* renamed from: f */
    public abstract void mo3871f();

    /* renamed from: g */
    public abstract void mo3869g();

    public ViewGroup getLayout() {
        return this.f34064b;
    }

    /* renamed from: h */
    public abstract void mo3867h();
}
