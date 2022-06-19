package p193e.p194a.p804h;

import com.truecaller.settings.CallingSettings;
import javax.inject.Inject;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p947k.AbstractC16111h;
import s1.z.c.l;
/* renamed from: e.a.h.k */
/* loaded from: classes2-dex2jar.jar:e/a/h/k.class */
public final class C14697k implements AbstractC14693i {

    /* renamed from: a */
    public final AbstractC13706b f42196a;

    /* renamed from: b */
    public final AbstractC19230g f42197b;

    /* renamed from: c */
    public final AbstractC18765c f42198c;

    /* renamed from: d */
    public final CallingSettings f42199d;

    /* renamed from: e */
    public final AbstractC11705f f42200e;

    /* renamed from: f */
    public final AbstractC16111h f42201f;

    @Inject
    public C14697k(AbstractC13706b abstractC13706b, AbstractC19230g abstractC19230g, AbstractC18765c abstractC18765c, CallingSettings callingSettings, AbstractC11705f abstractC11705f, AbstractC16111h abstractC16111h) {
        l.e(abstractC13706b, "inCallUi");
        l.e(abstractC19230g, "deviceInfoUtils");
        l.e(abstractC18765c, "contextCall");
        l.e(callingSettings, "callingSetting");
        l.e(abstractC11705f, "voip");
        l.e(abstractC16111h, "videoCallerId");
        this.f42196a = abstractC13706b;
        this.f42197b = abstractC19230g;
        this.f42198c = abstractC18765c;
        this.f42199d = callingSettings;
        this.f42200e = abstractC11705f;
        this.f42201f = abstractC16111h;
    }
}
