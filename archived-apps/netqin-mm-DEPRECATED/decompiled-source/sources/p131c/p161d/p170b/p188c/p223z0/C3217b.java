package p131c.p161d.p170b.p188c.p223z0;

import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.scheduler.Requirements;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import p131c.p161d.p170b.p188c.p189a1.C2685b;
/* renamed from: c.d.b.c.z0.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/z0/b.class */
public final class C3217b {

    /* renamed from: a */
    public final Context f11900a;

    /* renamed from: b */
    public final HandlerC3218a f11901b;

    /* renamed from: c */
    public final C2685b.AbstractC2689d f11902c;

    /* renamed from: d */
    public final CopyOnWriteArraySet<AbstractC3219b> f11903d;

    /* renamed from: e */
    public int f11904e;

    /* renamed from: f */
    public int f11905f;

    /* renamed from: g */
    public boolean f11906g;

    /* renamed from: h */
    public int f11907h;

    /* renamed from: i */
    public List<C3216a> f11908i;

    /* renamed from: j */
    public C2685b f11909j;

    /* renamed from: c.d.b.c.z0.b$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/z0/b$a.class */
    public static final class HandlerC3218a extends Handler {
    }

    /* renamed from: c.d.b.c.z0.b$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/z0/b$b.class */
    public interface AbstractC3219b {
        /* renamed from: a */
        void mo18500a(C3217b bVar, Requirements requirements, int i);
    }

    static {
        new Requirements(1);
    }

    /* renamed from: a */
    public Requirements m27320a() {
        return this.f11909j.m29293b();
    }

    /* renamed from: a */
    public final void m27319a(C2685b bVar, int i) {
        Requirements b = bVar.m29293b();
        Iterator<AbstractC3219b> it = this.f11903d.iterator();
        while (it.hasNext()) {
            it.next().mo18500a(this, b, i);
        }
        if (this.f11907h != i) {
            this.f11907h = i;
            this.f11904e++;
            this.f11901b.obtainMessage(2, i, 0).sendToTarget();
        }
    }

    /* renamed from: a */
    public void m27318a(AbstractC3219b bVar) {
        this.f11903d.add(bVar);
    }

    /* renamed from: a */
    public void m27317a(DownloadRequest downloadRequest, int i) {
        this.f11904e++;
        this.f11901b.obtainMessage(6, i, 0, downloadRequest).sendToTarget();
    }

    /* renamed from: a */
    public void m27316a(Requirements requirements) {
        if (!requirements.equals(this.f11909j.m29293b())) {
            this.f11909j.m29288e();
            C2685b bVar = new C2685b(this.f11900a, this.f11902c, requirements);
            this.f11909j = bVar;
            m27319a(this.f11909j, bVar.m29289d());
        }
    }

    /* renamed from: a */
    public void m27315a(String str) {
        this.f11904e++;
        this.f11901b.obtainMessage(7, str).sendToTarget();
    }

    /* renamed from: a */
    public void m27314a(String str, int i) {
        this.f11904e++;
        this.f11901b.obtainMessage(3, i, 0, str).sendToTarget();
    }

    /* renamed from: b */
    public boolean m27313b() {
        return this.f11905f == 0 && this.f11904e == 0;
    }

    /* renamed from: c */
    public boolean m27312c() {
        if (this.f11906g || this.f11907h == 0) {
            return false;
        }
        for (int i = 0; i < this.f11908i.size(); i++) {
            if (this.f11908i.get(i).f11899a == 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public void m27311d() {
        if (!this.f11906g) {
            this.f11906g = true;
            this.f11904e++;
            this.f11901b.obtainMessage(1, 1, 0).sendToTarget();
        }
    }

    /* renamed from: e */
    public void m27310e() {
        this.f11904e++;
        this.f11901b.obtainMessage(8).sendToTarget();
    }

    /* renamed from: f */
    public void m27309f() {
        if (this.f11906g) {
            this.f11906g = false;
            this.f11904e++;
            this.f11901b.obtainMessage(1, 0, 0).sendToTarget();
        }
    }
}
