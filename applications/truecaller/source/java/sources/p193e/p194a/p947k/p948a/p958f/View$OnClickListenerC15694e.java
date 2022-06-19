package p193e.p194a.p947k.p948a.p958f;

import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.videocallerid.p187ui.preview.PreviewActions;
import com.truecaller.videocallerid.p187ui.preview.PreviewActivity;
import s1.z.c.l;
/* renamed from: e.a.k.a.f.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/f/e.class */
public final class View$OnClickListenerC15694e implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PreviewActivity f44267a;

    public View$OnClickListenerC15694e(PreviewActivity previewActivity) {
        this.f44267a = previewActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        PreviewActivity previewActivity = this.f44267a;
        C15699j c15699j = previewActivity.f16030i;
        if (c15699j == null) {
            l.l("presenter");
            throw null;
        }
        String str = previewActivity.f16027f;
        if (str == null) {
            l.l("screenMode");
            throw null;
        }
        l.d(view, ViewAction.VIEW);
        Object tag = view.getTag();
        if (!(tag instanceof PreviewActions)) {
            tag = null;
        }
        c15699j.m18483Nj(str, (PreviewActions) tag);
    }
}
