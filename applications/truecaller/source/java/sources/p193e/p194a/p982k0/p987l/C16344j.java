package p193e.p194a.p982k0.p987l;

import com.truecaller.callrecording.recorder.RecordingError;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k0.l.j */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/j.class */
public final class C16344j {

    /* renamed from: a */
    public final C16346l f45995a;

    /* renamed from: b */
    public final long f45996b;

    /* renamed from: c */
    public final RecordingError f45997c;

    public C16344j() {
        this(null, 0L, null, 7);
    }

    public C16344j(C16346l c16346l, long j, RecordingError recordingError) {
        l.e(recordingError, "error");
        this.f45995a = c16346l;
        this.f45996b = j;
        this.f45997c = recordingError;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public C16344j(C16346l c16346l, long j, RecordingError recordingError, int i) {
        c16346l = (i & 1) != 0 ? null : c16346l;
        ?? r6 = (i & 2) != 0 ? 0 : j;
        recordingError = (i & 4) != 0 ? RecordingError.NONE : recordingError;
        l.e(recordingError, "error");
        this.f45995a = c16346l;
        this.f45996b = r6;
        this.f45997c = recordingError;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16344j)) {
                return false;
            }
            C16344j c16344j = (C16344j) obj;
            return l.a(this.f45995a, c16344j.f45995a) && this.f45996b == c16344j.f45996b && l.a(this.f45997c, c16344j.f45997c);
        }
        return true;
    }

    public int hashCode() {
        C16346l c16346l = this.f45995a;
        int i = 0;
        int hashCode = c16346l != null ? c16346l.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f45996b);
        RecordingError recordingError = this.f45997c;
        if (recordingError != null) {
            i = recordingError.hashCode();
        }
        return (((hashCode * 31) + m34274a) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RecordingResult(data=");
        m8728C.append(this.f45995a);
        m8728C.append(", duration=");
        m8728C.append(this.f45996b);
        m8728C.append(", error=");
        m8728C.append(this.f45997c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
