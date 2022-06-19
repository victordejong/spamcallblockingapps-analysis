package p193e.p194a.p947k.p969c.p970h2;

import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17709q2;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.k.c.h2.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/h2/b.class */
public final class C15995b implements AbstractC19549v {

    /* renamed from: a */
    public final OnboardingContext f45088a;

    /* renamed from: b */
    public final String f45089b;

    public C15995b(OnboardingContext onboardingContext, String str) {
        l.e(onboardingContext, "onboardingContext");
        this.f45088a = onboardingContext;
        this.f45089b = str;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17709q2.f50121e;
        C17709q2.C17711b c17711b = new C17709q2.C17711b(null);
        String value = this.f45088a.getValue();
        c17711b.validate(c17711b.fields()[2], value);
        c17711b.f50129a = value;
        c17711b.fieldSetFlags()[2] = true;
        String str = this.f45089b;
        c17711b.validate(c17711b.fields()[3], str);
        c17711b.f50130b = str;
        c17711b.fieldSetFlags()[3] = true;
        return new AbstractC19580x.C19584d(c17711b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15995b)) {
                return false;
            }
            C15995b c15995b = (C15995b) obj;
            return l.a(this.f45088a, c15995b.f45088a) && l.a(this.f45089b, c15995b.f45089b);
        }
        return true;
    }

    public int hashCode() {
        OnboardingContext onboardingContext = this.f45088a;
        int i = 0;
        int hashCode = onboardingContext != null ? onboardingContext.hashCode() : 0;
        String str = this.f45089b;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PredefinedSelectedEvent(onboardingContext=");
        m8728C.append(this.f45088a);
        m8728C.append(", videoId=");
        return C22128a.m8618h(m8728C, this.f45089b, ")");
    }
}
