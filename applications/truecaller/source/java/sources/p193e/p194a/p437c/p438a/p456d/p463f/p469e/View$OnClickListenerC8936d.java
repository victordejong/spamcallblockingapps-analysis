package p193e.p194a.p437c.p438a.p456d.p463f.p469e;

import android.view.View;
import com.truecaller.insights.p168ui.financepage.search.view.SearchTrxActivity;
import com.truecaller.insights.p168ui.widget.SearchEditText;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p437c.p438a.p477g.C9029f;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.f.e.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/f/e/d.class */
public final class View$OnClickListenerC8936d implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9029f f27217a;

    /* renamed from: b */
    public final /* synthetic */ SearchTrxActivity f27218b;

    public View$OnClickListenerC8936d(C9029f c9029f, SearchTrxActivity searchTrxActivity) {
        this.f27217a = c9029f;
        this.f27218b = searchTrxActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SearchEditText searchEditText = this.f27217a.f27469e.f27385b;
        l.d(searchEditText, "searchCon.searchBar");
        C19286f.m13680X(searchEditText, false, 0L);
        this.f27218b.supportFinishAfterTransition();
    }
}
