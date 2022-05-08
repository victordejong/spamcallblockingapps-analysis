package com.criteo.publisher.advancednative;

import android.view.View;
import java.net.URL;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lcom/criteo/publisher/advancednative/CriteoInternalMethodUtils;", "", "()V", "AD_CHOICE_ICON_URL", "", "getMediaUrl", "Ljava/net/URL;", "criteoMedia", "Lcom/criteo/publisher/advancednative/CriteoMedia;", "setAdChoiceClickableView", "", "criteoNativeAd", "Lcom/criteo/publisher/advancednative/CriteoNativeAd;", "view", "Landroid/view/View;", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoInternalMethodUtils.class */
public final class CriteoInternalMethodUtils {
    public static final String AD_CHOICE_ICON_URL = "https://static.criteo.net/flash/icon/nai_small.png";
    public static final CriteoInternalMethodUtils INSTANCE = new CriteoInternalMethodUtils();

    public final URL getMediaUrl(CriteoMedia criteoMedia) {
        C15149k.m377b(criteoMedia, "criteoMedia");
        URL imageUrl = criteoMedia.getImageUrl();
        C15149k.m383a((Object) imageUrl, "criteoMedia.imageUrl");
        return imageUrl;
    }

    public final void setAdChoiceClickableView(CriteoNativeAd criteoNativeAd, View view) {
        C15149k.m377b(criteoNativeAd, "criteoNativeAd");
        C15149k.m377b(view, "view");
        criteoNativeAd.setAdChoiceClickableView(view);
    }
}
