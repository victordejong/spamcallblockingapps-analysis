package p193e.p194a.p947k.p969c.p970h2;

import com.huawei.hms.api.FailedBinderCallBack;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17724r2;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.k.c.h2.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/h2/g.class */
public final class C16000g implements AbstractC19549v {

    /* renamed from: a */
    public final String f45103a;

    /* renamed from: b */
    public final String f45104b;

    /* renamed from: c */
    public final boolean f45105c;

    /* renamed from: d */
    public final boolean f45106d;

    public C16000g(String str, String str2, boolean z, boolean z2) {
        l.e(str, "videoId");
        l.e(str2, FailedBinderCallBack.CALLER_ID);
        this.f45103a = str;
        this.f45104b = str2;
        this.f45105c = z;
        this.f45106d = z2;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17724r2.f50207h;
        C17724r2.C17726b c17726b = new C17724r2.C17726b(null);
        String str = this.f45103a;
        c17726b.validate(c17726b.fields()[2], str);
        c17726b.f50218a = str;
        c17726b.fieldSetFlags()[2] = true;
        String str2 = this.f45104b;
        c17726b.validate(c17726b.fields()[3], str2);
        c17726b.f50219b = str2;
        c17726b.fieldSetFlags()[3] = true;
        Boolean valueOf = Boolean.valueOf(this.f45106d);
        c17726b.validate(c17726b.fields()[5], valueOf);
        c17726b.f50221d = valueOf;
        c17726b.fieldSetFlags()[5] = true;
        boolean z = this.f45105c;
        c17726b.validate(c17726b.fields()[4], Boolean.valueOf(z));
        c17726b.f50220c = z;
        c17726b.fieldSetFlags()[4] = true;
        return new AbstractC19580x.C19584d(c17726b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16000g)) {
                return false;
            }
            C16000g c16000g = (C16000g) obj;
            return l.a(this.f45103a, c16000g.f45103a) && l.a(this.f45104b, c16000g.f45104b) && this.f45105c == c16000g.f45105c && this.f45106d == c16000g.f45106d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f45103a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f45104b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        boolean z = this.f45105c;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f45106d;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((((hashCode * 31) + i) * 31) + i3) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoCallerIdReceivedEvent(videoId=");
        m8728C.append(this.f45103a);
        m8728C.append(", callId=");
        m8728C.append(this.f45104b);
        m8728C.append(", isCached=");
        m8728C.append(this.f45105c);
        m8728C.append(", isPhonebook=");
        return C22128a.m8590o(m8728C, this.f45106d, ")");
    }
}
