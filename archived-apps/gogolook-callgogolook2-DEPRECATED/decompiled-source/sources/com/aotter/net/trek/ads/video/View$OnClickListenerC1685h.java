package com.aotter.net.trek.ads.video;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.aotter.net.trek.ads.click.ClcRecordHelper;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.model.NativeAd;
/* renamed from: com.aotter.net.trek.ads.video.h */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/h.class */
public class View$OnClickListenerC1685h implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ NativeVideoViewController f1262a;

    public View$OnClickListenerC1685h(NativeVideoViewController nativeVideoViewController) {
        this.f1262a = nativeVideoViewController;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        NativeAd nativeAd;
        String str;
        NativeAd nativeAd2;
        nativeAd = this.f1262a.f1236g;
        if (!(nativeAd == null || BaseVideoPlayerActivity.mAdListener == null)) {
            Context h = this.f1262a.m36526h();
            AdListener adListener = BaseVideoPlayerActivity.mAdListener;
            nativeAd2 = this.f1262a.f1236g;
            ClcRecordHelper.sendClc(h, adListener, nativeAd2);
        }
        str = this.f1262a.f1245p;
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(268435456);
        this.f1262a.m36526h().startActivity(intent);
    }
}
