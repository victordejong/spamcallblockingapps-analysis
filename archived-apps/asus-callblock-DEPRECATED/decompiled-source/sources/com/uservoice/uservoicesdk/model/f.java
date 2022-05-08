package com.uservoice.uservoicesdk.model;

import com.android.contacts.activities.ContactDetailCallogActivity;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.j.g;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/f.class */
public class f extends d {

    /* renamed from: a  reason: collision with root package name */
    public String f4750a;

    /* renamed from: b  reason: collision with root package name */
    public String f4751b;
    public Date c;
    private String d;

    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/f$a.class */
    public interface a {
        void a(int i);
    }

    public static void a(Suggestion suggestion, int i, final com.uservoice.uservoicesdk.j.a<List<f>> aVar, final a aVar2) {
        HashMap hashMap = new HashMap();
        hashMap.put("page", String.valueOf(i));
        a(a("/forums/%d/suggestions/%d/comments.json", Integer.valueOf(suggestion.o), Integer.valueOf(suggestion.c())), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.f.1
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar2.a(jSONObject.getJSONObject("response_data").getInt("total_records"));
                aVar.a((com.uservoice.uservoicesdk.j.a) d.a(jSONObject, "comments", f.class));
            }
        });
    }

    public static void a(final Suggestion suggestion, String str, final com.uservoice.uservoicesdk.j.a<f> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("comment[text]", str);
        b(a("/forums/%d/suggestions/%d/comments.json", Integer.valueOf(suggestion.o), Integer.valueOf(suggestion.c())), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.f.2
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.COMMENT_IDEA, suggestion.c());
                aVar.a((com.uservoice.uservoicesdk.j.a) d.b(jSONObject, "comment", f.class));
            }
        });
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.f4750a = a(jSONObject, "formatted_text");
        JSONObject jSONObject2 = jSONObject.getJSONObject("creator");
        this.f4751b = a(jSONObject2, ContactDetailCallogActivity.EXTRA_NAME);
        this.d = a(jSONObject2, "avatar_url");
        this.c = b(jSONObject, "created_at");
    }
}
