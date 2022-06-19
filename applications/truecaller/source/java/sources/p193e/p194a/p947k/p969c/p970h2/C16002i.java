package p193e.p194a.p947k.p969c.p970h2;

import com.huawei.hms.api.FailedBinderCallBack;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerContext;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17754t2;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.k.c.h2.i */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/h2/i.class */
public final class C16002i implements AbstractC19549v {

    /* renamed from: a */
    public final VideoPlayerContext f45110a;

    /* renamed from: b */
    public final String f45111b;

    /* renamed from: c */
    public final String f45112c;

    /* renamed from: d */
    public final int f45113d;

    public C16002i(VideoPlayerContext videoPlayerContext, String str, String str2, int i) {
        l.e(videoPlayerContext, AnalyticsConstants.CONTEXT);
        l.e(str, "videoId");
        l.e(str2, FailedBinderCallBack.CALLER_ID);
        this.f45110a = videoPlayerContext;
        this.f45111b = str;
        this.f45112c = str2;
        this.f45113d = i;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17754t2.f50332g;
        C17754t2.C17756b c17756b = new C17754t2.C17756b(null);
        String str = this.f45111b;
        c17756b.validate(c17756b.fields()[2], str);
        c17756b.f50342a = str;
        c17756b.fieldSetFlags()[2] = true;
        String str2 = this.f45112c;
        c17756b.validate(c17756b.fields()[3], str2);
        c17756b.f50343b = str2;
        c17756b.fieldSetFlags()[3] = true;
        String value = this.f45110a.getValue();
        c17756b.validate(c17756b.fields()[4], value);
        c17756b.f50344c = value;
        c17756b.fieldSetFlags()[4] = true;
        int i = this.f45113d;
        c17756b.validate(c17756b.fields()[5], Integer.valueOf(i));
        c17756b.f50345d = i;
        c17756b.fieldSetFlags()[5] = true;
        return new AbstractC19580x.C19584d(c17756b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16002i)) {
                return false;
            }
            C16002i c16002i = (C16002i) obj;
            return l.a(this.f45110a, c16002i.f45110a) && l.a(this.f45111b, c16002i.f45111b) && l.a(this.f45112c, c16002i.f45112c) && this.f45113d == c16002i.f45113d;
        }
        return true;
    }

    public int hashCode() {
        VideoPlayerContext videoPlayerContext = this.f45110a;
        int i = 0;
        int hashCode = videoPlayerContext != null ? videoPlayerContext.hashCode() : 0;
        String str = this.f45111b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f45112c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + this.f45113d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoCallerIdShownEvent(context=");
        m8728C.append(this.f45110a);
        m8728C.append(", videoId=");
        m8728C.append(this.f45111b);
        m8728C.append(", callId=");
        m8728C.append(this.f45112c);
        m8728C.append(", cachePercentage=");
        return C22128a.m8697J2(m8728C, this.f45113d, ")");
    }
}
