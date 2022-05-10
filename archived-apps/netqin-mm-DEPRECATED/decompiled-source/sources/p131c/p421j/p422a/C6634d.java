package p131c.p421j.p422a;

import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.SdkInitializationListener;
/* renamed from: c.j.a.d */
/* loaded from: classes2-dex2jar.jar:c/j/a/d.class */
public class C6634d implements SdkInitializationListener {

    /* renamed from: a */
    public SdkInitializationListener f20471a;

    /* renamed from: b */
    public int f20472b;

    /* renamed from: c.j.a.d$a */
    /* loaded from: classes2-dex2jar.jar:c/j/a/d$a.class */
    public class RunnableC6635a implements Runnable {
        public RunnableC6635a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C6634d.this.f20471a != null) {
                C6634d.this.f20471a.onInitializationFinished();
                C6634d.this.f20471a = null;
            }
        }
    }

    public C6634d(SdkInitializationListener sdkInitializationListener, int i) {
        Preconditions.checkNotNull(sdkInitializationListener);
        this.f20471a = sdkInitializationListener;
        this.f20472b = i;
    }

    @Override // com.mopub.common.SdkInitializationListener
    public void onInitializationFinished() {
        int i = this.f20472b - 1;
        this.f20472b = i;
        if (i <= 0) {
            new Handler(Looper.getMainLooper()).post(new RunnableC6635a());
        }
    }
}
