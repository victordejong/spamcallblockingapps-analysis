package p193e.p194a.p437c.p438a.p442b.p443a;

import android.view.View;
import android.widget.Button;
import com.truecaller.insights.p168ui.widget.TypeSelectorView;
import s1.a.l;
/* renamed from: e.a.c.a.b.a.u */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/u.class */
public final class View$OnClickListenerC8748u implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ TypeSelectorView f26710a;

    /* renamed from: b */
    public final /* synthetic */ C8743r f26711b;

    public View$OnClickListenerC8748u(TypeSelectorView typeSelectorView, C8743r c8743r) {
        this.f26710a = typeSelectorView;
        this.f26711b = c8743r;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C8743r c8743r = this.f26711b;
        l[] lVarArr = C8743r.f26697i;
        Button button = c8743r.m28095OA().f27657e;
        s1.z.c.l.d(button, "binding.confirmBtn");
        button.setSelected(true);
        TypeSelectorView typeSelectorView = this.f26711b.f26706g;
        if (typeSelectorView != null) {
            typeSelectorView.setSelected(false);
        }
        C8743r c8743r2 = this.f26711b;
        TypeSelectorView typeSelectorView2 = this.f26710a;
        c8743r2.f26706g = typeSelectorView2;
        s1.z.c.l.d(typeSelectorView2, "selectorView");
        TypeSelectorView typeSelectorView3 = this.f26710a;
        s1.z.c.l.d(typeSelectorView3, "selectorView");
        typeSelectorView2.setSelected(!typeSelectorView3.isSelected());
    }
}
