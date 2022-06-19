package p193e.p194a.p372b0.p394b.p404m;

import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.r;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u0013\u0010\u000e\u001a\u00020\t8F@\u0006¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u000f\u001a\u0004\b\u0010\u0010\u0004¨\u0006\u0012"}, d2 = {"Le/a/b0/b/m/b;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "()Z", "isEnabled", "Ljava/lang/String;", "getBackupStatus", "backupStatus", "common_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b0.b.m.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/m/b.class */
public final class C8408b {
    @b("BACKUP_STATUS")

    /* renamed from: a */
    private final String f26085a;

    /* renamed from: a */
    public final boolean m28602a() {
        return r.n(this.f26085a, "ENABLED", true);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C8408b) && l.a(this.f26085a, ((C8408b) obj).f26085a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f26085a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("EnhancedSearchBackupService(backupStatus="), this.f26085a, ")");
    }
}
