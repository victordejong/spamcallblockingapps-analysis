package p081h.p203i.p325c.p337n.p338d.p356r;

import android.content.Context;
import p081h.p203i.p325c.p337n.p338d.p341h.C9546h;
/* renamed from: h.i.c.n.d.r.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/r/a.class */
public class C9831a implements AbstractC9832b {

    /* renamed from: a */
    public final Context f22303a;

    /* renamed from: b */
    public boolean f22304b = false;

    /* renamed from: c */
    public String f22305c;

    public C9831a(Context context) {
        this.f22303a = context;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p356r.AbstractC9832b
    /* renamed from: a */
    public String mo14120a() {
        if (!this.f22304b) {
            this.f22305c = C9546h.m14908l(this.f22303a);
            this.f22304b = true;
        }
        String str = this.f22305c;
        if (str != null) {
            return str;
        }
        return null;
    }
}
