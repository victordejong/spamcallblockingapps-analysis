package p193e.p194a.p916i5;

import com.truecaller.themes.C4621R;
import s1.z.c.f;
/* renamed from: e.a.i5.d */
/* loaded from: classes14-dex2jar.jar:e/a/i5/d.class */
public abstract class AbstractC15317d {

    /* renamed from: a */
    public final String f43585a;

    /* renamed from: b */
    public final int f43586b;

    /* renamed from: c */
    public final int f43587c;

    /* renamed from: d */
    public final int f43588d;

    /* renamed from: e.a.i5.d$a */
    /* loaded from: classes14-dex2jar.jar:e/a/i5/d$a.class */
    public static final class C15318a extends AbstractC15317d {
        public C15318a(int i) {
            super("BRIGHT", C4621R.string.SettingsThemeBright, C4621R.style.Theme_Truecaller, i, null);
        }
    }

    /* renamed from: e.a.i5.d$b */
    /* loaded from: classes14-dex2jar.jar:e/a/i5/d$b.class */
    public static final class C15319b extends AbstractC15317d {
        public C15319b(int i) {
            super("DARK", C4621R.string.SettingsThemeDark, C4621R.style.Theme_Truecaller_Dark, i, null);
        }
    }

    /* renamed from: e.a.i5.d$c */
    /* loaded from: classes14-dex2jar.jar:e/a/i5/d$c.class */
    public static final class C15320c extends AbstractC15317d {
        public C15320c(int i) {
            super("INHERIT_BRIGHT", C4621R.string.SettingsThemeInherit, C4621R.style.Theme_Truecaller, i, null);
        }
    }

    /* renamed from: e.a.i5.d$d */
    /* loaded from: classes14-dex2jar.jar:e/a/i5/d$d.class */
    public static final class C15321d extends AbstractC15317d {
        public C15321d(int i) {
            super("INHERIT_DARK", C4621R.string.SettingsThemeInherit, C4621R.style.Theme_Truecaller_Dark, i, null);
        }
    }

    public AbstractC15317d(String str, int i, int i2, int i3, f fVar) {
        this.f43585a = str;
        this.f43586b = i;
        this.f43587c = i2;
        this.f43588d = i3;
    }

    /* renamed from: a */
    public final int m18928a() {
        return this.f43586b;
    }
}
