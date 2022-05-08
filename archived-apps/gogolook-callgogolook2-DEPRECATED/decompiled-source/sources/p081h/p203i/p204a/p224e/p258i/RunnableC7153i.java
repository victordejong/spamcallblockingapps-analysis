package p081h.p203i.p204a.p224e.p258i;

import android.content.Intent;
import com.google.android.gms.iid.zze;
/* renamed from: h.i.a.e.i.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/i/i.class */
public final class RunnableC7153i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Intent f17254a;

    /* renamed from: b */
    public final /* synthetic */ Intent f17255b;

    /* renamed from: c */
    public final /* synthetic */ zze f17256c;

    public RunnableC7153i(zze zzeVar, Intent intent, Intent intent2) {
        this.f17256c = zzeVar;
        this.f17254a = intent;
        this.f17255b = intent2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17256c.handleIntent(this.f17254a);
        this.f17256c.m31856a(this.f17255b);
    }
}
