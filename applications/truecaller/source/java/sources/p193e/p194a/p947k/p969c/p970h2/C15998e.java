package p193e.p194a.p947k.p969c.p970h2;

import com.huawei.hms.api.FailedBinderCallBack;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerContext;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17681o2;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.k.c.h2.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/h2/e.class */
public final class C15998e implements AbstractC19549v {

    /* renamed from: a */
    public final VideoPlayerContext f45095a;

    /* renamed from: b */
    public final String f45096b;

    /* renamed from: c */
    public final String f45097c;

    /* renamed from: d */
    public final String f45098d;

    /* renamed from: e */
    public final int f45099e;

    public C15998e(VideoPlayerContext videoPlayerContext, String str, String str2, String str3, int i) {
        l.e(videoPlayerContext, AnalyticsConstants.CONTEXT);
        l.e(str, "videoId");
        l.e(str2, FailedBinderCallBack.CALLER_ID);
        l.e(str3, "reason");
        this.f45095a = videoPlayerContext;
        this.f45096b = str;
        this.f45097c = str2;
        this.f45098d = str3;
        this.f45099e = i;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17681o2.f49955h;
        C17681o2.C17683b c17683b = new C17681o2.C17683b(null);
        String value = this.f45095a.getValue();
        c17683b.validate(c17683b.fields()[4], value);
        c17683b.f49968c = value;
        c17683b.fieldSetFlags()[4] = true;
        String str = this.f45096b;
        c17683b.validate(c17683b.fields()[2], str);
        c17683b.f49966a = str;
        c17683b.fieldSetFlags()[2] = true;
        String str2 = this.f45097c;
        c17683b.validate(c17683b.fields()[3], str2);
        c17683b.f49967b = str2;
        c17683b.fieldSetFlags()[3] = true;
        String str3 = this.f45098d;
        c17683b.validate(c17683b.fields()[5], str3);
        c17683b.f49969d = str3;
        c17683b.fieldSetFlags()[5] = true;
        int i = this.f45099e;
        c17683b.validate(c17683b.fields()[6], Integer.valueOf(i));
        c17683b.f49970e = i;
        c17683b.fieldSetFlags()[6] = true;
        return new AbstractC19580x.C19584d(c17683b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15998e)) {
                return false;
            }
            C15998e c15998e = (C15998e) obj;
            return l.a(this.f45095a, c15998e.f45095a) && l.a(this.f45096b, c15998e.f45096b) && l.a(this.f45097c, c15998e.f45097c) && l.a(this.f45098d, c15998e.f45098d) && this.f45099e == c15998e.f45099e;
        }
        return true;
    }

    public int hashCode() {
        VideoPlayerContext videoPlayerContext = this.f45095a;
        int i = 0;
        int hashCode = videoPlayerContext != null ? videoPlayerContext.hashCode() : 0;
        String str = this.f45096b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f45097c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f45098d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + this.f45099e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoCallerIdNotShownEvent(context=");
        m8728C.append(this.f45095a);
        m8728C.append(", videoId=");
        m8728C.append(this.f45096b);
        m8728C.append(", callId=");
        m8728C.append(this.f45097c);
        m8728C.append(", reason=");
        m8728C.append(this.f45098d);
        m8728C.append(", downloaded=");
        return C22128a.m8697J2(m8728C, this.f45099e, ")");
    }
}
