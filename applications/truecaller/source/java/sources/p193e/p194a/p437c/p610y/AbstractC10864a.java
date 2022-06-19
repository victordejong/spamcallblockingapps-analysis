package p193e.p194a.p437c.p610y;

import android.content.Context;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p523a0.AbstractC9625e;
import p193e.p194a.p437c.p570j.AbstractC10439b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10592f;
import s1.w.f;
/* renamed from: e.a.c.y.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/a.class */
public abstract class AbstractC10864a extends AbstractC10592f {

    /* renamed from: b */
    public final AbstractC9625e f32263b;

    /* renamed from: c */
    public final f f32264c;

    /* renamed from: d */
    public final f f32265d;

    /* renamed from: e */
    public final AbstractC10439b f32266e;

    /* renamed from: f */
    public final Context f32267f;

    /* renamed from: e.a.c.y.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/a$a.class */
    public interface AbstractC10865a {
        /* renamed from: B */
        AbstractC10439b mo12795B();

        /* renamed from: I */
        AbstractC9625e mo12699I();

        @Named("IO")
        /* renamed from: a */
        f mo11651a();

        @Named("UI")
        /* renamed from: e */
        f mo11644e();

        /* renamed from: j */
        Context mo12335j();
    }

    public AbstractC10864a() {
        AbstractC10865a abstractC10865a = (AbstractC10865a) C22128a.m8726C1(AbstractC10865a.class, "EntryPointAccessors.from…), Injection::class.java)");
        this.f32263b = abstractC10865a.mo12699I();
        this.f32264c = abstractC10865a.mo11651a();
        this.f32266e = abstractC10865a.mo12795B();
        this.f32267f = abstractC10865a.mo12335j();
        this.f32265d = abstractC10865a.mo11644e();
    }
}
