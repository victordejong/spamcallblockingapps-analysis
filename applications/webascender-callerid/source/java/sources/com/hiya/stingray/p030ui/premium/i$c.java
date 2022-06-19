package com.hiya.stingray.p030ui.premium;

import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.app.b;
import com.hiya.stingray.o;
import java.util.List;
import kotlin.r;
import kotlin.w.b.p;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.i$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/i$c.class */
public final class i$c implements ListAdapter {

    /* renamed from: f */
    private final List<String> f4833f;

    /* renamed from: g */
    private final List<Boolean> f4834g;

    /* renamed from: h */
    private final p<Integer, Boolean, r> f4835h;

    /* renamed from: i */
    final /* synthetic */ i f4836i;

    /* renamed from: com.hiya.stingray.ui.premium.i$c$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/i$c$a.class */
    static final class C1747a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: b */
        final /* synthetic */ int f4838b;

        C1747a(int i) {
            i$c.this = r4;
            this.f4838b = i;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            i$c.this.f4835h.invoke(Integer.valueOf(this.f4838b), Boolean.valueOf(z));
        }
    }

    /* renamed from: com.hiya.stingray.ui.premium.i$c$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/i$c$b.class */
    static final class View$OnClickListenerC1748b implements View.OnClickListener {

        /* renamed from: f */
        final /* synthetic */ View f4839f;

        View$OnClickListenerC1748b(View view) {
            this.f4839f = view;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            View view2 = this.f4839f;
            int i = o.m4;
            Switch r0 = (Switch) view2.findViewById(i);
            k.c(r0, "switcher");
            Switch r02 = (Switch) this.f4839f.findViewById(i);
            k.c(r02, "switcher");
            r0.setChecked(!r02.isChecked());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i$c(i iVar, List<String> list, List<Boolean> list2, p<? super Integer, ? super Boolean, r> pVar) {
        k.g(list, "strings");
        k.g(list2, "checked");
        k.g(pVar, "callback");
        this.f4836i = iVar;
        this.f4833f = list;
        this.f4834g = list2;
        this.f4835h = pVar;
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return true;
    }

    /* renamed from: b */
    public final void m1141b(b bVar) {
        k.g(bVar, "<set-?>");
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4833f.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4833f.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public int getItemViewType(int i) {
        return 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(this.f4836i.getContext()).inflate(2131493147, viewGroup, false);
        TextView textView = (TextView) inflate.findViewById(o.p4);
        k.c(textView, "text");
        textView.setText(this.f4833f.get(i));
        int i2 = o.m4;
        Switch r0 = (Switch) inflate.findViewById(i2);
        k.c(r0, "switcher");
        r0.setChecked(this.f4834g.get(i).booleanValue());
        int i3 = o.M1;
        ((LinearLayout) inflate.findViewById(i3)).setOnClickListener(new View$OnClickListenerC1748b(inflate));
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(i3);
        k.c(linearLayout, "item");
        ((Switch) linearLayout.findViewById(i2)).setOnCheckedChangeListener(new C1747a(i));
        k.c(inflate, "LayoutInflater.from(cont…sChecked) }\n            }");
        return inflate;
    }

    @Override // android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        return this.f4833f.isEmpty();
    }

    @Override // android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return true;
    }

    @Override // android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
    }
}
