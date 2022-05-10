package p131c.p161d.p282e.p289l.p290d.p293h;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import p131c.p161d.p282e.p289l.p290d.p308r.AbstractC5453b;
/* renamed from: c.d.e.l.d.h.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/b.class */
public class C5212b {

    /* renamed from: a */
    public final String f17888a;

    /* renamed from: b */
    public final String f17889b;

    /* renamed from: c */
    public final String f17890c;

    /* renamed from: d */
    public final String f17891d;

    /* renamed from: e */
    public final String f17892e;

    /* renamed from: f */
    public final String f17893f;

    /* renamed from: g */
    public final AbstractC5453b f17894g;

    public C5212b(String str, String str2, String str3, String str4, String str5, String str6, AbstractC5453b bVar) {
        this.f17888a = str;
        this.f17889b = str2;
        this.f17890c = str3;
        this.f17891d = str4;
        this.f17892e = str5;
        this.f17893f = str6;
        this.f17894g = bVar;
    }

    /* renamed from: a */
    public static C5212b m24272a(Context context, C5286u uVar, String str, String str2, AbstractC5453b bVar) throws PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        String c = uVar.m24056c();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String num = Integer.toString(packageInfo.versionCode);
        String str3 = packageInfo.versionName;
        String str4 = str3;
        if (str3 == null) {
            str4 = "0.0";
        }
        return new C5212b(str, str2, c, packageName, num, str4, bVar);
    }
}
