package p193e.p194a.p937j4.p938a;

import android.os.AsyncTask;
/* renamed from: e.a.j4.a.c */
/* loaded from: classes11-dex2jar.jar:e/a/j4/a/c.class */
public class RunnableC15560c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f44020a;

    /* renamed from: b */
    public final /* synthetic */ AsyncTask f44021b;

    /* renamed from: c */
    public final /* synthetic */ Object[] f44022c;

    public RunnableC15560c(boolean z, AsyncTask asyncTask, Object[] objArr) {
        this.f44020a = z;
        this.f44021b = asyncTask;
        this.f44022c = objArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f44020a) {
            AbstractC15558b.m18689a(this.f44021b, this.f44022c);
        } else {
            AbstractC15558b.m18688b(this.f44021b, this.f44022c);
        }
    }
}
