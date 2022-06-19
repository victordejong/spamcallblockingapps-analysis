package p193e.p194a.p982k0.p987l;

import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.k0.l.l */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/l.class */
public final class C16346l {

    /* renamed from: a */
    public final RecordingAnalyticsSource f46000a;

    /* renamed from: b */
    public final String f46001b;

    /* renamed from: c */
    public final String f46002c;

    /* renamed from: d */
    public final b f46003d;

    /* renamed from: e */
    public final long f46004e;

    public C16346l(RecordingAnalyticsSource recordingAnalyticsSource, String str, String str2, b bVar, long j) {
        l.e(recordingAnalyticsSource, "source");
        l.e(str2, "fileName");
        l.e(bVar, "startTime");
        this.f46000a = recordingAnalyticsSource;
        this.f46001b = str;
        this.f46002c = str2;
        this.f46003d = bVar;
        this.f46004e = j;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16346l)) {
                return false;
            }
            C16346l c16346l = (C16346l) obj;
            return l.a(this.f46000a, c16346l.f46000a) && l.a(this.f46001b, c16346l.f46001b) && l.a(this.f46002c, c16346l.f46002c) && l.a(this.f46003d, c16346l.f46003d) && this.f46004e == c16346l.f46004e;
        }
        return true;
    }

    public int hashCode() {
        RecordingAnalyticsSource recordingAnalyticsSource = this.f46000a;
        int i = 0;
        int hashCode = recordingAnalyticsSource != null ? recordingAnalyticsSource.hashCode() : 0;
        String str = this.f46001b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f46002c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        b bVar = this.f46003d;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + C4876d.m34274a(this.f46004e);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RecordingSessionData(source=");
        m8728C.append(this.f46000a);
        m8728C.append(", number=");
        m8728C.append(this.f46001b);
        m8728C.append(", fileName=");
        m8728C.append(this.f46002c);
        m8728C.append(", startTime=");
        m8728C.append(this.f46003d);
        m8728C.append(", startTimeBase=");
        return C22128a.m8693K2(m8728C, this.f46004e, ")");
    }
}
