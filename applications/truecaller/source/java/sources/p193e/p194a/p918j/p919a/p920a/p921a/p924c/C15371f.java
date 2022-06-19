package p193e.p194a.p918j.p919a.p920a.p921a.p924c;

import com.truecaller.surveys.data.entities.Choice;
import java.util.Objects;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.j.a.a.a.c.f */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/f.class */
public final class C15371f {

    /* renamed from: a */
    public final Choice f43672a;

    /* renamed from: b */
    public final UUID f43673b;

    /* renamed from: c */
    public boolean f43674c;

    /* renamed from: d */
    public Float f43675d;

    public C15371f(Choice choice, UUID uuid, boolean z, Float f) {
        l.e(choice, "choice");
        l.e(uuid, "id");
        this.f43672a = choice;
        this.f43673b = uuid;
        this.f43674c = z;
        this.f43675d = f;
    }

    public C15371f(Choice choice, UUID uuid, boolean z, Float f, int i) {
        UUID uuid2;
        if ((i & 2) != 0) {
            uuid2 = UUID.randomUUID();
            l.d(uuid2, "UUID.randomUUID()");
        } else {
            uuid2 = null;
        }
        z = (i & 4) != 0 ? false : z;
        l.e(choice, "choice");
        l.e(uuid2, "id");
        this.f43672a = choice;
        this.f43673b = uuid2;
        this.f43674c = z;
        this.f43675d = null;
    }

    /* renamed from: a */
    public static C15371f m18882a(C15371f c15371f, Choice choice, UUID uuid, boolean z, Float f, int i) {
        UUID uuid2 = null;
        Choice choice2 = (i & 1) != 0 ? c15371f.f43672a : null;
        if ((i & 2) != 0) {
            uuid2 = c15371f.f43673b;
        }
        if ((i & 4) != 0) {
            z = c15371f.f43674c;
        }
        if ((i & 8) != 0) {
            f = c15371f.f43675d;
        }
        Objects.requireNonNull(c15371f);
        l.e(choice2, "choice");
        l.e(uuid2, "id");
        return new C15371f(choice2, uuid2, z, f);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15371f)) {
                return false;
            }
            C15371f c15371f = (C15371f) obj;
            return l.a(this.f43672a, c15371f.f43672a) && l.a(this.f43673b, c15371f.f43673b) && this.f43674c == c15371f.f43674c && l.a(this.f43675d, c15371f.f43675d);
        }
        return true;
    }

    public int hashCode() {
        Choice choice = this.f43672a;
        int i = 0;
        int hashCode = choice != null ? choice.hashCode() : 0;
        UUID uuid = this.f43673b;
        int hashCode2 = uuid != null ? uuid.hashCode() : 0;
        boolean z = this.f43674c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        Float f = this.f43675d;
        if (f != null) {
            i = f.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SingleChoiceUIModel(choice=");
        m8728C.append(this.f43672a);
        m8728C.append(", id=");
        m8728C.append(this.f43673b);
        m8728C.append(", isChecked=");
        m8728C.append(this.f43674c);
        m8728C.append(", fontSize=");
        m8728C.append(this.f43675d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
