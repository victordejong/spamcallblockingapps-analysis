package p193e.p194a.p437c.p438a.p442b.p443a;

import android.view.View;
import android.widget.Button;
import com.truecaller.insights.p168ui.widget.TypeSelectorView;
import p193e.p194a.p437c.p438a.p477g.C9056o;
import s1.z.c.l;
/* renamed from: e.a.c.a.b.a.c0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/c0.class */
public final class View$OnClickListenerC8702c0 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ TypeSelectorView f26620a;

    /* renamed from: b */
    public final /* synthetic */ C9056o f26621b;

    /* renamed from: c */
    public final /* synthetic */ DialogInterface$OnShowListenerC8755z f26622c;

    public View$OnClickListenerC8702c0(TypeSelectorView typeSelectorView, C9056o c9056o, DialogInterface$OnShowListenerC8755z dialogInterface$OnShowListenerC8755z) {
        this.f26620a = typeSelectorView;
        this.f26621b = c9056o;
        this.f26622c = dialogInterface$OnShowListenerC8755z;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Button button = this.f26621b.f27566b;
        l.d(button, "confirmBtn");
        button.setSelected(true);
        TypeSelectorView typeSelectorView = this.f26622c.f26732c;
        if (typeSelectorView != null) {
            typeSelectorView.setSelected(false);
        }
        DialogInterface$OnShowListenerC8755z dialogInterface$OnShowListenerC8755z = this.f26622c;
        TypeSelectorView typeSelectorView2 = this.f26620a;
        dialogInterface$OnShowListenerC8755z.f26732c = typeSelectorView2;
        l.d(typeSelectorView2, "selectorView");
        TypeSelectorView typeSelectorView3 = this.f26620a;
        l.d(typeSelectorView3, "selectorView");
        typeSelectorView2.setSelected(!typeSelectorView3.isSelected());
    }
}
