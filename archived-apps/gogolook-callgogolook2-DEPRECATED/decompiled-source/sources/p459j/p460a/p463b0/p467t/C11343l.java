package p459j.p460a.p463b0.p467t;

import android.content.Context;
import android.graphics.drawable.Drawable;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.t.l */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/l.class */
public class C11343l implements AbstractC12391a {

    /* renamed from: a */
    public final int f25432a;

    /* renamed from: b */
    public final AbstractC15118l<Context, Drawable> f25433b;

    /* renamed from: c */
    public final String f25434c;

    /* renamed from: d */
    public final AbstractC15118l<Context, String> f25435d;

    /* renamed from: e */
    public final boolean f25436e;

    /* renamed from: f */
    public final AbstractC15118l<Context, C14989s> f25437f;

    /* JADX WARN: Multi-variable type inference failed */
    public C11343l(int i, AbstractC15118l<? super Context, ? extends Drawable> lVar, String str, AbstractC15118l<? super Context, String> lVar2, boolean z, AbstractC15118l<? super Context, C14989s> lVar3) {
        C15149k.m377b(lVar, "getDefaultIconDrawable");
        C15149k.m377b(lVar2, "getTitleString");
        C15149k.m377b(lVar3, "viewOnClick");
        this.f25432a = i;
        this.f25433b = lVar;
        this.f25434c = str;
        this.f25435d = lVar2;
        this.f25436e = z;
        this.f25437f = lVar3;
    }

    public /* synthetic */ C11343l(int i, AbstractC15118l lVar, String str, AbstractC15118l lVar2, boolean z, AbstractC15118l lVar3, int i2, C15145g gVar) {
        this(i, lVar, (i2 & 4) != 0 ? null : str, lVar2, (i2 & 16) != 0 ? false : z, lVar3);
    }

    /* renamed from: a */
    public final AbstractC15118l<Context, Drawable> m9765a() {
        return this.f25433b;
    }

    /* renamed from: b */
    public final AbstractC15118l<Context, String> m9764b() {
        return this.f25435d;
    }

    /* renamed from: c */
    public final String m9763c() {
        return this.f25434c;
    }

    /* renamed from: d */
    public final AbstractC15118l<Context, C14989s> m9762d() {
        return this.f25437f;
    }

    /* renamed from: e */
    public boolean mo9761e() {
        return this.f25436e;
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25432a;
    }
}
