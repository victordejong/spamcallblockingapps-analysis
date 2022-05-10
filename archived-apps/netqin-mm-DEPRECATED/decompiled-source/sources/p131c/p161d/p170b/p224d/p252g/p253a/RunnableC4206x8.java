package p131c.p161d.p170b.p224d.p252g.p253a;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbfl;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.util.HashMap;
/* renamed from: c.d.b.d.g.a.x8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/x8.class */
public final class RunnableC4206x8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f15999a;

    /* renamed from: b */
    public final /* synthetic */ String f16000b;

    /* renamed from: c */
    public final /* synthetic */ String f16001c;

    /* renamed from: d */
    public final /* synthetic */ String f16002d;

    /* renamed from: e */
    public final /* synthetic */ zzbfl f16003e;

    public RunnableC4206x8(zzbfl zzbflVar, String str, String str2, String str3, String str4) {
        this.f16003e = zzbflVar;
        this.f15999a = str;
        this.f16000b = str2;
        this.f16001c = str3;
        this.f16002d = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String c;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.f15999a);
        if (!TextUtils.isEmpty(this.f16000b)) {
            hashMap.put("cachedSrc", this.f16000b);
        }
        zzbfl zzbflVar = this.f16003e;
        c = zzbfl.m15660c(this.f16001c);
        hashMap.put("type", c);
        hashMap.put("reason", this.f16001c);
        if (!TextUtils.isEmpty(this.f16002d)) {
            hashMap.put(AvidVideoPlaybackListenerImpl.MESSAGE, this.f16002d);
        }
        this.f16003e.m15661a("onPrecacheEvent", hashMap);
    }
}
