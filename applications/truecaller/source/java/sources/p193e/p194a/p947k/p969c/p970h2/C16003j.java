package p193e.p194a.p947k.p969c.p970h2;

import android.os.Bundle;
import com.huawei.hms.api.FailedBinderCallBack;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerContext;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.k.c.h2.j */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/h2/j.class */
public final class C16003j implements AbstractC19549v {

    /* renamed from: a */
    public final VideoPlayerContext f45114a;

    /* renamed from: b */
    public final String f45115b;

    /* renamed from: c */
    public final String f45116c;

    /* renamed from: d */
    public final String f45117d;

    /* renamed from: e */
    public final int f45118e;

    /* renamed from: f */
    public final String f45119f;

    public C16003j(VideoPlayerContext videoPlayerContext, String str, String str2, String str3, int i, String str4) {
        l.e(videoPlayerContext, AnalyticsConstants.CONTEXT);
        l.e(str, "videoId");
        l.e(str2, FailedBinderCallBack.CALLER_ID);
        l.e(str3, "reason");
        l.e(str4, "exceptionMessage");
        this.f45114a = videoPlayerContext;
        this.f45115b = str;
        this.f45116c = str2;
        this.f45117d = str3;
        this.f45118e = i;
        this.f45119f = str4;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("videoId", this.f45115b);
        bundle.putString(FailedBinderCallBack.CALLER_ID, this.f45116c);
        bundle.putString(AnalyticsConstants.CONTEXT, this.f45114a.getValue());
        bundle.putString("reason", this.f45117d);
        bundle.putInt("downloaded", this.f45118e);
        return C22128a.m8588o1(bundle, "exceptionMessage", this.f45119f, "AppVideoCallerIdShownFailed", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16003j)) {
                return false;
            }
            C16003j c16003j = (C16003j) obj;
            return l.a(this.f45114a, c16003j.f45114a) && l.a(this.f45115b, c16003j.f45115b) && l.a(this.f45116c, c16003j.f45116c) && l.a(this.f45117d, c16003j.f45117d) && this.f45118e == c16003j.f45118e && l.a(this.f45119f, c16003j.f45119f);
        }
        return true;
    }

    public int hashCode() {
        VideoPlayerContext videoPlayerContext = this.f45114a;
        int i = 0;
        int hashCode = videoPlayerContext != null ? videoPlayerContext.hashCode() : 0;
        String str = this.f45115b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f45116c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f45117d;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        int i2 = this.f45118e;
        String str4 = this.f45119f;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoCallerIdShownFailedEvent(context=");
        m8728C.append(this.f45114a);
        m8728C.append(", videoId=");
        m8728C.append(this.f45115b);
        m8728C.append(", callId=");
        m8728C.append(this.f45116c);
        m8728C.append(", reason=");
        m8728C.append(this.f45117d);
        m8728C.append(", downloaded=");
        m8728C.append(this.f45118e);
        m8728C.append(", exceptionMessage=");
        return C22128a.m8618h(m8728C, this.f45119f, ")");
    }
}
