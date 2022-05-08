package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.SharedPreferences;
import org.json.JSONObject;
/* renamed from: h.i.a.e.j.a.y6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/y6.class */
public final class C7469y6 extends AbstractC7409t6<String> {
    public C7469y6(int i, String str, String str2) {
        super(i, str, str2, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7409t6
    /* renamed from: a */
    public final /* synthetic */ String mo20473a(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(m20667a(), m20658c());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7409t6
    /* renamed from: a */
    public final /* synthetic */ String mo20472a(JSONObject jSONObject) {
        return jSONObject.optString(m20667a(), m20658c());
    }
}
