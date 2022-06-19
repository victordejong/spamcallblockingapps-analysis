package p193e.p194a.p437c.p438a.p442b.p443a;

import android.view.View;
import android.widget.Button;
import com.truecaller.insights.p168ui.widget.TypeSelectorView;
import p193e.p194a.p437c.p438a.p477g.C9059p;
import s1.z.c.l;
/* renamed from: e.a.c.a.b.a.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/o.class */
public final class View$OnClickListenerC8729o implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ TypeSelectorView f26672a;

    /* renamed from: b */
    public final /* synthetic */ C9059p f26673b;

    /* renamed from: c */
    public final /* synthetic */ DialogInterface$OnShowListenerC8722l f26674c;

    public View$OnClickListenerC8729o(TypeSelectorView typeSelectorView, C9059p c9059p, DialogInterface$OnShowListenerC8722l dialogInterface$OnShowListenerC8722l) {
        this.f26672a = typeSelectorView;
        this.f26673b = c9059p;
        this.f26674c = dialogInterface$OnShowListenerC8722l;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Button button = this.f26673b.f27586d;
        l.d(button, "confirmBtn");
        button.setSelected(true);
        TypeSelectorView typeSelectorView = this.f26674c.f26666g;
        if (typeSelectorView != null) {
            typeSelectorView.setSelected(false);
        }
        DialogInterface$OnShowListenerC8722l dialogInterface$OnShowListenerC8722l = this.f26674c;
        TypeSelectorView typeSelectorView2 = this.f26672a;
        dialogInterface$OnShowListenerC8722l.f26666g = typeSelectorView2;
        l.d(typeSelectorView2, "selectorView");
        TypeSelectorView typeSelectorView3 = this.f26672a;
        l.d(typeSelectorView3, "selectorView");
        typeSelectorView2.setSelected(!typeSelectorView3.isSelected());
    }
}
