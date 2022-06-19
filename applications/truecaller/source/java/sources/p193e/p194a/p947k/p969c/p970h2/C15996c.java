package p193e.p194a.p947k.p969c.p970h2;

import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import com.truecaller.videocallerid.utils.analytics.UploadResult;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17769u2;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.k.c.h2.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/h2/c.class */
public final class C15996c implements AbstractC19549v {

    /* renamed from: a */
    public final OnboardingContext f45090a;

    /* renamed from: b */
    public final String f45091b;

    /* renamed from: c */
    public final long f45092c;

    /* renamed from: d */
    public final long f45093d;

    /* renamed from: e */
    public final UploadResult f45094e;

    public C15996c(OnboardingContext onboardingContext, String str, long j, long j2, UploadResult uploadResult) {
        l.e(onboardingContext, "onboardingContext");
        l.e(uploadResult, "uploadResult");
        this.f45090a = onboardingContext;
        this.f45091b = str;
        this.f45092c = j;
        this.f45093d = j2;
        this.f45094e = uploadResult;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17769u2.f50423h;
        C17769u2.C17771b c17771b = new C17769u2.C17771b(null);
        String value = this.f45090a.getValue();
        c17771b.validate(c17771b.fields()[2], value);
        c17771b.f50434a = value;
        c17771b.fieldSetFlags()[2] = true;
        String str = this.f45091b;
        c17771b.validate(c17771b.fields()[6], str);
        c17771b.f50438e = str;
        c17771b.fieldSetFlags()[6] = true;
        int i = (int) this.f45092c;
        c17771b.validate(c17771b.fields()[3], Integer.valueOf(i));
        c17771b.f50435b = i;
        c17771b.fieldSetFlags()[3] = true;
        int i2 = (int) this.f45093d;
        c17771b.validate(c17771b.fields()[4], Integer.valueOf(i2));
        c17771b.f50436c = i2;
        c17771b.fieldSetFlags()[4] = true;
        String value2 = this.f45094e.getValue();
        c17771b.validate(c17771b.fields()[5], value2);
        c17771b.f50437d = value2;
        c17771b.fieldSetFlags()[5] = true;
        return new AbstractC19580x.C19584d(c17771b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15996c)) {
                return false;
            }
            C15996c c15996c = (C15996c) obj;
            return l.a(this.f45090a, c15996c.f45090a) && l.a(this.f45091b, c15996c.f45091b) && this.f45092c == c15996c.f45092c && this.f45093d == c15996c.f45093d && l.a(this.f45094e, c15996c.f45094e);
        }
        return true;
    }

    public int hashCode() {
        OnboardingContext onboardingContext = this.f45090a;
        int i = 0;
        int hashCode = onboardingContext != null ? onboardingContext.hashCode() : 0;
        String str = this.f45091b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f45092c);
        int m34274a2 = C4876d.m34274a(this.f45093d);
        UploadResult uploadResult = this.f45094e;
        if (uploadResult != null) {
            i = uploadResult.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + m34274a2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UploadResultEvent(onboardingContext=");
        m8728C.append(this.f45090a);
        m8728C.append(", videoId=");
        m8728C.append(this.f45091b);
        m8728C.append(", duration=");
        m8728C.append(this.f45092c);
        m8728C.append(", size=");
        m8728C.append(this.f45093d);
        m8728C.append(", uploadResult=");
        m8728C.append(this.f45094e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
