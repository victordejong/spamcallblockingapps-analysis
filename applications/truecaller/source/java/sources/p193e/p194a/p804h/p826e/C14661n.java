package p193e.p194a.p804h.p826e;

import android.content.Context;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.List;
import s1.z.c.l;
/* renamed from: e.a.h.e.n */
/* loaded from: classes3-dex2jar.jar:e/a/h/e/n.class */
public final class C14661n extends ArrayAdapter<AbstractC14659l> {

    /* renamed from: e.a.h.e.n$a */
    /* loaded from: classes3-dex2jar.jar:e/a/h/e/n$a.class */
    public static final class C14662a {

        /* renamed from: a */
        public final TextView f42154a;

        /* renamed from: b */
        public final TextView f42155b;

        /* renamed from: c */
        public final ImageView f42156c;

        public C14662a(View view) {
            l.e(view, "itemView");
            View findViewById = view.findViewById(2131366266);
            l.d(findViewById, "itemView.findViewById(R.id.text1)");
            this.f42154a = (TextView) findViewById;
            View findViewById2 = view.findViewById(2131366267);
            l.d(findViewById2, "itemView.findViewById(R.id.text2)");
            this.f42155b = (TextView) findViewById2;
            View findViewById3 = view.findViewById(C2752R.C2754id.phone_icon1);
            l.d(findViewById3, "itemView.findViewById(R.id.phone_icon1)");
            this.f42156c = (ImageView) findViewById3;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14661n(Context context, List<? extends AbstractC14659l> list) {
        super(context, (int) C2752R.layout.item_select_number_dialog, list);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "phoneAccountInfoList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00b1, code lost:
        if (r0.length() == 0) goto L13;
     */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p804h.p826e.C14661n.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
