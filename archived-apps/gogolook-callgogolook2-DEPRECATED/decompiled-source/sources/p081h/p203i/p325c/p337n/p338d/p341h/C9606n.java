package p081h.p203i.p325c.p337n.p338d.p341h;

import java.io.File;
import java.io.IOException;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p346l.AbstractC9776h;
/* renamed from: h.i.c.n.d.h.n */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/n.class */
public class C9606n {

    /* renamed from: a */
    public final String f21881a;

    /* renamed from: b */
    public final AbstractC9776h f21882b;

    public C9606n(String str, AbstractC9776h hVar) {
        this.f21881a = str;
        this.f21882b = hVar;
    }

    /* renamed from: a */
    public boolean m14741a() {
        boolean z;
        try {
            z = m14740b().createNewFile();
        } catch (IOException e) {
            C9513b a = C9513b.m15015a();
            a.m15010b("Error creating marker: " + this.f21881a, e);
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final File m14740b() {
        return new File(this.f21882b.mo14293a(), this.f21881a);
    }

    /* renamed from: c */
    public boolean m14739c() {
        return m14740b().exists();
    }

    /* renamed from: d */
    public boolean m14738d() {
        return m14740b().delete();
    }
}
