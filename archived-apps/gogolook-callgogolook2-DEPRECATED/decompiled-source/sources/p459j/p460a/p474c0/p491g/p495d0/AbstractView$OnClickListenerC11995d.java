package p459j.p460a.p474c0.p491g.p495d0;

import android.view.View;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.g.d0.d */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/d0/d.class */
public abstract class AbstractView$OnClickListenerC11995d implements View.OnClickListener {

    /* renamed from: a */
    public final String f26886a;

    public AbstractView$OnClickListenerC11995d(String str) {
        C15149k.m377b(str, "actionName");
        this.f26886a = str;
    }

    /* renamed from: a */
    public final String m7617a() {
        return this.f26886a;
    }

    /* renamed from: a */
    public abstract void mo7616a(View view, String str);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        mo7616a(view, this.f26886a);
    }
}
