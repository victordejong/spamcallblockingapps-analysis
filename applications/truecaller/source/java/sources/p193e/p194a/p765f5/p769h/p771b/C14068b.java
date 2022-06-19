package p193e.p194a.p765f5.p769h.p771b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Number;
import com.truecaller.swish.C4591R;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p997k3.AbstractC16458h;
import p193e.p194a.p997k3.C16447a;
import s1.z.c.l;
/* renamed from: e.a.f5.h.b.b */
/* loaded from: classes14-dex2jar.jar:e/a/f5/h/b/b.class */
public final class C14068b extends BaseAdapter {

    /* renamed from: a */
    public final AbstractC16458h f40674a = new C16447a();

    /* renamed from: b */
    public final Context f40675b;

    /* renamed from: c */
    public final List<Number> f40676c;

    /* renamed from: d */
    public final AbstractC19223c0 f40677d;

    /* JADX WARN: Multi-variable type inference failed */
    public C14068b(Context context, List<? extends Number> list, AbstractC19223c0 abstractC19223c0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "numbers");
        l.e(abstractC19223c0, "resourceProvider");
        this.f40675b = context;
        this.f40676c = list;
        this.f40677d = abstractC19223c0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f40676c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f40676c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C14067a c14067a;
        l.e(viewGroup, "parent");
        if (view == null) {
            view = LayoutInflater.from(this.f40675b).inflate(C4591R.layout.item_swish_number_picker_dialog, viewGroup, false);
            l.d(view, "inflater.inflate(R.layou…er_dialog, parent, false)");
            c14067a = new C14067a(view);
            view.setTag(c14067a);
        } else {
            Object tag = view.getTag();
            Objects.requireNonNull(tag, "null cannot be cast to non-null type com.truecaller.swish.ui.numberpicker.NumberViewHolder");
            c14067a = (C14067a) tag;
        }
        c14067a.f40672a.setText(this.f40676c.get(i).m35477g());
        c14067a.f40673b.setText(C17891a1.C17902k.m15593m0(this.f40676c.get(i), this.f40677d, this.f40674a));
        return view;
    }
}
