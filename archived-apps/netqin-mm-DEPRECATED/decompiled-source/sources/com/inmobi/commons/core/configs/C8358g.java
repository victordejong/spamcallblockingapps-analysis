package com.inmobi.commons.core.configs;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.configs.g */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/g.class */
public final class C8358g extends AbstractC8346a {

    /* renamed from: a */
    public String f32496a = "010001";

    /* renamed from: b */
    public String f32497b = "E72409364B865B757E1D6B8DB73011BBB1D20C1A9F931ADD3C4C09E2794CE102F8AA7F2D50EB88F9880A576E6C7B0E95712CAE9416F7BACB798564627846E93B";

    /* renamed from: d */
    public String f32499d = "rsa";

    /* renamed from: c */
    public String f32498c = "1";

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final String mo5778a() {
        return "pk";
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final void mo5777a(JSONObject jSONObject) throws JSONException {
        super.mo5777a(jSONObject);
        this.f32496a = jSONObject.getString("e");
        this.f32497b = jSONObject.getString("m");
        this.f32499d = jSONObject.getString("alg");
        this.f32498c = jSONObject.getString("ver");
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: b */
    public final JSONObject mo5776b() throws JSONException {
        JSONObject b = super.mo5776b();
        b.put("e", this.f32496a);
        b.put("m", this.f32497b);
        b.put("alg", this.f32499d);
        b.put("ver", this.f32498c);
        return b;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: c */
    public final boolean mo5774c() {
        return (this.f32496a.trim().length() == 0 || this.f32497b.trim().length() == 0 || this.f32499d.trim().length() == 0 || this.f32498c.trim().length() == 0) ? false : true;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: d */
    public final AbstractC8346a mo5773d() {
        return new C8358g();
    }
}
