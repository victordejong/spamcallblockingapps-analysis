package androidx.core.p034d;

import android.util.Base64;
import androidx.core.p036f.C0687f;
import java.util.List;
/* renamed from: androidx.core.d.a */
/* loaded from: classes-dex2jar.jar:androidx/core/d/a.class */
public final class C0648a {

    /* renamed from: a */
    private final String f2911a;

    /* renamed from: b */
    private final String f2912b;

    /* renamed from: c */
    private final String f2913c;

    /* renamed from: d */
    private final List<List<byte[]>> f2914d;

    /* renamed from: e */
    private final int f2915e = 0;

    /* renamed from: f */
    private final String f2916f;

    public C0648a(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f2911a = (String) C0687f.m8549a(str);
        this.f2912b = (String) C0687f.m8549a(str2);
        this.f2913c = (String) C0687f.m8549a(str3);
        this.f2914d = (List) C0687f.m8549a(list);
        this.f2916f = this.f2911a + "-" + this.f2912b + "-" + this.f2913c;
    }

    /* renamed from: a */
    public final String m8608a() {
        return this.f2911a;
    }

    /* renamed from: b */
    public final String m8607b() {
        return this.f2912b;
    }

    /* renamed from: c */
    public final String m8606c() {
        return this.f2913c;
    }

    /* renamed from: d */
    public final List<List<byte[]>> m8605d() {
        return this.f2914d;
    }

    /* renamed from: e */
    public final int m8604e() {
        return this.f2915e;
    }

    /* renamed from: f */
    public final String m8603f() {
        return this.f2916f;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f2911a + ", mProviderPackage: " + this.f2912b + ", mQuery: " + this.f2913c + ", mCertificates:");
        for (int i = 0; i < this.f2914d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f2914d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f2915e);
        return sb.toString();
    }
}
