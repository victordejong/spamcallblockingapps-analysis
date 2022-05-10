package com.inmobi.commons.core.configs;

import com.inmobi.commons.core.network.C8383c;
import com.inmobi.commons.core.utilities.uid.C8418d;
import com.inmobi.commons.p508a.C8326a;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.configs.f */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/f.class */
public final class C8357f extends C8383c {

    /* renamed from: d */
    public static final String f32492d = "f";

    /* renamed from: a */
    public int f32493a;

    /* renamed from: b */
    public int f32494b;

    /* renamed from: c */
    public Map<String, AbstractC8346a> f32495c;

    public C8357f(Map<String, AbstractC8346a> map, C8418d dVar, String str, int i, int i2, int i3) {
        this(map, dVar, str, i, i2, false, i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r9.trim().length() == 0) goto L_0x0011;
     */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8357f(java.util.Map<java.lang.String, com.inmobi.commons.core.configs.AbstractC8346a> r7, com.inmobi.commons.core.utilities.uid.C8418d r8, java.lang.String r9, int r10, int r11, boolean r12, int r13) {
        /*
            r6 = this;
            r0 = r9
            if (r0 == 0) goto L_0x0011
            r0 = r9
            r14 = r0
            r0 = r9
            java.lang.String r0 = r0.trim()
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0021
        L_0x0011:
            r0 = r12
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = "https://config.inmobi.cn/config-server/v1/config/secure.cfg"
            r14 = r0
            goto L_0x0021
        L_0x001d:
            java.lang.String r0 = "https://config.inmobi.com/config-server/v1/config/secure.cfg"
            r14 = r0
        L_0x0021:
            r0 = r6
            java.lang.String r1 = "POST"
            r2 = r14
            r3 = r8
            r4 = r13
            r0.<init>(r1, r2, r3, r4)
            r0 = r6
            r1 = r7
            r0.f32495c = r1
            r0 = r6
            r1 = r10
            r0.f32493a = r1
            r0 = r6
            r1 = r11
            r0.f32494b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.core.configs.C8357f.<init>(java.util.Map, com.inmobi.commons.core.utilities.uid.d, java.lang.String, int, int, boolean, int):void");
    }

    /* renamed from: c */
    private String m5820c() {
        String str;
        C8353c cVar = new C8353c();
        try {
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<String, AbstractC8346a> entry : this.f32495c.entrySet()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("n", entry.getKey());
                jSONObject.put("t", cVar.m5826b(entry.getKey()));
                jSONArray.put(jSONObject);
            }
            str = jSONArray.toString();
        } catch (JSONException e) {
            str = "";
        }
        return str;
    }

    @Override // com.inmobi.commons.core.network.C8383c
    /* renamed from: a */
    public final void mo5745a() {
        super.mo5745a();
        this.f32609n.put("p", m5820c());
        this.f32609n.put("im-accid", C8326a.m5885e());
    }
}
