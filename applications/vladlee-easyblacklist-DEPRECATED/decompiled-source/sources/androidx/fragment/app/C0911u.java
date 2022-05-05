package androidx.fragment.app;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.u */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/u.class */
public final class C0911u extends C0895k {

    /* renamed from: a */
    final /* synthetic */ LayoutInflater$Factory2C0898n f3838a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0911u(LayoutInflater$Factory2C0898n nVar) {
        this.f3838a = nVar;
    }

    @Override // androidx.fragment.app.C0895k
    /* renamed from: c */
    public final Fragment mo7618c(ClassLoader classLoader, String str) {
        return Fragment.instantiate(this.f3838a.f3796n.m7740i(), str, null);
    }
}
