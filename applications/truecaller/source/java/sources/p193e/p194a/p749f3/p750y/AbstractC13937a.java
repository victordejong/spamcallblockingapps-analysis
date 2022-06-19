package p193e.p194a.p749f3.p750y;

import com.truecaller.callbubbles.C3590R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
/* renamed from: e.a.f3.y.a */
/* loaded from: classes6-dex2jar.jar:e/a/f3/y/a.class */
public abstract class AbstractC13937a {

    /* renamed from: a */
    public final Integer f40346a;

    /* renamed from: b */
    public final int f40347b;

    /* renamed from: c */
    public final int f40348c;

    /* renamed from: e.a.f3.y.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/y/a$a.class */
    public static final class C13938a extends AbstractC13937a {

        /* renamed from: d */
        public static final C13938a f40349d = new C13938a();

        public C13938a() {
            super(Integer.valueOf(C3590R.string.call_bubbles_state_calling), C3590R.color.call_bubbles_state_text_default, C3590R.color.call_bubbles_state_background_default, null);
        }
    }

    /* renamed from: e.a.f3.y.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/y/a$b.class */
    public static final class C13939b extends AbstractC13937a {

        /* renamed from: d */
        public static final C13939b f40350d = new C13939b();

        public C13939b() {
            super(Integer.valueOf(C3590R.string.call_bubbles_state_on_hold), C3590R.color.call_bubbles_state_text_on_hold, C3590R.color.call_bubbles_state_background_on_hold, null);
        }
    }

    /* renamed from: e.a.f3.y.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/y/a$c.class */
    public static final class C13940c extends AbstractC13937a {

        /* renamed from: d */
        public final long f40351d;

        public C13940c(long j) {
            super(null, C3590R.color.call_bubbles_state_text_default, C3590R.color.call_bubbles_state_background_default, null);
            this.f40351d = j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C13940c) && this.f40351d == ((C13940c) obj).f40351d;
            }
            return true;
        }

        public int hashCode() {
            return C4876d.m34274a(this.f40351d);
        }

        public String toString() {
            return C22128a.m8693K2(C22128a.m8728C("Ongoing(chronometerBase="), this.f40351d, ")");
        }
    }

    public AbstractC13937a(Integer num, int i, int i2, f fVar) {
        this.f40346a = num;
        this.f40347b = i;
        this.f40348c = i2;
    }
}
