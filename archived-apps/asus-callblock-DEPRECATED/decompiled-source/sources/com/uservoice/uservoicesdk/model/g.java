package com.uservoice.uservoicesdk.model;

import com.android.contacts.activities.ContactDetailCallogActivity;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/g.class */
public class g extends d {

    /* renamed from: a  reason: collision with root package name */
    public String f4756a;

    /* renamed from: b  reason: collision with root package name */
    public List<String> f4757b;
    public List<Integer> c;
    public boolean d;

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.f4756a = a(jSONObject, ContactDetailCallogActivity.EXTRA_NAME);
        this.d = !jSONObject.getBoolean("allow_blank");
        this.f4757b = new ArrayList();
        this.c = new ArrayList();
        if (jSONObject.has("possible_values")) {
            JSONArray jSONArray = jSONObject.getJSONArray("possible_values");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                this.f4757b.add(a(jSONObject2, "value"));
                this.c.add(Integer.valueOf(jSONObject2.getInt("id")));
            }
        }
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void b(JSONObject jSONObject) {
        super.b(jSONObject);
        jSONObject.put(ContactDetailCallogActivity.EXTRA_NAME, this.f4756a);
        jSONObject.put("allow_blank", !this.d);
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < this.f4757b.size(); i++) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("value", this.f4757b.get(i));
            jSONObject2.put("id", this.c.get(i));
            jSONArray.put(jSONObject2);
        }
        jSONObject.put("possible_values", jSONArray);
    }
}
