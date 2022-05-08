package p000a.p001a.p002a.p003a.p004a.p011f;

import android.content.Context;
import java.io.File;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.C0137d;
/* renamed from: a.a.a.a.a.f.b */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/f/b.class */
public final class C0106b implements AbstractC0105a {

    /* renamed from: a */
    private final Context f203a;

    /* renamed from: b */
    private final String f204b;

    /* renamed from: c */
    private final String f205c;

    public C0106b(AbstractC0147l lVar) {
        if (lVar.getContext() != null) {
            this.f203a = lVar.getContext();
            this.f204b = lVar.getPath();
            this.f205c = "Android/" + this.f203a.getPackageName();
            return;
        }
        throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p011f.AbstractC0105a
    /* renamed from: a */
    public final File mo10191a() {
        File filesDir = this.f203a.getFilesDir();
        if (filesDir == null) {
            C0137d.m10155c().mo10135a("Fabric", "Null File");
            return null;
        } else if (filesDir.exists() || filesDir.mkdirs()) {
            return filesDir;
        } else {
            C0137d.m10155c().mo10129d("Fabric", "Couldn't create file");
            return null;
        }
    }
}
