package p193e.p194a.p717f.p718a.p730w;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.incallui.C4013R;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.f.a.w.f */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/w/f.class */
public final class C13699f extends ArrayAdapter<C13696c> {

    /* renamed from: e.a.f.a.w.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/w/f$a.class */
    public static final class C13700a {

        /* renamed from: a */
        public final TextView f39679a;

        /* renamed from: b */
        public final TextView f39680b;

        /* renamed from: c */
        public final ImageView f39681c;

        public C13700a(View view) {
            l.e(view, "itemView");
            View findViewById = view.findViewById(C4013R.C4015id.text_title);
            l.d(findViewById, "itemView.findViewById(R.id.text_title)");
            this.f39679a = (TextView) findViewById;
            View findViewById2 = view.findViewById(C4013R.C4015id.text_description);
            l.d(findViewById2, "itemView.findViewById(R.id.text_description)");
            this.f39680b = (TextView) findViewById2;
            View findViewById3 = view.findViewById(C4013R.C4015id.image_icon);
            l.d(findViewById3, "itemView.findViewById(R.id.image_icon)");
            this.f39681c = (ImageView) findViewById3;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13699f(Context context, List<C13696c> list) {
        super(context, C4013R.layout.item_incallui_select_phone_account, list);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "phoneAccountInfoList");
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C13700a c13700a;
        l.e(viewGroup, "parent");
        if (view == null) {
            Object systemService = getContext().getSystemService("layout_inflater");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            view = ((LayoutInflater) systemService).inflate(C4013R.layout.item_incallui_select_phone_account, viewGroup, false);
            l.d(view, "inflater.inflate(R.layou…e_account, parent, false)");
            c13700a = new C13700a(view);
            view.setTag(c13700a);
        } else {
            Object tag = view.getTag();
            Objects.requireNonNull(tag, "null cannot be cast to non-null type com.truecaller.incallui.callui.phoneAccount.PhoneAccountsAdapter.ViewHolder");
            c13700a = (C13700a) tag;
        }
        C13696c item = getItem(i);
        if (item == null) {
            c13700a.f39679a.setText((CharSequence) null);
            c13700a.f39680b.setVisibility(8);
            c13700a.f39681c.setImageDrawable(null);
        } else {
            c13700a.f39679a.setText(item.f39674b);
            c13700a.f39680b.setText(item.f39675c);
            TextView textView = c13700a.f39680b;
            boolean z = false;
            if (item.f39675c.length() == 0) {
                z = true;
            }
            C19286f.m13683U(textView, !z);
            c13700a.f39681c.setImageResource(item.f39676d);
        }
        return view;
    }
}
