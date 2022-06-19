package p193e.p194a.p947k.p968b;

import com.google.android.material.slider.Slider;
import e.m.a.g.v.a;
import p193e.p194a.p947k.p969c.AbstractC16015i1;
import s1.z.c.l;
/* renamed from: e.a.k.b.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/e.class */
public final class C15930e implements a {

    /* renamed from: a */
    public final /* synthetic */ C15918a f44921a;

    public C15930e(C15918a c15918a, int i) {
        this.f44921a = c15918a;
    }

    /* renamed from: a */
    public void m18126a(Object obj, float f, boolean z) {
        l.e((Slider) obj, "<anonymous parameter 0>");
        if (!z) {
            return;
        }
        AbstractC16015i1 abstractC16015i1 = this.f44921a.f44902h;
        if (abstractC16015i1 == null) {
            l.l("settings");
            throw null;
        }
        abstractC16015i1.putInt("debugVideoDownloadPercentage", (int) f);
        this.f44921a.m18142SA();
    }
}
