package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzaaq;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.c */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/c.class */
public final class C3415c extends zzaaq<Boolean> {
    public C3415c(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Boolean mo16934a(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(m16942a(), m16930c().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Boolean mo16933a(Bundle bundle) {
        String valueOf = String.valueOf(m16942a());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return m16930c();
        }
        String valueOf2 = String.valueOf(m16942a());
        return Boolean.valueOf(bundle.getBoolean(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Boolean mo16932a(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(m16942a(), m16930c().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ void mo16935a(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(m16942a(), bool.booleanValue());
    }
}
