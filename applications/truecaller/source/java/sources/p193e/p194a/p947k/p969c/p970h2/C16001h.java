package p193e.p194a.p947k.p969c.p970h2;

import com.huawei.hms.api.FailedBinderCallBack;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17739s2;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.k.c.h2.h */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/h2/h.class */
public final class C16001h implements AbstractC19549v {

    /* renamed from: a */
    public final String f45107a;

    /* renamed from: b */
    public final String f45108b;

    /* renamed from: c */
    public final int f45109c;

    public C16001h(String str, String str2, int i) {
        l.e(str, "videoId");
        l.e(str2, FailedBinderCallBack.CALLER_ID);
        this.f45107a = str;
        this.f45108b = str2;
        this.f45109c = i;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17739s2.f50278f;
        C17739s2.C17741b c17741b = new C17739s2.C17741b(null);
        String str = this.f45107a;
        c17741b.validate(c17741b.fields()[2], str);
        c17741b.f50287a = str;
        c17741b.fieldSetFlags()[2] = true;
        String str2 = this.f45108b;
        c17741b.validate(c17741b.fields()[3], str2);
        c17741b.f50288b = str2;
        c17741b.fieldSetFlags()[3] = true;
        Integer valueOf = Integer.valueOf(this.f45109c);
        c17741b.validate(c17741b.fields()[4], valueOf);
        c17741b.f50289c = valueOf;
        c17741b.fieldSetFlags()[4] = true;
        return new AbstractC19580x.C19584d(c17741b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16001h)) {
                return false;
            }
            C16001h c16001h = (C16001h) obj;
            return l.a(this.f45107a, c16001h.f45107a) && l.a(this.f45108b, c16001h.f45108b) && this.f45109c == c16001h.f45109c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45107a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f45108b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + this.f45109c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoCallerIdSentEvent(videoId=");
        m8728C.append(this.f45107a);
        m8728C.append(", callId=");
        m8728C.append(this.f45108b);
        m8728C.append(", presenceVersion=");
        return C22128a.m8697J2(m8728C, this.f45109c, ")");
    }
}
