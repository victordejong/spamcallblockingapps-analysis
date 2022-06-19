package p193e.p194a.p437c.p438a.p480j.p486e;

import android.widget.CompoundButton;
import p193e.p194a.p437c.p438a.p480j.p482b.C9134c;
import s1.z.b.p;
/* renamed from: e.a.c.a.j.e.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/d.class */
public final class C9174d implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C9134c f27909a;

    /* renamed from: b */
    public final /* synthetic */ p f27910b;

    public C9174d(C9134c c9134c, p pVar) {
        this.f27909a = c9134c;
        this.f27910b = pVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f27910b.k(this.f27909a.f27835b, Boolean.valueOf(z));
    }
}
