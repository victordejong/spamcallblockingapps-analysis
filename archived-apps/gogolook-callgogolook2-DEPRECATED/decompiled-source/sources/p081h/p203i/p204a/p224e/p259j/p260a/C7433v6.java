package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.SharedPreferences;
import org.json.JSONObject;
/* renamed from: h.i.a.e.j.a.v6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/v6.class */
public final class C7433v6 extends AbstractC7409t6<Integer> {
    public C7433v6(int i, String str, Integer num) {
        super(i, str, num, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7409t6
    /* renamed from: a */
    public final /* synthetic */ Integer mo20473a(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(m20667a(), m20658c().intValue()));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7409t6
    /* renamed from: a */
    public final /* synthetic */ Integer mo20472a(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(m20667a(), m20658c().intValue()));
    }
}
