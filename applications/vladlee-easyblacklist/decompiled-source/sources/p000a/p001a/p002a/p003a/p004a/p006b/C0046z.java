package p000a.p001a.p002a.p003a.p004a.p006b;

import android.content.Context;
import p000a.p001a.p002a.p003a.p004a.p005a.AbstractC0006d;
/* renamed from: a.a.a.a.a.b.z */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/z.class */
final class C0046z implements AbstractC0006d<String> {

    /* renamed from: a */
    final /* synthetic */ C0045y f103a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0046z(C0045y yVar) {
        this.f103a = yVar;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p005a.AbstractC0006d
    public final /* synthetic */ String load(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        String str = installerPackageName;
        if (installerPackageName == null) {
            str = "";
        }
        return str;
    }
}
