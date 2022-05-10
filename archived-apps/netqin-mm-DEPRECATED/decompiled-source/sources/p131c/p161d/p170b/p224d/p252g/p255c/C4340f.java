package p131c.p161d.p170b.p224d.p252g.p255c;

import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.internal.clearcut.zzae;
import com.google.android.gms.internal.clearcut.zzao;
import com.google.android.gms.internal.clearcut.zzy;
/* renamed from: c.d.b.d.g.c.f */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/f.class */
public final class C4340f extends zzae<Boolean> {
    public C4340f(zzao zzaoVar, String str, Boolean bool) {
        super(zzaoVar, str, bool, null);
    }

    @Override // com.google.android.gms.internal.clearcut.zzae
    /* renamed from: a */
    public final /* synthetic */ Boolean mo10856a(String str) {
        if (zzy.f29343c.matcher(str).matches()) {
            return true;
        }
        if (zzy.f29344d.matcher(str).matches()) {
            return false;
        }
        String str2 = this.f29215b;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 28 + String.valueOf(str).length());
        sb.append("Invalid boolean value for ");
        sb.append(str2);
        sb.append(": ");
        sb.append(str);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }

    /* renamed from: b */
    public final Boolean mo10861a(SharedPreferences sharedPreferences) {
        try {
            return Boolean.valueOf(sharedPreferences.getBoolean(this.f29215b, false));
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.f29215b);
            Log.e("PhenotypeFlag", valueOf.length() != 0 ? "Invalid boolean value in SharedPreferences for ".concat(valueOf) : new String("Invalid boolean value in SharedPreferences for "), e);
            return null;
        }
    }
}
