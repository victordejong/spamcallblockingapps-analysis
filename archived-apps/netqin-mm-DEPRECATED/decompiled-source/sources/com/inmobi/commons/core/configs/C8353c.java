package com.inmobi.commons.core.configs;

import com.inmobi.commons.core.p512d.C8364c;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.configs.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/c.class */
public final class C8353c {

    /* renamed from: a */
    public C8364c f32485a = C8364c.m5799b("config_store");

    /* renamed from: a */
    public final void m5829a(AbstractC8346a aVar) {
        C8364c cVar = this.f32485a;
        String c = cVar.m5796c(aVar.mo5778a() + "_config");
        if (c != null) {
            try {
                aVar.mo5777a(new JSONObject(c));
            } catch (JSONException e) {
            }
        }
    }

    /* renamed from: a */
    public final void m5827a(String str, long j) {
        C8364c cVar = this.f32485a;
        cVar.m5802a(str + "_config_update_ts", j);
    }

    /* renamed from: a */
    public final boolean m5828a(String str) {
        C8364c cVar = this.f32485a;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_config");
        return cVar.m5796c(sb.toString()) != null;
    }

    /* renamed from: b */
    public final long m5826b(String str) {
        C8364c cVar = this.f32485a;
        return cVar.m5798b(str + "_config_update_ts", 0L);
    }
}
