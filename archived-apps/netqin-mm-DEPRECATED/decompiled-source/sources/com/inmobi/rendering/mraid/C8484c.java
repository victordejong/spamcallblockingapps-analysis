package com.inmobi.rendering.mraid;

import com.inmobi.commons.core.p512d.C8364c;
/* renamed from: com.inmobi.rendering.mraid.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/c.class */
public final class C8484c {

    /* renamed from: a */
    public C8364c f32959a = C8364c.m5799b("mraid_js_store");

    /* renamed from: a */
    public final void m5475a(String str) {
        this.f32959a.m5801a("mraid_js_string", str);
        this.f32959a.m5802a("last_updated_ts", System.currentTimeMillis() / 1000);
    }
}
