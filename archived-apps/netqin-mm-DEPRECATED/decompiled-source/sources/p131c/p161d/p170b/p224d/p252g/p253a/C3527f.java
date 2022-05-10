package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzaaq;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.f */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/f.class */
public final class C3527f extends zzaaq<String> {
    public C3527f(int i, String str, String str2) {
        super(i, str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ String mo16934a(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(m16942a(), m16930c());
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ String mo16933a(Bundle bundle) {
        String valueOf = String.valueOf(m16942a());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return m16930c();
        }
        String valueOf2 = String.valueOf(m16942a());
        return bundle.getString(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag."));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ String mo16932a(JSONObject jSONObject) {
        return jSONObject.optString(m16942a(), m16930c());
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ void mo16935a(SharedPreferences.Editor editor, String str) {
        editor.putString(m16942a(), str);
    }
}
