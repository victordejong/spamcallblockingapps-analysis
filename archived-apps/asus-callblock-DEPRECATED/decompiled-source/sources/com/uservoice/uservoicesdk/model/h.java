package com.uservoice.uservoicesdk.model;

import com.android.contacts.activities.ContactDetailCallogActivity;
import com.uservoice.uservoicesdk.j.a;
import com.uservoice.uservoicesdk.j.g;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/h.class */
public class h extends d {

    /* renamed from: a  reason: collision with root package name */
    public String f4758a;

    /* renamed from: b  reason: collision with root package name */
    public int f4759b;
    public List<Category> c;
    private int d;

    public static void a(int i, final a<h> aVar) {
        a(a("/forums/%d.json", Integer.valueOf(i)), new g(aVar) { // from class: com.uservoice.uservoicesdk.model.h.1
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.b(jSONObject, "forum", h.class));
            }
        });
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.f4758a = a(jSONObject, ContactDetailCallogActivity.EXTRA_NAME);
        JSONObject jSONObject2 = jSONObject.getJSONArray("topics").getJSONObject(0);
        this.f4759b = jSONObject2.getInt("open_suggestions_count");
        this.d = jSONObject2.getInt("votes_allowed");
        this.c = a(jSONObject2, "categories", Category.class);
        if (this.c == null) {
            this.c = new ArrayList();
        }
    }
}
