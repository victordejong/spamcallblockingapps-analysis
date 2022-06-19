package p193e.p194a.p372b0.p373a.p378c.p380m;

import com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.b0.a.c.m.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/m/a.class */
public abstract class AbstractC8274a {

    /* renamed from: e.a.b0.a.c.m.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/m/a$a.class */
    public static final class C8275a extends AbstractC8274a {

        /* renamed from: a */
        public final GroupAvatarTilePosition f25511a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8275a(GroupAvatarTilePosition groupAvatarTilePosition) {
            super(null);
            l.e(groupAvatarTilePosition, "position");
            this.f25511a = groupAvatarTilePosition;
        }

        @Override // p193e.p194a.p372b0.p373a.p378c.p380m.AbstractC8274a
        /* renamed from: a */
        public GroupAvatarTilePosition mo28700a() {
            return this.f25511a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8275a) && l.a(this.f25511a, ((C8275a) obj).f25511a);
            }
            return true;
        }

        public int hashCode() {
            GroupAvatarTilePosition groupAvatarTilePosition = this.f25511a;
            return groupAvatarTilePosition != null ? groupAvatarTilePosition.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Default(position=");
            m8728C.append(this.f25511a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.b0.a.c.m.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/m/a$b.class */
    public static final class C8276b extends AbstractC8274a {

        /* renamed from: a */
        public final GroupAvatarTilePosition f25512a;

        /* renamed from: b */
        public final String f25513b;

        /* renamed from: c */
        public final C8277c f25514c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8276b(GroupAvatarTilePosition groupAvatarTilePosition, String str, C8277c c8277c) {
            super(null);
            l.e(groupAvatarTilePosition, "position");
            l.e(str, "url");
            l.e(c8277c, "fallbackConfig");
            this.f25512a = groupAvatarTilePosition;
            this.f25513b = str;
            this.f25514c = c8277c;
        }

        @Override // p193e.p194a.p372b0.p373a.p378c.p380m.AbstractC8274a
        /* renamed from: a */
        public GroupAvatarTilePosition mo28700a() {
            return this.f25512a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8276b)) {
                    return false;
                }
                C8276b c8276b = (C8276b) obj;
                return l.a(this.f25512a, c8276b.f25512a) && l.a(this.f25513b, c8276b.f25513b) && l.a(this.f25514c, c8276b.f25514c);
            }
            return true;
        }

        public int hashCode() {
            GroupAvatarTilePosition groupAvatarTilePosition = this.f25512a;
            int i = 0;
            int hashCode = groupAvatarTilePosition != null ? groupAvatarTilePosition.hashCode() : 0;
            String str = this.f25513b;
            int hashCode2 = str != null ? str.hashCode() : 0;
            C8277c c8277c = this.f25514c;
            if (c8277c != null) {
                i = c8277c.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Image(position=");
            m8728C.append(this.f25512a);
            m8728C.append(", url=");
            m8728C.append(this.f25513b);
            m8728C.append(", fallbackConfig=");
            m8728C.append(this.f25514c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.b0.a.c.m.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/m/a$c.class */
    public static final class C8277c extends AbstractC8274a {

        /* renamed from: a */
        public final GroupAvatarTilePosition f25515a;

        /* renamed from: b */
        public final String f25516b;

        /* renamed from: c */
        public final int f25517c;

        /* renamed from: d */
        public final int f25518d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8277c(GroupAvatarTilePosition groupAvatarTilePosition, String str, int i, int i2) {
            super(null);
            l.e(groupAvatarTilePosition, "position");
            l.e(str, "letter");
            this.f25515a = groupAvatarTilePosition;
            this.f25516b = str;
            this.f25517c = i;
            this.f25518d = i2;
        }

        @Override // p193e.p194a.p372b0.p373a.p378c.p380m.AbstractC8274a
        /* renamed from: a */
        public GroupAvatarTilePosition mo28700a() {
            return this.f25515a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8277c)) {
                    return false;
                }
                C8277c c8277c = (C8277c) obj;
                return l.a(this.f25515a, c8277c.f25515a) && l.a(this.f25516b, c8277c.f25516b) && this.f25517c == c8277c.f25517c && this.f25518d == c8277c.f25518d;
            }
            return true;
        }

        public int hashCode() {
            GroupAvatarTilePosition groupAvatarTilePosition = this.f25515a;
            int i = 0;
            int hashCode = groupAvatarTilePosition != null ? groupAvatarTilePosition.hashCode() : 0;
            String str = this.f25516b;
            if (str != null) {
                i = str.hashCode();
            }
            return (((((hashCode * 31) + i) * 31) + this.f25517c) * 31) + this.f25518d;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Letter(position=");
            m8728C.append(this.f25515a);
            m8728C.append(", letter=");
            m8728C.append(this.f25516b);
            m8728C.append(", backgroundColor=");
            m8728C.append(this.f25517c);
            m8728C.append(", textColor=");
            return C22128a.m8697J2(m8728C, this.f25518d, ")");
        }
    }

    /* renamed from: e.a.b0.a.c.m.a$d */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/m/a$d.class */
    public static final class C8278d extends AbstractC8274a {

        /* renamed from: a */
        public final GroupAvatarTilePosition f25519a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8278d(GroupAvatarTilePosition groupAvatarTilePosition) {
            super(null);
            l.e(groupAvatarTilePosition, "position");
            this.f25519a = groupAvatarTilePosition;
        }

        @Override // p193e.p194a.p372b0.p373a.p378c.p380m.AbstractC8274a
        /* renamed from: a */
        public GroupAvatarTilePosition mo28700a() {
            return this.f25519a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8278d) && l.a(this.f25519a, ((C8278d) obj).f25519a);
            }
            return true;
        }

        public int hashCode() {
            GroupAvatarTilePosition groupAvatarTilePosition = this.f25519a;
            return groupAvatarTilePosition != null ? groupAvatarTilePosition.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Spam(position=");
            m8728C.append(this.f25519a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC8274a() {
    }

    public AbstractC8274a(f fVar) {
    }

    /* renamed from: a */
    public abstract GroupAvatarTilePosition mo28700a();
}
