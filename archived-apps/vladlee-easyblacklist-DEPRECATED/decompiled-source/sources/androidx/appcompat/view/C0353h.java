package androidx.appcompat.view;

import android.view.animation.Interpolator;
import androidx.core.p037g.AbstractC0716ad;
import androidx.core.p037g.C0712aa;
import androidx.core.p037g.C0717ae;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.appcompat.view.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/h.class */
public final class C0353h {

    /* renamed from: b */
    AbstractC0716ad f1514b;

    /* renamed from: d */
    private Interpolator f1516d;

    /* renamed from: e */
    private boolean f1517e;

    /* renamed from: c */
    private long f1515c = -1;

    /* renamed from: f */
    private final C0717ae f1518f = new C0354i(this);

    /* renamed from: a */
    final ArrayList<C0712aa> f1513a = new ArrayList<>();

    /* renamed from: a */
    public final C0353h m9664a(Interpolator interpolator) {
        if (!this.f1517e) {
            this.f1516d = interpolator;
        }
        return this;
    }

    /* renamed from: a */
    public final C0353h m9663a(C0712aa aaVar) {
        if (!this.f1517e) {
            this.f1513a.add(aaVar);
        }
        return this;
    }

    /* renamed from: a */
    public final C0353h m9662a(C0712aa aaVar, C0712aa aaVar2) {
        this.f1513a.add(aaVar);
        aaVar2.m8444b(aaVar.m8453a());
        this.f1513a.add(aaVar2);
        return this;
    }

    /* renamed from: a */
    public final C0353h m9661a(AbstractC0716ad adVar) {
        if (!this.f1517e) {
            this.f1514b = adVar;
        }
        return this;
    }

    /* renamed from: a */
    public final void m9665a() {
        if (!this.f1517e) {
            Iterator<C0712aa> it = this.f1513a.iterator();
            while (it.hasNext()) {
                C0712aa next = it.next();
                long j = this.f1515c;
                if (j >= 0) {
                    next.m8451a(j);
                }
                Interpolator interpolator = this.f1516d;
                if (interpolator != null) {
                    next.m8449a(interpolator);
                }
                if (this.f1514b != null) {
                    next.m8448a(this.f1518f);
                }
                next.m8443c();
            }
            this.f1517e = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m9660b() {
        this.f1517e = false;
    }

    /* renamed from: c */
    public final void m9659c() {
        if (this.f1517e) {
            Iterator<C0712aa> it = this.f1513a.iterator();
            while (it.hasNext()) {
                it.next().m8446b();
            }
            this.f1517e = false;
        }
    }

    /* renamed from: d */
    public final C0353h m9658d() {
        if (!this.f1517e) {
            this.f1515c = 250L;
        }
        return this;
    }
}
