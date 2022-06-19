package p193e.p194a.p947k.p971l;

import com.huawei.hms.api.FailedBinderCallBack;
import com.truecaller.videocallerid.data.VideoDetails;
import com.truecaller.videocallerid.data.VideoType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.l.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/l/b.class */
public final class C16120b {

    /* renamed from: a */
    public final String f45427a;

    /* renamed from: b */
    public final String f45428b;

    /* renamed from: c */
    public final long f45429c;

    /* renamed from: d */
    public final String f45430d;

    /* renamed from: e */
    public final VideoDetails f45431e;

    /* renamed from: f */
    public VideoType f45432f;

    public C16120b(String str, String str2, long j, String str3, VideoDetails videoDetails, VideoType videoType, int i) {
        VideoType videoType2 = (i & 32) != 0 ? VideoType.SelfieVideo : null;
        l.e(str, "id");
        l.e(str2, "phoneNumber");
        l.e(str3, FailedBinderCallBack.CALLER_ID);
        l.e(videoDetails, "video");
        l.e(videoType2, "videoType");
        this.f45427a = str;
        this.f45428b = str2;
        this.f45429c = j;
        this.f45430d = str3;
        this.f45431e = videoDetails;
        this.f45432f = videoType2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16120b)) {
                return false;
            }
            C16120b c16120b = (C16120b) obj;
            return l.a(this.f45427a, c16120b.f45427a) && l.a(this.f45428b, c16120b.f45428b) && this.f45429c == c16120b.f45429c && l.a(this.f45430d, c16120b.f45430d) && l.a(this.f45431e, c16120b.f45431e) && l.a(this.f45432f, c16120b.f45432f);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45427a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f45428b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f45429c);
        String str3 = this.f45430d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        VideoDetails videoDetails = this.f45431e;
        int hashCode4 = videoDetails != null ? videoDetails.hashCode() : 0;
        VideoType videoType = this.f45432f;
        if (videoType != null) {
            i = videoType.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("IncomingVideoDetails(id=");
        m8728C.append(this.f45427a);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.f45428b);
        m8728C.append(", receivedAt=");
        m8728C.append(this.f45429c);
        m8728C.append(", callId=");
        m8728C.append(this.f45430d);
        m8728C.append(", video=");
        m8728C.append(this.f45431e);
        m8728C.append(", videoType=");
        m8728C.append(this.f45432f);
        m8728C.append(")");
        return m8728C.toString();
    }
}
