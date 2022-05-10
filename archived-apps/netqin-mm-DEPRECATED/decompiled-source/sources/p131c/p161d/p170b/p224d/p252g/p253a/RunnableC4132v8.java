package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbfl;
import java.util.HashMap;
/* renamed from: c.d.b.d.g.a.v8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v8.class */
public final class RunnableC4132v8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f15704a;

    /* renamed from: b */
    public final /* synthetic */ String f15705b;

    /* renamed from: c */
    public final /* synthetic */ long f15706c;

    /* renamed from: d */
    public final /* synthetic */ zzbfl f15707d;

    public RunnableC4132v8(zzbfl zzbflVar, String str, String str2, long j) {
        this.f15707d = zzbflVar;
        this.f15704a = str;
        this.f15705b = str2;
        this.f15706c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f15704a);
        hashMap.put("cachedSrc", this.f15705b);
        hashMap.put("totalDuration", Long.toString(this.f15706c));
        this.f15707d.m15661a("onPrecacheEvent", hashMap);
    }
}
