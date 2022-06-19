package p193e.p194a.p947k;

import com.mopub.mobileads.AdData;
import s1.o;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.k.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/e.class */
public final class C16108e extends m implements l<o<? extends Long, ? extends String, ? extends String>, Boolean> {

    /* renamed from: b */
    public final /* synthetic */ long f45376b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16108e(long j) {
        super(1);
        this.f45376b = j;
    }

    /* renamed from: d */
    public Object m17877d(Object obj) {
        o oVar = (o) obj;
        s1.z.c.l.e(oVar, "it");
        return Boolean.valueOf(this.f45376b - ((Number) oVar.a).longValue() > ((long) AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS));
    }
}
