package com.inmobi.p497a;

import com.inmobi.commons.core.network.C8383c;
import com.inmobi.commons.core.utilities.uid.C8418d;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
/* renamed from: com.inmobi.a.f */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/f.class */
public final class C7989f extends C8383c {

    /* renamed from: a */
    public int f31193a;

    /* renamed from: b */
    public int f31194b;

    /* renamed from: c */
    public C7986c f31195c;

    /* renamed from: d */
    public List<C7987d> f31196d;

    public C7989f(String str, int i, int i2, C8418d dVar, List<C7987d> list, C7986c cVar) {
        super("POST", str, true, dVar);
        this.f31193a = i;
        this.f31194b = i2;
        this.f31196d = list;
        this.f31195c = cVar;
        this.f32609n.put("req_id", cVar.f31187c);
        this.f32609n.put("i_till", Integer.toString(this.f31195c.f31188d));
        Map<String, String> map = this.f32609n;
        JSONArray jSONArray = new JSONArray();
        for (int i3 = 0; i3 < this.f31196d.size(); i3++) {
            jSONArray.put(this.f31196d.get(i3).f31191b);
        }
        map.put("p_a_apps", jSONArray.toString());
    }
}
