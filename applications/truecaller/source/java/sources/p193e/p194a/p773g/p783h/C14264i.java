package p193e.p194a.p773g.p783h;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.flexbox.FlexboxLayout;
import com.truecaller.acs.C2778R;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.g.h.i */
/* loaded from: classes4-dex2jar.jar:e/a/g/h/i.class */
public final class C14264i implements AbstractC26410a {

    /* renamed from: a */
    public final ConstraintLayout f41297a;

    /* renamed from: b */
    public final AppCompatTextView f41298b;

    /* renamed from: c */
    public final FlexboxLayout f41299c;

    /* renamed from: d */
    public final AppCompatTextView f41300d;

    /* renamed from: e */
    public final AppCompatTextView f41301e;

    /* renamed from: f */
    public final AppCompatTextView f41302f;

    public C14264i(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, FlexboxLayout flexboxLayout, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f41297a = constraintLayout;
        this.f41298b = appCompatTextView;
        this.f41299c = flexboxLayout;
        this.f41300d = appCompatTextView2;
        this.f41301e = appCompatTextView3;
        this.f41302f = appCompatTextView4;
    }

    /* renamed from: a */
    public static C14264i m20310a(View view) {
        int i = C2778R.C2780id.acs_reply_title;
        AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(i);
        if (appCompatTextView != null) {
            i = C2778R.C2780id.flexGroup;
            FlexboxLayout flexboxLayout = (FlexboxLayout) view.findViewById(i);
            if (flexboxLayout != null) {
                i = C2778R.C2780id.reply_custom;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(i);
                if (appCompatTextView2 != null) {
                    i = C2778R.C2780id.reply_one;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) view.findViewById(i);
                    if (appCompatTextView3 != null) {
                        i = C2778R.C2780id.reply_two;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) view.findViewById(i);
                        if (appCompatTextView4 != null) {
                            return new C14264i((ConstraintLayout) view, appCompatTextView, flexboxLayout, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
