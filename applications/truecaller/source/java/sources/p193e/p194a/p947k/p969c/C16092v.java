package p193e.p194a.p947k.p969c;

import com.truecaller.videocallerid.data.VideoDetails;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.c.v */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/v.class */
public final class C16092v {

    /* renamed from: a */
    public final String f45332a;

    /* renamed from: b */
    public final String f45333b;

    /* renamed from: c */
    public final VideoDetails f45334c;

    public C16092v(String str, String str2, VideoDetails videoDetails) {
        l.e(str, "id");
        l.e(str2, "phoneNumber");
        l.e(videoDetails, "videoDetails");
        this.f45332a = str;
        this.f45333b = str2;
        this.f45334c = videoDetails;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16092v)) {
                return false;
            }
            C16092v c16092v = (C16092v) obj;
            return l.a(this.f45332a, c16092v.f45332a) && l.a(this.f45333b, c16092v.f45333b) && l.a(this.f45334c, c16092v.f45334c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45332a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f45333b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        VideoDetails videoDetails = this.f45334c;
        if (videoDetails != null) {
            i = videoDetails.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FetchVideoResult(id=");
        m8728C.append(this.f45332a);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.f45333b);
        m8728C.append(", videoDetails=");
        m8728C.append(this.f45334c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
