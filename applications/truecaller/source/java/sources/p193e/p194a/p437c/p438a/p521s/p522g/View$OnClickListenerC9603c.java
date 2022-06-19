package p193e.p194a.p437c.p438a.p521s.p522g;

import android.view.View;
import android.widget.TextView;
import com.truecaller.insights.p168ui.widget.chip.FilterChipXView;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.c.a.s.g.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/s/g/c.class */
public final class View$OnClickListenerC9603c implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ FilterChipXView f29029a;

    public View$OnClickListenerC9603c(FilterChipXView filterChipXView) {
        this.f29029a = filterChipXView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        TextView title;
        a<s> mo27399Ij;
        FilterChipXView filterChipXView = this.f29029a;
        filterChipXView.setSelected(!filterChipXView.isSelected());
        title = this.f29029a.getTitle();
        l.d(title, "title");
        title.setSelected(this.f29029a.isSelected());
        AbstractC9600a abstractC9600a = this.f29029a.f12955t;
        if (abstractC9600a == null || (mo27399Ij = abstractC9600a.mo27399Ij()) == null) {
            return;
        }
        s sVar = (s) mo27399Ij.invoke();
    }
}
