package p193e.p194a.p294b.p355m;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.bizmon.C3478R;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.b.m.m0 */
/* loaded from: classes6-dex2jar.jar:e/a/b/m/m0.class */
public final class C8089m0 implements AbstractC26410a {

    /* renamed from: a */
    public final RecyclerView f25008a;

    /* renamed from: b */
    public final LinearLayout f25009b;

    /* renamed from: c */
    public final AppCompatTextView f25010c;

    /* renamed from: d */
    public final AppCompatTextView f25011d;

    /* renamed from: e */
    public final Toolbar f25012e;

    /* renamed from: f */
    public final C8076j1 f25013f;

    public C8089m0(ConstraintLayout constraintLayout, RecyclerView recyclerView, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, Toolbar toolbar, C8076j1 c8076j1) {
        this.f25008a = recyclerView;
        this.f25009b = linearLayout;
        this.f25010c = appCompatTextView;
        this.f25011d = appCompatTextView2;
        this.f25012e = toolbar;
        this.f25013f = c8076j1;
    }

    /* renamed from: a */
    public static C8089m0 m28910a(View view) {
        int i = C3478R.C3480id.contactList;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = C3478R.C3480id.disclaimerContainer;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = C3478R.C3480id.textContactsCount;
                AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(i);
                if (appCompatTextView != null) {
                    i = C3478R.C3480id.textDisclaimer;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(i);
                    if (appCompatTextView2 != null) {
                        i = C3478R.C3480id.toolbar;
                        Toolbar toolbar = (Toolbar) view.findViewById(i);
                        if (toolbar != null) {
                            i = C3478R.C3480id.viewEmptySearch;
                            View findViewById = view.findViewById(i);
                            if (findViewById != null) {
                                return new C8089m0((ConstraintLayout) view, recyclerView, linearLayout, appCompatTextView, appCompatTextView2, toolbar, C8076j1.m28915a(findViewById));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
