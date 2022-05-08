package com.aotter.net.trek.network;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.aotter.net.volley.Request;
/* renamed from: com.aotter.net.trek.network.g */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/g.class */
public class C1761g {

    /* renamed from: a */
    public final int f1574a;
    @NonNull

    /* renamed from: b */
    public final Handler f1575b;
    @NonNull

    /* renamed from: c */
    public final Runnable f1576c;

    /* renamed from: d */
    public final /* synthetic */ TrekRequestQueue f1577d;

    public C1761g(TrekRequestQueue trekRequestQueue, @NonNull Request<?> request, int i) {
        this(trekRequestQueue, request, i, new Handler());
    }

    @VisibleForTesting
    public C1761g(TrekRequestQueue trekRequestQueue, @NonNull Request<?> request, int i, @NonNull Handler handler) {
        this.f1577d = trekRequestQueue;
        this.f1574a = i;
        this.f1575b = handler;
        this.f1576c = new RunnableC1762h(this, trekRequestQueue, request);
    }

    /* renamed from: a */
    public void m36330a() {
        this.f1575b.postDelayed(this.f1576c, this.f1574a);
    }

    /* renamed from: b */
    public void m36329b() {
        this.f1575b.removeCallbacks(this.f1576c);
    }
}
