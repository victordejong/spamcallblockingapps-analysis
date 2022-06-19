package p193e.p194a.p682e.p684b.p691k;

import android.widget.CompoundButton;
/* renamed from: e.a.e.b.k.q */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/k/q.class */
public final class C12962q implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C12958p f37626a;

    /* renamed from: b */
    public final /* synthetic */ boolean f37627b;

    public C12962q(C12958p c12958p, boolean z) {
        this.f37626a = c12958p;
        this.f37627b = z;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f37626a.m22373OA().mo22321m7(z == this.f37627b);
    }
}
