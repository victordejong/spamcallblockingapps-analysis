package p000a.p001a.p002a.p003a.p004a.p006b;

import java.io.InputStream;
import p000a.p001a.p002a.p003a.p004a.p006b.C0008aa;
/* renamed from: a.a.a.a.a.b.ab */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/ab.class */
final class C0012ab implements C0008aa.AbstractC0011c {

    /* renamed from: a */
    boolean f19a = true;

    /* renamed from: b */
    final /* synthetic */ StringBuilder f20b;

    /* renamed from: c */
    final /* synthetic */ C0008aa f21c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0012ab(C0008aa aaVar, StringBuilder sb) {
        this.f21c = aaVar;
        this.f20b = sb;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p006b.C0008aa.AbstractC0011c
    public final void read(InputStream inputStream, int i) {
        if (this.f19a) {
            this.f19a = false;
        } else {
            this.f20b.append(", ");
        }
        this.f20b.append(i);
    }
}
