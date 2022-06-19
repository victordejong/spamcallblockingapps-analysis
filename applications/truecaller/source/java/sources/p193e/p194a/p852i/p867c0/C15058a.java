package p193e.p194a.p852i.p867c0;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import p1727n3.p1807k.p1809b.C26467a;
import s1.z.c.l;
/* renamed from: e.a.i.c0.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/c0/a.class */
public final class C15058a extends ArrayAdapter<String> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15058a(Context context, int i, List<String> list) {
        super(context, i, list);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "options");
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        l.e(viewGroup, "parent");
        View view2 = super.getView(0, view, viewGroup);
        l.d(view2, "super.getView(0, convertView, parent)");
        TextView textView = (TextView) view2.findViewById(16908308);
        textView.setText(getItem(i));
        int i2 = i == 0 ? 2131100163 : 2131100164;
        Context context = getContext();
        Object obj = C26467a.f74235a;
        textView.setTextColor(C26467a.C26471d.m1787a(context, i2));
        return view2;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        l.e(viewGroup, "parent");
        View view2 = super.getView(0, view, viewGroup);
        l.d(view2, "super.getView(0, convertView, parent)");
        TextView textView = (TextView) view2.findViewById(16908308);
        textView.setText(getItem(i));
        int i2 = i == 0 ? 2131100163 : 2131100164;
        Context context = getContext();
        Object obj = C26467a.f74235a;
        textView.setTextColor(C26467a.C26471d.m1787a(context, i2));
        view2.setPaddingRelative(0, view2.getPaddingTop(), view2.getPaddingRight(), view2.getPaddingBottom());
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return i != 0;
    }
}
