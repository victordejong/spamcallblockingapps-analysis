package com.facebook.share.p046d;

import com.facebook.internal.AbstractC2404f;
/* renamed from: com.facebook.share.d.r */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/r.class */
public enum EnumC2632r implements AbstractC2404f {
    SHARE_DIALOG(20130618),
    PHOTOS(20140204),
    VIDEO(20141028),
    MULTIMEDIA(20160327),
    HASHTAG(20160327),
    LINK_SHARE_QUOTES(20160327);
    

    /* renamed from: a */
    public int f3561a;

    EnumC2632r(int i) {
        this.f3561a = i;
    }

    @Override // com.facebook.internal.AbstractC2404f
    /* renamed from: a */
    public int mo34025a() {
        return this.f3561a;
    }

    @Override // com.facebook.internal.AbstractC2404f
    /* renamed from: b */
    public String mo34024b() {
        return "com.facebook.platform.action.request.FEED_DIALOG";
    }
}
