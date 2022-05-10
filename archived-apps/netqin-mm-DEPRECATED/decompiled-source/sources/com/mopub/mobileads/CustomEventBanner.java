package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventBanner.class */
public abstract class CustomEventBanner {

    /* renamed from: a */
    public boolean f34069a = true;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventBanner$CustomEventBannerListener.class */
    public interface CustomEventBannerListener {
        void onBannerClicked();

        void onBannerCollapsed();

        void onBannerExpanded();

        void onBannerFailed(MoPubErrorCode moPubErrorCode);

        void onBannerLoaded(View view);
    }

    /* renamed from: a */
    public abstract void mo4136a(Context context, CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2);

    /* renamed from: a */
    public boolean m4409a() {
        return this.f34069a;
    }

    /* renamed from: b */
    public abstract void mo4132b();

    /* renamed from: c */
    public void mo4130c() {
    }
}
