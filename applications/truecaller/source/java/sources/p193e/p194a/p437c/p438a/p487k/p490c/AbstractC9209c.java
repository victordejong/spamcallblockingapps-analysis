package p193e.p194a.p437c.p438a.p487k.p490c;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.k.c.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/c/c.class */
public abstract class AbstractC9209c {

    /* renamed from: e.a.c.a.k.c.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/c/c$a.class */
    public static final class C9210a extends AbstractC9209c {

        /* renamed from: a */
        public final boolean f27995a;

        public C9210a(boolean z) {
            super(null);
            this.f27995a = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C9210a) && this.f27995a == ((C9210a) obj).f27995a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f27995a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("ShowFailMarkSnackBar(isImportant="), this.f27995a, ")");
        }
    }

    /* renamed from: e.a.c.a.k.c.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/c/c$b.class */
    public static final class C9211b extends AbstractC9209c {

        /* renamed from: a */
        public final List<AbstractC9235b.C9238c> f27996a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9211b(List<AbstractC9235b.C9238c> list) {
            super(null);
            l.e(list, "messageList");
            this.f27996a = list;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C9211b) && l.a(this.f27996a, ((C9211b) obj).f27996a);
            }
            return true;
        }

        public int hashCode() {
            List<AbstractC9235b.C9238c> list = this.f27996a;
            return list != null ? list.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8602l(C22128a.m8728C("ShowUndoSnackBar(messageList="), this.f27996a, ")");
        }
    }

    /* renamed from: e.a.c.a.k.c.c$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/c/c$c.class */
    public static final class C9212c extends AbstractC9209c {

        /* renamed from: a */
        public final boolean f27997a;

        public C9212c(boolean z) {
            super(null);
            this.f27997a = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C9212c) && this.f27997a == ((C9212c) obj).f27997a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f27997a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("ToggleEmptyState(isVisible="), this.f27997a, ")");
        }
    }

    public AbstractC9209c() {
    }

    public AbstractC9209c(f fVar) {
    }
}
