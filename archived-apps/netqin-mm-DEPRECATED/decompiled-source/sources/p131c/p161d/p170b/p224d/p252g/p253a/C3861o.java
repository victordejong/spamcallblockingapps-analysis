package p131c.p161d.p170b.p224d.p252g.p253a;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzabm;
/* renamed from: c.d.b.d.g.a.o */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/o.class */
public final class C3861o extends zzabm {
    /* renamed from: a */
    public static String m26614a(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i2 = 0;
        int length = str.length();
        while (true) {
            i = length;
            if (i2 >= str.length()) {
                break;
            }
            i = length;
            if (str.charAt(i2) != ',') {
                break;
            }
            i2++;
        }
        while (i > 0 && str.charAt(i - 1) == ',') {
            i--;
        }
        if (i < i2) {
            return null;
        }
        return (i2 == 0 && i == str.length()) ? str : str.substring(i2, i);
    }

    @Override // com.google.android.gms.internal.ads.zzabm
    /* renamed from: a */
    public final String mo16893a(String str, String str2) {
        String a = m26614a(str);
        String a2 = m26614a(str2);
        if (TextUtils.isEmpty(a)) {
            return a2;
        }
        if (TextUtils.isEmpty(a2)) {
            return a;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 1 + String.valueOf(a2).length());
        sb.append(a);
        sb.append(",");
        sb.append(a2);
        return sb.toString();
    }
}
