package androidx.appcompat.widget;

import android.view.View;
/* renamed from: androidx.appcompat.widget.az */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/az.class */
final class View$OnClickListenerC0469az implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SearchView f2291a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC0469az(SearchView searchView) {
        this.f2291a = searchView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == this.f2291a.f2033b) {
            this.f2291a.m9339f();
        } else if (view == this.f2291a.f2035d) {
            this.f2291a.m9341e();
        } else if (view == this.f2291a.f2034c) {
            this.f2291a.m9344d();
        } else if (view == this.f2291a.f2036e) {
            this.f2291a.m9338g();
        } else if (view == this.f2291a.f2031a) {
            this.f2291a.m9335j();
        }
    }
}
