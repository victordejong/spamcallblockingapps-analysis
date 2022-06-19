package p193e.p194a.p437c.p438a.p494m.p496b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.C4078R;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p1049l4.C17422k;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.b.t */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/t.class */
public final class C9285t extends BaseAdapter {

    /* renamed from: a */
    public final List<T> f28255a = new ArrayList();

    /* renamed from: b */
    public final Context f28256b;

    public C9285t(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f28256b = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f28255a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f28255a.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            LayoutInflater from = LayoutInflater.from(this.f28256b);
            l.d(from, "LayoutInflater.from(context)");
            view = C17422k.m16050u0(from, true).inflate(C4078R.layout.qa_query_spinner_item, viewGroup, false);
            TextView textView = (TextView) view.findViewById(C4078R.C4080id.queryName);
            l.d(textView, "queryNameTv");
            String str = (String) this.f28255a.get(i);
            l.e(str, "item");
            textView.setText(str);
            l.d(view, "newView");
        }
        return view;
    }
}
