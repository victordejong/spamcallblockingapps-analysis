package com.inmobi.ads.p500a;

import android.net.Uri;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.p497a.C8002n;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.a.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/a/c.class */
public final class C8052c {

    /* renamed from: b */
    public static final String f31519b = "c";

    /* renamed from: a */
    public AbstractC8054e f31520a;

    public C8052c(AbstractC8054e eVar) {
        this.f31520a = eVar;
    }

    /* renamed from: a */
    public static String m6606a(C8049a aVar, File file, long j, long j2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", aVar.f31492d);
            jSONObject.put("saved_url", Uri.fromFile(file));
            jSONObject.put("size_in_bytes", file.length());
            jSONObject.put("download_started_at", j);
            jSONObject.put("download_ended_at", j2);
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
        }
        return jSONObject.toString().replace("\"", "\\\"");
    }

    /* renamed from: a */
    public static void m6607a(long j, long j2, long j3) {
        try {
            C8002n.m6748a().m6747a(0L);
            C8002n.m6748a().m6745b(j2);
            C8002n.m6748a().m6744c(j3 - j);
        } catch (Exception e) {
            new StringBuilder("Error in setting request-response data size. ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }
}
