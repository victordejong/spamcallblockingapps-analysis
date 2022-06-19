package p193e.p194a.p372b0.p413i;

import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
/* renamed from: e.a.b0.i.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/b.class */
public abstract class AbstractC8449b extends ContentObserver {

    /* renamed from: a */
    public final Handler f26154a;

    /* renamed from: b */
    public long f26155b;

    /* renamed from: c */
    public final Runnable f26156c;

    /* renamed from: e.a.b0.i.b$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/b$a.class */
    public class RunnableC8450a implements Runnable {
        public RunnableC8450a() {
            AbstractC8449b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC8449b.this.mo9046a();
        }
    }

    public AbstractC8449b(Handler handler, long j) {
        super(handler);
        this.f26154a = handler == null ? new Handler(Looper.getMainLooper()) : handler;
        this.f26155b = j;
        this.f26156c = new RunnableC8450a();
    }

    /* renamed from: a */
    public abstract void mo9046a();

    /* renamed from: b */
    public void m28533b(long j) {
        this.f26154a.removeCallbacks(this.f26156c);
        if (j == 0) {
            mo9046a();
        } else {
            this.f26154a.postDelayed(this.f26156c, j);
        }
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        m28533b(this.f26155b);
    }
}
