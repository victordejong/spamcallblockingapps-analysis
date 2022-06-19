package p193e.p194a.p682e.p699c2;

import android.view.View;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
/* renamed from: e.a.e.c2.r */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/r.class */
public class View$OnClickListenerC13207r implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ AbstractC13209t.C13211b f38355a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC13209t f38356b;

    public View$OnClickListenerC13207r(AbstractC13209t abstractC13209t, AbstractC13209t.C13211b c13211b) {
        this.f38356b = abstractC13209t;
        this.f38355a = c13211b;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AbstractC13209t abstractC13209t = this.f38356b;
        int i = this.f38355a.f38360a;
        long itemId = abstractC13209t.getItemId(i);
        AbstractC13209t.AbstractC13210a abstractC13210a = abstractC13209t.f38359a;
        if (abstractC13210a != null) {
            abstractC13210a.mo10041a(i, itemId);
        }
    }
}
