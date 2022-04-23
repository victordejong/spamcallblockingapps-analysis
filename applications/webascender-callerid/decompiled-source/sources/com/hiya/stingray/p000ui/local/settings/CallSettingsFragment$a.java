package com.hiya.stingray.p000ui.local.settings;

import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.app.b;
import com.hiya.client.callerid.ui.e0.j;
import com.hiya.stingray.o;
import java.util.List;
import kotlin.r;
import kotlin.w.b.a;
import kotlin.w.b.l;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$a.class */
public final class CallSettingsFragment$a implements ListAdapter {

    /* renamed from: f */
    public b f77f;

    /* renamed from: g */
    private final List<String> f78g;

    /* renamed from: h */
    private final int f79h;

    /* renamed from: i */
    private final List<Integer> f80i;

    /* renamed from: j */
    private final l<Integer, r> f81j;

    /* renamed from: k */
    final /* synthetic */ CallSettingsFragment f82k;

    /* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$a$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$a$b.class */
    static final class View$OnClickListenerC0040b implements View.OnClickListener {

        /* renamed from: f */
        final /* synthetic */ a f83f;

        View$OnClickListenerC0040b(a aVar) {
            this.f83f = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f83f.invoke();
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$a$c */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$a$c.class */
    static final class View$OnClickListenerC0041c implements View.OnClickListener {

        /* renamed from: f */
        final /* synthetic */ a f84f;

        View$OnClickListenerC0041c(a aVar) {
            this.f84f = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f84f.invoke();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CallSettingsFragment$a(CallSettingsFragment callSettingsFragment, List<String> list, int i, List<Integer> list2, l<? super Integer, r> lVar) {
        k.g(list, "strings");
        k.g(list2, "premiumIndices");
        k.g(lVar, "callback");
        this.f82k = callSettingsFragment;
        this.f78g = list;
        this.f79h = i;
        this.f80i = list2;
        this.f81j = lVar;
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return true;
    }

    /* renamed from: b */
    public final b m1288b() {
        b bVar = this.f77f;
        if (bVar != null) {
            return bVar;
        }
        k.u("dialog");
        throw null;
    }

    /* renamed from: c */
    public final void m1287c(b bVar) {
        k.g(bVar, "<set-?>");
        this.f77f = bVar;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f78g.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f78g.get(i);
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
        boolean z = false;
        View inflate = LayoutInflater.from(this.f82k.getContext()).inflate(2131493166, viewGroup, false);
        boolean contains = this.f80i.contains(Integer.valueOf(i));
        TextView textView = (TextView) inflate.findViewById(o.p4);
        k.c(textView, "text");
        textView.setText(this.f78g.get(i));
        int i2 = o.f3;
        RadioButton radioButton = (RadioButton) inflate.findViewById(i2);
        k.c(radioButton, "radioButton");
        if (i == this.f79h) {
            z = true;
        }
        radioButton.setChecked(z);
        ImageView imageView = (ImageView) inflate.findViewById(o.S2);
        k.c(imageView, "premium");
        j.c(imageView, contains);
        a aVar = new a(this, i);
        int i3 = o.M1;
        ((LinearLayout) inflate.findViewById(i3)).setOnClickListener(new View$OnClickListenerC0040b(aVar));
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(i3);
        k.c(linearLayout, "item");
        ((RadioButton) linearLayout.findViewById(i2)).setOnClickListener(new View$OnClickListenerC0041c(aVar));
        k.c(inflate, "LayoutInflater.from(cont…{ click() }\n            }");
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
        return this.f78g.isEmpty();
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
