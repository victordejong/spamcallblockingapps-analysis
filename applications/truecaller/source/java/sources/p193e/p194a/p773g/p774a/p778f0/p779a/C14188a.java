package p193e.p194a.p773g.p774a.p778f0.p779a;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p374a.C8230h;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Le/a/g/a/f0/a/a;", "Le/a/b0/a/a/h;", "Landroid/view/View;", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "<init>", "()V", "acs_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.g.a.f0.a.a */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/f0/a/a.class */
public final class C14188a extends C8230h {
    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        ViewGroup.LayoutParams layoutParams = m28768VA().getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams2 = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = 0;
        }
        m28768VA().setScaleType(ImageView.ScaleType.CENTER_CROP);
        C19286f.m13689O((TextView) this.f25359c.getValue());
    }
}
