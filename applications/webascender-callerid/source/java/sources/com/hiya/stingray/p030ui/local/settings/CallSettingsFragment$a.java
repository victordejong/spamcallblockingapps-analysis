package com.hiya.stingray.p030ui.local.settings;

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
    public b f4756f;

    /* renamed from: g */
    private final List<String> f4757g;

    /* renamed from: h */
    private final int f4758h;

    /* renamed from: i */
    private final List<Integer> f4759i;

    /* renamed from: j */
    private final l<Integer, r> f4760j;

    /* renamed from: k */
    final /* synthetic */ CallSettingsFragment f4761k;

    /* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$a$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$a$b.class */
    static final class View$OnClickListenerC1702b implements View.OnClickListener {

        /* renamed from: f */
        final /* synthetic */ a f4762f;

        View$OnClickListenerC1702b(a aVar) {
            this.f4762f = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f4762f.invoke();
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$a$c */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$a$c.class */
    static final class View$OnClickListenerC1703c implements View.OnClickListener {

        /* renamed from: f */
        final /* synthetic */ a f4763f;

        View$OnClickListenerC1703c(a aVar) {
            this.f4763f = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f4763f.invoke();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CallSettingsFragment$a(CallSettingsFragment callSettingsFragment, List<String> list, int i, List<Integer> list2, l<? super Integer, r> lVar) {
        k.g(list, "strings");
        k.g(list2, "premiumIndices");
        k.g(lVar, "callback");
        this.f4761k = callSettingsFragment;
        this.f4757g = list;
        this.f4758h = i;
        this.f4759i = list2;
        this.f4760j = lVar;
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return true;
    }

    /* renamed from: b */
    public final b m1288b() {
        b bVar = this.f4756f;
        if (bVar != null) {
            return bVar;
        }
        k.u("dialog");
        throw null;
    }

    /* renamed from: c */
    public final void m1287c(b bVar) {
        k.g(bVar, "<set-?>");
        this.f4756f = bVar;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4757g.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4757g.get(i);
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
        View inflate = LayoutInflater.from(this.f4761k.getContext()).inflate(2131493166, viewGroup, false);
        boolean contains = this.f4759i.contains(Integer.valueOf(i));
        TextView textView = (TextView) inflate.findViewById(o.p4);
        k.c(textView, "text");
        textView.setText(this.f4757g.get(i));
        int i2 = o.f3;
        RadioButton radioButton = (RadioButton) inflate.findViewById(i2);
        k.c(radioButton, "radioButton");
        if (i == this.f4758h) {
            z = true;
        }
        radioButton.setChecked(z);
        ImageView imageView = (ImageView) inflate.findViewById(o.S2);
        k.c(imageView, "premium");
        j.c(imageView, contains);
        a aVar = new a(this, i);
        int i3 = o.M1;
        ((LinearLayout) inflate.findViewById(i3)).setOnClickListener(new View$OnClickListenerC1702b(aVar));
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(i3);
        k.c(linearLayout, "item");
        ((RadioButton) linearLayout.findViewById(i2)).setOnClickListener(new View$OnClickListenerC1703c(aVar));
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
        return this.f4757g.isEmpty();
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
