package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbfl;
import java.util.HashMap;
/* renamed from: c.d.b.d.g.a.u8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/u8.class */
public final class RunnableC4095u8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f15457a;

    /* renamed from: b */
    public final /* synthetic */ String f15458b;

    /* renamed from: c */
    public final /* synthetic */ long f15459c;

    /* renamed from: d */
    public final /* synthetic */ long f15460d;

    /* renamed from: e */
    public final /* synthetic */ boolean f15461e;

    /* renamed from: f */
    public final /* synthetic */ int f15462f;

    /* renamed from: g */
    public final /* synthetic */ int f15463g;

    /* renamed from: h */
    public final /* synthetic */ zzbfl f15464h;

    public RunnableC4095u8(zzbfl zzbflVar, String str, String str2, long j, long j2, boolean z, int i, int i2) {
        this.f15464h = zzbflVar;
        this.f15457a = str;
        this.f15458b = str2;
        this.f15459c = j;
        this.f15460d = j2;
        this.f15461e = z;
        this.f15462f = i;
        this.f15463g = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f15457a);
        hashMap.put("cachedSrc", this.f15458b);
        hashMap.put("bufferedDuration", Long.toString(this.f15459c));
        hashMap.put("totalDuration", Long.toString(this.f15460d));
        hashMap.put("cacheReady", this.f15461e ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.f15462f));
        hashMap.put("playerPreparedCount", Integer.toString(this.f15463g));
        this.f15464h.m15661a("onPrecacheEvent", hashMap);
    }
}
