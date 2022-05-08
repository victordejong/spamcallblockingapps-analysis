package p459j.p460a.p570v.p571a;

import android.view.View;
/* renamed from: j.a.v.a.a */
/* loaded from: classes2-dex2jar.jar:j/a/v/a/a.class */
public final class View$OnClickListenerC13685a implements View.OnClickListener {

    /* renamed from: a */
    public final AbstractC13686a f30712a;

    /* renamed from: b */
    public final int f30713b;

    /* renamed from: j.a.v.a.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/v/a/a$a.class */
    public interface AbstractC13686a {
        /* renamed from: a */
        void mo3637a(int i, View view);
    }

    public View$OnClickListenerC13685a(AbstractC13686a aVar, int i) {
        this.f30712a = aVar;
        this.f30713b = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f30712a.mo3637a(this.f30713b, view);
    }
}
