package p193e.p194a.p372b0.p394b.p404m;

import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000f¨\u0006\u0011"}, d2 = {"Le/a/b0/b/m/a;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Le/a/b0/b/m/b;", "a", "Le/a/b0/b/m/b;", "()Le/a/b0/b/m/b;", "backupService", "common_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b0.b.m.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/m/a.class */
public final class C8407a {
    @b("BACKUP_SERVICE")

    /* renamed from: a */
    private final C8408b f26084a;

    /* renamed from: a */
    public final C8408b m28603a() {
        return this.f26084a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C8407a) && l.a(this.f26084a, ((C8407a) obj).f26084a);
        }
        return true;
    }

    public int hashCode() {
        C8408b c8408b = this.f26084a;
        return c8408b != null ? c8408b.hashCode() : 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EnhancedSearchBackupDto(backupService=");
        m8728C.append(this.f26084a);
        m8728C.append(")");
        return m8728C.toString();
    }
}
