package p193e.p194a.p717f.p718a.p721b.p724v;

import com.truecaller.incallui.C4013R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.f.a.b.v.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/v/e.class */
public abstract class AbstractC13617e {

    /* renamed from: a */
    public final String f39467a;

    /* renamed from: b */
    public final int f39468b;

    /* renamed from: e.a.f.a.b.v.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/v/e$a.class */
    public static final class C13618a extends AbstractC13617e {

        /* renamed from: c */
        public final String f39469c;

        /* renamed from: d */
        public final String f39470d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13618a(String str, String str2) {
            super(str, C4013R.C4014drawable.ic_button_incallui_bluetooth_normal, null);
            l.e(str, "itemName");
            l.e(str2, "deviceAddress");
            this.f39469c = str;
            this.f39470d = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C13618a)) {
                    return false;
                }
                C13618a c13618a = (C13618a) obj;
                return l.a(this.f39469c, c13618a.f39469c) && l.a(this.f39470d, c13618a.f39470d);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f39469c;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f39470d;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Bluetooth(itemName=");
            m8728C.append(this.f39469c);
            m8728C.append(", deviceAddress=");
            return C22128a.m8618h(m8728C, this.f39470d, ")");
        }
    }

    /* renamed from: e.a.f.a.b.v.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/v/e$b.class */
    public static final class C13619b extends AbstractC13617e {

        /* renamed from: c */
        public final String f39471c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13619b(String str) {
            super(str, C4013R.C4014drawable.ic_incallui_audio_route_phone, null);
            l.e(str, "itemName");
            this.f39471c = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C13619b) && l.a(this.f39471c, ((C13619b) obj).f39471c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f39471c;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Phone(itemName="), this.f39471c, ")");
        }
    }

    /* renamed from: e.a.f.a.b.v.e$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/v/e$c.class */
    public static final class C13620c extends AbstractC13617e {

        /* renamed from: c */
        public final String f39472c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13620c(String str) {
            super(str, C4013R.C4014drawable.ic_button_incallui_speaker_normal, null);
            l.e(str, "itemName");
            this.f39472c = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C13620c) && l.a(this.f39472c, ((C13620c) obj).f39472c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f39472c;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Speaker(itemName="), this.f39472c, ")");
        }
    }

    public AbstractC13617e(String str, int i, f fVar) {
        this.f39467a = str;
        this.f39468b = i;
    }
}
