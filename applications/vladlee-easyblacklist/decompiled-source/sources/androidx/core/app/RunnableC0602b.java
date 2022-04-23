package androidx.core.app;

import android.app.Activity;
import android.content.pm.PackageManager;
import androidx.core.app.C0598a;
/* renamed from: androidx.core.app.b */
/* loaded from: classes-dex2jar.jar:androidx/core/app/b.class */
final class RunnableC0602b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String[] f2780a;

    /* renamed from: b */
    final /* synthetic */ Activity f2781b;

    /* renamed from: c */
    final /* synthetic */ int f2782c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0602b(String[] strArr, Activity activity, int i) {
        this.f2780a = strArr;
        this.f2781b = activity;
        this.f2782c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int[] iArr = new int[this.f2780a.length];
        PackageManager packageManager = this.f2781b.getPackageManager();
        String packageName = this.f2781b.getPackageName();
        int length = this.f2780a.length;
        for (int i = 0; i < length; i++) {
            iArr[i] = packageManager.checkPermission(this.f2780a[i], packageName);
        }
        ((C0598a.AbstractC0599a) this.f2781b).onRequestPermissionsResult(this.f2782c, this.f2780a, iArr);
    }
}
