package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbfl;
import java.util.HashMap;
/* renamed from: c.d.b.d.g.a.w8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/w8.class */
public final class RunnableC4169w8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f15918a;

    /* renamed from: b */
    public final /* synthetic */ String f15919b;

    /* renamed from: c */
    public final /* synthetic */ int f15920c;

    /* renamed from: d */
    public final /* synthetic */ zzbfl f15921d;

    public RunnableC4169w8(zzbfl zzbflVar, String str, String str2, int i) {
        this.f15921d = zzbflVar;
        this.f15918a = str;
        this.f15919b = str2;
        this.f15920c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f15918a);
        hashMap.put("cachedSrc", this.f15919b);
        hashMap.put("totalBytes", Integer.toString(this.f15920c));
        this.f15921d.m15661a("onPrecacheEvent", hashMap);
    }
}
