package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzaaq;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.d */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/d.class */
public final class C3453d extends zzaaq<Long> {
    public C3453d(int i, String str, Long l) {
        super(1, str, l, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Long mo16934a(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(m16942a(), m16930c().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Long mo16933a(Bundle bundle) {
        String valueOf = String.valueOf(m16942a());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return m16930c();
        }
        String valueOf2 = String.valueOf(m16942a());
        return Long.valueOf(bundle.getLong(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ Long mo16932a(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(m16942a(), m16930c().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    /* renamed from: a */
    public final /* synthetic */ void mo16935a(SharedPreferences.Editor editor, Long l) {
        editor.putLong(m16942a(), l.longValue());
    }
}
