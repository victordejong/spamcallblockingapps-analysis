package com.mopub.nativeads;

import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.nativeads.NativeVideoController;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/VideoNativeAd.class */
public abstract class VideoNativeAd extends BaseNativeAd implements NativeVideoController.Listener {

    /* renamed from: e */
    public String f34941e;

    /* renamed from: f */
    public String f34942f;

    /* renamed from: g */
    public String f34943g;

    /* renamed from: h */
    public String f34944h;

    /* renamed from: i */
    public String f34945i;

    /* renamed from: j */
    public String f34946j;

    /* renamed from: k */
    public String f34947k;

    /* renamed from: l */
    public String f34948l;

    /* renamed from: m */
    public String f34949m;

    /* renamed from: n */
    public String f34950n;

    /* renamed from: o */
    public final Map<String, Object> f34951o = new HashMap();

    public final void addExtra(String str, Object obj) {
        if (Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
            this.f34951o.put(str, obj);
        }
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void clear(View view) {
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void destroy() {
    }

    public String getCallToAction() {
        return this.f34944h;
    }

    public String getClickDestinationUrl() {
        return this.f34943g;
    }

    public final Object getExtra(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
            return null;
        }
        return this.f34951o.get(str);
    }

    public final Map<String, Object> getExtras() {
        return this.f34951o;
    }

    public String getIconImageUrl() {
        return this.f34942f;
    }

    public String getMainImageUrl() {
        return this.f34941e;
    }

    public String getPrivacyInformationIconClickThroughUrl() {
        return this.f34947k;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.f34948l;
    }

    public String getSponsored() {
        return this.f34950n;
    }

    public String getText() {
        return this.f34946j;
    }

    public String getTitle() {
        return this.f34945i;
    }

    public String getVastVideo() {
        return this.f34949m;
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void prepare(View view) {
    }

    public void render(MediaLayout mediaLayout) {
    }

    public void setCallToAction(String str) {
        this.f34944h = str;
    }

    public void setClickDestinationUrl(String str) {
        this.f34943g = str;
    }

    public void setIconImageUrl(String str) {
        this.f34942f = str;
    }

    public void setMainImageUrl(String str) {
        this.f34941e = str;
    }

    public void setPrivacyInformationIconClickThroughUrl(String str) {
        this.f34947k = str;
    }

    public void setPrivacyInformationIconImageUrl(String str) {
        this.f34948l = str;
    }

    public void setSponsored(String str) {
        this.f34950n = str;
    }

    public void setText(String str) {
        this.f34946j = str;
    }

    public void setTitle(String str) {
        this.f34945i = str;
    }

    public void setVastVideo(String str) {
        this.f34949m = str;
    }
}
