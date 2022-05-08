package com.adbert.p009a.p011b;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import org.json.JSONObject;
/* renamed from: com.adbert.a.b.a */
/* loaded from: classes-dex2jar.jar:com/adbert/a/b/a.class */
public class C1376a {

    /* renamed from: a */
    public String f394a = "";

    /* renamed from: b */
    public String f395b = "";

    /* renamed from: c */
    public String f396c = "";

    /* renamed from: d */
    public String f397d = "";

    /* renamed from: e */
    public String f398e = "";

    public C1376a() {
        m37206a();
    }

    /* renamed from: b */
    private String m37204b() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
    }

    /* renamed from: a */
    public void m37206a() {
        String b = m37204b();
        if (this.f397d.isEmpty()) {
            this.f397d = b;
        } else {
            this.f398e = b;
        }
    }

    /* renamed from: a */
    public void m37205a(String str) {
        this.f394a = str;
    }

    /* renamed from: b */
    public void m37203b(String str) {
        this.f395b = str;
    }

    /* renamed from: c */
    public void m37202c(String str) {
        this.f396c = str;
    }

    /* renamed from: d */
    public JSONObject m37201d(String str) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("uuid", str);
        jSONObject.put("id", this.f394a);
        jSONObject.put("major", this.f395b);
        jSONObject.put("minor", this.f396c);
        jSONObject.put("startTime", this.f397d);
        jSONObject.put("endTime", this.f398e);
        return jSONObject;
    }
}
