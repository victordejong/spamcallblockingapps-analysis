package p193e.p194a.p437c.p438a.p439a.p440a.p441a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p437c.p438a.p477g.C9086y;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.a.a.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/a/i.class */
public final class C8669i extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final C9086y f26549a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8669i(C9086y c9086y) {
        super(c9086y.f27721a);
        l.e(c9086y, "binding");
        this.f26549a = c9086y;
    }

    /* renamed from: N4 */
    public static final C9086y m28123N4(ViewGroup viewGroup) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C4078R.layout.empty_business_item, viewGroup, false);
        int i = C4078R.C4080id.desc;
        TextView textView = (TextView) inflate.findViewById(i);
        if (textView != null) {
            i = C4078R.C4080id.icon;
            ImageView imageView = (ImageView) inflate.findViewById(i);
            if (imageView != null) {
                C9086y c9086y = new C9086y((FrameLayout) inflate, textView, imageView);
                l.d(c9086y, "EmptyBusinessItemBinding….context), parent, false)");
                return c9086y;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    /* renamed from: O4 */
    public final void m28122O4(AdapterItem.C4113e c4113e) {
        ColorDrawable colorDrawable;
        int i;
        l.e(c4113e, "emptyItem");
        C9086y c9086y = this.f26549a;
        TextView textView = c9086y.f27722b;
        l.d(textView, "desc");
        View view = this.itemView;
        l.d(view, "itemView");
        textView.setText(view.getResources().getString(c4113e.f12870b));
        ImageView imageView = c9086y.f27723c;
        Context m8700J = C22128a.m8700J(this.itemView, "itemView", "itemView.context");
        int i2 = c4113e.f12871c;
        l.e(m8700J, "$this$getThemeDrawable");
        TypedValue typedValue = new TypedValue();
        if (!m8700J.getTheme().resolveAttribute(i2, typedValue, true)) {
            colorDrawable = null;
        } else if (typedValue.resourceId != 0 || (i = typedValue.type) < 28 || i > 31) {
            Resources resources = m8700J.getResources();
            l.d(resources, "resources");
            colorDrawable = C19291g.m13597Q(resources, typedValue.resourceId, m8700J.getTheme());
        } else {
            colorDrawable = new ColorDrawable(typedValue.data);
        }
        imageView.setImageDrawable(colorDrawable);
    }
}
