package p193e.p194a.p437c.p438a.p520r;

import java.util.Objects;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p579q.AbstractC10513j;
import p193e.p194a.p437c.p579q.C10496c;
import p193e.p194a.p437c.p580r.p582e.p583a.C10531a;
import p193e.p194a.p437c.p580r.p585f.C10537b;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.c0;
import s1.z.c.m;
/* renamed from: e.a.c.a.r.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/r/e.class */
public final class C9588e extends m implements l<T, Boolean> {

    /* renamed from: b */
    public final /* synthetic */ AbstractC10255e f29004b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9588e(AbstractC10255e abstractC10255e) {
        super(1);
        this.f29004b = abstractC10255e;
    }

    /* renamed from: d */
    public Object m27408d(Object obj) {
        String str;
        c0 c0Var = new c0();
        if (obj instanceof AbstractC9235b.C9240e) {
            str = ((AbstractC9235b.C9240e) obj).f28074f;
        } else if (obj instanceof AbstractC9235b.C9237b) {
            str = ((AbstractC9235b.C9237b) obj).f28040e;
        } else if (obj instanceof AbstractC9235b.C9238c) {
            str = ((AbstractC9235b.C9238c) obj).f28059l;
        } else if (obj instanceof AbstractC9235b.C9243h) {
            str = ((AbstractC9235b.C9243h) obj).f28115b;
        } else if (obj instanceof AbstractC9235b.C9242g) {
            str = ((AbstractC9235b.C9242g) obj).f28097f;
        } else if (obj instanceof AbstractC10513j.C10515b) {
            str = ((AbstractC10513j.C10515b) obj).f31272c;
        } else if (obj instanceof AbstractC10513j.C10514a) {
            str = ((AbstractC10513j.C10514a) obj).f31262c;
        } else if (obj instanceof C10496c) {
            str = ((C10496c) obj).f31203c;
        } else if (obj instanceof C10537b) {
            Objects.requireNonNull((C10537b) obj);
            str = null;
        } else if (!(obj instanceof C10531a)) {
            throw new IllegalStateException(obj + " not supported for blocked filtering");
        } else {
            str = ((C10531a) obj).f31424a;
        }
        c0Var.a = str;
        boolean z = true;
        if (!r.p(str)) {
            z = ((Boolean) d.c3((f) null, new C9587d(this, c0Var, null), 1, (Object) null)).booleanValue();
        }
        return Boolean.valueOf(z);
    }
}
