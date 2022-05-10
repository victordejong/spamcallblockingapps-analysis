package p131c.p161d.p282e.p285j.p286a.p287c;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashSet;
import java.util.Set;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
/* renamed from: c.d.e.j.a.c.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/j/a/c/c.class */
public final class C5151c implements AbstractC5149a {

    /* renamed from: a */
    public Set<String> f17780a = new HashSet();

    /* renamed from: b */
    public AbstractC5143a.AbstractC5145b f17781b;

    /* renamed from: c */
    public AppMeasurementSdk f17782c;

    /* renamed from: d */
    public C5154f f17783d;

    public C5151c(AppMeasurementSdk appMeasurementSdk, AbstractC5143a.AbstractC5145b bVar) {
        this.f17781b = bVar;
        this.f17782c = appMeasurementSdk;
        C5154f fVar = new C5154f(this);
        this.f17783d = fVar;
        this.f17782c.m9385a(fVar);
    }

    @Override // p131c.p161d.p282e.p285j.p286a.p287c.AbstractC5149a
    /* renamed from: a */
    public final void mo24399a(Set<String> set) {
        this.f17780a.clear();
        Set<String> set2 = this.f17780a;
        HashSet hashSet = new HashSet();
        for (String str : set) {
            if (hashSet.size() >= 50) {
                break;
            } else if (C5152d.m24403d(str) && C5152d.m24404c(str)) {
                hashSet.add(C5152d.m24401f(str));
            }
        }
        set2.addAll(hashSet);
    }
}
