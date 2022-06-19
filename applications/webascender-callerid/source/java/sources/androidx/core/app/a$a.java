package androidx.core.app;

import android.app.Activity;
import android.content.pm.PackageManager;
/* loaded from: classes-dex2jar.jar:androidx/core/app/a$a.class */
class a$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ String[] f1196f;

    /* renamed from: g */
    final /* synthetic */ Activity f1197g;

    /* renamed from: h */
    final /* synthetic */ int f1198h;

    a$a(String[] strArr, Activity activity, int i) {
        this.f1196f = strArr;
        this.f1197g = activity;
        this.f1198h = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        int[] iArr = new int[this.f1196f.length];
        PackageManager packageManager = this.f1197g.getPackageManager();
        String packageName = this.f1197g.getPackageName();
        int length = this.f1196f.length;
        for (int i = 0; i < length; i++) {
            iArr[i] = packageManager.checkPermission(this.f1196f[i], packageName);
        }
        ((a$b) this.f1197g).onRequestPermissionsResult(this.f1198h, this.f1196f, iArr);
    }
}
