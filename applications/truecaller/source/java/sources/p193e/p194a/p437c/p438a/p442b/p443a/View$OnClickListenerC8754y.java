package p193e.p194a.p437c.p438a.p442b.p443a;

import android.view.View;
import android.widget.Button;
import com.truecaller.insights.p168ui.widget.TypeSelectorView;
import s1.a.l;
/* renamed from: e.a.c.a.b.a.y */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/y.class */
public final class View$OnClickListenerC8754y implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ TypeSelectorView f26725a;

    /* renamed from: b */
    public final /* synthetic */ C8749v f26726b;

    public View$OnClickListenerC8754y(TypeSelectorView typeSelectorView, C8749v c8749v) {
        this.f26725a = typeSelectorView;
        this.f26726b = c8749v;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C8749v c8749v = this.f26726b;
        l[] lVarArr = C8749v.f26712i;
        Button button = c8749v.m28092OA().f27628c;
        s1.z.c.l.d(button, "binding.confirmBtn");
        button.setSelected(true);
        TypeSelectorView typeSelectorView = this.f26726b.f26721g;
        if (typeSelectorView != null) {
            typeSelectorView.setSelected(false);
        }
        C8749v c8749v2 = this.f26726b;
        TypeSelectorView typeSelectorView2 = this.f26725a;
        c8749v2.f26721g = typeSelectorView2;
        s1.z.c.l.d(typeSelectorView2, "selectorView");
        TypeSelectorView typeSelectorView3 = this.f26725a;
        s1.z.c.l.d(typeSelectorView3, "selectorView");
        typeSelectorView2.setSelected(!typeSelectorView3.isSelected());
    }
}
