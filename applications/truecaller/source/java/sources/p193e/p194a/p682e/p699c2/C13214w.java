package p193e.p194a.p682e.p699c2;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.p183ui.components.ComboBase;
import java.util.List;
import n3.b.a.g;
import w3.c.a.a.a.h;
/* renamed from: e.a.e.c2.w */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/w.class */
public class C13214w extends BaseAdapter {

    /* renamed from: a */
    public final int f38377a;

    /* renamed from: b */
    public C13197i0 f38378b;

    /* renamed from: c */
    public final AbstractC13216b f38379c;

    /* renamed from: d */
    public List<? extends C13197i0> f38380d;

    /* renamed from: e.a.e.c2.w$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c2/w$a.class */
    public static class C13215a {

        /* renamed from: a */
        public final TextView f38381a;

        /* renamed from: b */
        public final TextView f38382b;

        /* renamed from: c */
        public final ImageView f38383c;

        /* renamed from: d */
        public final RadioButton f38384d;

        /* renamed from: e */
        public final View f38385e;

        public C13215a(View view) {
            this.f38385e = view;
            this.f38381a = (TextView) view.findViewById(2131364642);
            this.f38382b = (TextView) view.findViewById(C2752R.C2754id.listItemDetails);
            this.f38383c = (ImageView) view.findViewById(C2752R.C2754id.listItemIcon);
            this.f38384d = (RadioButton) view.findViewById(C2752R.C2754id.listItemRadio);
            view.setTag(this);
        }
    }

    /* renamed from: e.a.e.c2.w$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c2/w$b.class */
    public interface AbstractC13216b {
    }

    public C13214w(List<? extends C13197i0> list) {
        this.f38380d = list;
        this.f38377a = C2752R.layout.listitem_submenu;
        this.f38378b = null;
        this.f38379c = null;
    }

    public C13214w(List<? extends C13197i0> list, int i, C13197i0 c13197i0, AbstractC13216b abstractC13216b) {
        this.f38380d = list;
        this.f38377a = i == 0 ? 2131559324 : i;
        this.f38378b = c13197i0;
        this.f38379c = abstractC13216b;
    }

    /* renamed from: a */
    public final void m21989a(int i) {
        C13197i0 c13197i0 = this.f38380d.get(i);
        this.f38378b = c13197i0;
        AbstractC13216b abstractC13216b = this.f38379c;
        if (abstractC13216b != null) {
            ComboBase comboBase = ((C13181c) abstractC13216b).f38298a;
            comboBase.setSelection(c13197i0);
            comboBase.m34538b();
            g gVar = comboBase.f15712f;
            if (gVar != null) {
                gVar.dismiss();
            }
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f38380d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f38380d.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        View view2;
        C13215a c13215a;
        Context context = viewGroup.getContext();
        boolean z = false;
        if (view != null) {
            view2 = view;
            c13215a = (C13215a) view.getTag();
        } else {
            view2 = LayoutInflater.from(context).inflate(this.f38377a, viewGroup, false);
            c13215a = new C13215a(view2);
        }
        C13197i0 c13197i0 = this.f38380d.get(i);
        if (c13197i0 != null) {
            int mo18613g = c13197i0.mo18613g(context);
            int i2 = 8;
            if (mo18613g != 0) {
                c13215a.f38383c.setVisibility(0);
                c13215a.f38383c.setImageResource(mo18613g);
            } else {
                Bitmap mo18606f = c13197i0.mo18606f(context);
                if (mo18606f != null) {
                    c13215a.f38383c.setVisibility(0);
                    c13215a.f38383c.setImageBitmap(mo18606f);
                } else {
                    c13215a.f38383c.setVisibility(8);
                }
            }
            c13215a.f38381a.setText(c13197i0.mo18605h(context));
            TextView textView = c13215a.f38382b;
            if (!h.j(c13197i0.mo18608d(context))) {
                i2 = 0;
            }
            textView.setVisibility(i2);
            c13215a.f38382b.setText(c13197i0.mo18608d(context));
            RadioButton radioButton = c13215a.f38384d;
            if (radioButton != null && this.f38378b != null) {
                radioButton.setOnCheckedChangeListener(null);
                RadioButton radioButton2 = c13215a.f38384d;
                if (c13197i0.mo18607e() == this.f38378b.mo18607e()) {
                    z = true;
                }
                radioButton2.setChecked(z);
                c13215a.f38385e.setOnClickListener(new View.OnClickListener() { // from class: e.a.e.c2.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        C13214w.this.m21989a(i);
                    }
                });
                c13215a.f38384d.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.c2.e
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                        C13214w.this.m21989a(i);
                    }
                });
            }
        }
        return view2;
    }
}
