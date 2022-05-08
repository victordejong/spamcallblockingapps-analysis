package p081h.p157g.p158a;

import android.os.Build;
import p081h.p157g.p158a.C6160c;
/* renamed from: h.g.a.e */
/* loaded from: classes2-dex2jar.jar:h/g/a/e.class */
public final class C6168e implements C6160c.AbstractC6162b {
    @Override // p081h.p157g.p158a.C6160c.AbstractC6162b
    /* renamed from: a */
    public void mo23652a(String str) {
        System.loadLibrary(str);
    }

    @Override // p081h.p157g.p158a.C6160c.AbstractC6162b
    /* renamed from: a */
    public String[] mo23653a() {
        if (Build.VERSION.SDK_INT >= 21) {
            String[] strArr = Build.SUPPORTED_ABIS;
            if (strArr.length > 0) {
                return strArr;
            }
        }
        return !C6169f.m23648a(Build.CPU_ABI2) ? new String[]{Build.CPU_ABI, Build.CPU_ABI2} : new String[]{Build.CPU_ABI};
    }

    @Override // p081h.p157g.p158a.C6160c.AbstractC6162b
    /* renamed from: b */
    public String mo23651b(String str) {
        return (!str.startsWith("lib") || !str.endsWith(".so")) ? System.mapLibraryName(str) : str;
    }

    @Override // p081h.p157g.p158a.C6160c.AbstractC6162b
    /* renamed from: c */
    public String mo23650c(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // p081h.p157g.p158a.C6160c.AbstractC6162b
    /* renamed from: d */
    public void mo23649d(String str) {
        System.load(str);
    }
}
