package p131c.p431l.p432a.p442b.p445c;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;
import java.util.HashSet;
/* renamed from: c.l.a.b.c.f */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/c/f.class */
public class C6750f {

    /* renamed from: a */
    public final Context f20783a;

    /* renamed from: b */
    public final DialogInterface f20784b;

    /* renamed from: c */
    public String f20785c;

    /* renamed from: d */
    public String f20786d;

    /* renamed from: e */
    public String f20787e;

    /* renamed from: f */
    public String f20788f;

    /* renamed from: g */
    public View f20789g;

    /* renamed from: h */
    public View f20790h;

    /* renamed from: i */
    public CharSequence[] f20791i;

    /* renamed from: j */
    public boolean[] f20792j;

    /* renamed from: k */
    public DialogInterface.OnClickListener f20793k;

    /* renamed from: l */
    public DialogInterface.OnClickListener f20794l;

    /* renamed from: m */
    public DialogInterface.OnKeyListener f20795m;

    /* renamed from: n */
    public CharSequence[] f20796n;

    /* renamed from: o */
    public int f20797o;

    /* renamed from: q */
    public DialogInterface.OnClickListener f20799q;

    /* renamed from: r */
    public DialogInterface.OnMultiChoiceClickListener f20800r;

    /* renamed from: p */
    public boolean f20798p = false;

    /* renamed from: s */
    public boolean f20801s = true;

    /* renamed from: c.l.a.b.c.f$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/f$a.class */
    public class View$OnClickListenerC6751a implements View.OnClickListener {
        public View$OnClickListenerC6751a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C6750f.this.f20793k.onClick(C6750f.this.f20784b, -1);
            if (C6750f.this.f20801s) {
                C6750f.this.f20784b.dismiss();
            }
        }
    }

    /* renamed from: c.l.a.b.c.f$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/f$b.class */
    public class View$OnClickListenerC6752b implements View.OnClickListener {
        public View$OnClickListenerC6752b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C6750f.this.f20801s) {
                C6750f.this.f20784b.dismiss();
            }
            if (C6750f.this.f20794l != null) {
                C6750f.this.f20794l.onClick(C6750f.this.f20784b, -2);
            }
        }
    }

    /* renamed from: c.l.a.b.c.f$c */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/f$c.class */
    public class C6753c implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ C6756f f20804a;

        public C6753c(C6756f fVar) {
            this.f20804a = fVar;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f20804a.m19877a(i);
            C6750f.this.f20800r.onClick(C6750f.this.f20784b, i, this.f20804a.m19878a().contains(Integer.valueOf(i)));
        }
    }

    /* renamed from: c.l.a.b.c.f$d */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/f$d.class */
    public class C6754d implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ C6757g f20806a;

        public C6754d(C6757g gVar) {
            this.f20806a = gVar;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f20806a.m19876a(i);
            C6750f.this.f20799q.onClick(C6750f.this.f20784b, i);
        }
    }

    /* renamed from: c.l.a.b.c.f$e */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/f$e.class */
    public static class C6755e {

        /* renamed from: a */
        public String f20808a;

        /* renamed from: b */
        public String f20809b;

        /* renamed from: c */
        public String f20810c;

        /* renamed from: d */
        public String f20811d;

        /* renamed from: e */
        public View f20812e;

        /* renamed from: f */
        public int f20813f;

        /* renamed from: g */
        public CharSequence[] f20814g;

        /* renamed from: h */
        public boolean[] f20815h;

        /* renamed from: i */
        public DialogInterface.OnClickListener f20816i;

        /* renamed from: j */
        public DialogInterface.OnClickListener f20817j;

        /* renamed from: k */
        public DialogInterface.OnCancelListener f20818k;

        /* renamed from: l */
        public DialogInterface.OnKeyListener f20819l;

        /* renamed from: o */
        public CharSequence[] f20822o;

        /* renamed from: p */
        public int f20823p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f20824q;

        /* renamed from: r */
        public DialogInterface.OnMultiChoiceClickListener f20825r;

        /* renamed from: n */
        public boolean f20821n = false;

        /* renamed from: s */
        public boolean f20826s = true;

        /* renamed from: m */
        public boolean f20820m = true;

        public C6755e(Context context) {
        }

        /* renamed from: a */
        public void m19879a(C6750f fVar) {
            int i = this.f20813f;
            if (i != 0) {
                fVar.m19891b(i);
            }
            String str = this.f20808a;
            if (str != null) {
                fVar.m19889b(str);
            }
            View view = this.f20812e;
            if (view != null) {
                fVar.m19899a(view);
            }
            String str2 = this.f20809b;
            if (str2 != null) {
                fVar.m19897a(str2);
            }
            String str3 = this.f20810c;
            if (str3 != null) {
                fVar.m19888b(str3, this.f20816i);
            }
            String str4 = this.f20811d;
            if (str4 != null) {
                fVar.m19896a(str4, this.f20817j);
            }
            CharSequence[] charSequenceArr = this.f20814g;
            if (charSequenceArr != null) {
                fVar.m19893a(charSequenceArr, this.f20815h, this.f20825r);
            }
            CharSequence[] charSequenceArr2 = this.f20822o;
            if (charSequenceArr2 != null) {
                fVar.m19894a(charSequenceArr2, this.f20823p, this.f20824q);
            }
            if (fVar != null) {
                fVar.m19901a(this.f20818k);
            }
            if (fVar != null) {
                fVar.m19900a(this.f20819l);
            }
            if (fVar != null) {
                fVar.m19884c(this.f20820m);
            }
            if (fVar != null) {
                fVar.m19887b(this.f20821n);
                fVar.m19895a(this.f20826s);
            }
        }
    }

    /* renamed from: c.l.a.b.c.f$f */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/f$f.class */
    public class C6756f extends BaseAdapter {

        /* renamed from: a */
        public CharSequence[] f20827a;

        /* renamed from: b */
        public boolean[] f20828b;

        /* renamed from: c */
        public Context f20829c;

        /* renamed from: d */
        public LayoutInflater f20830d;

        /* renamed from: e */
        public HashSet<Integer> f20831e = new HashSet<>();

        public C6756f(C6750f fVar, Context context, CharSequence[] charSequenceArr, boolean[] zArr) {
            this.f20829c = context;
            this.f20827a = charSequenceArr;
            this.f20828b = zArr;
            for (int i = 0; i < zArr.length; i++) {
                if (zArr[i]) {
                    this.f20831e.add(Integer.valueOf(i));
                }
            }
            this.f20830d = (LayoutInflater) this.f20829c.getSystemService("layout_inflater");
        }

        /* renamed from: a */
        public HashSet<Integer> m19878a() {
            return this.f20831e;
        }

        /* renamed from: a */
        public void m19877a(int i) {
            if (this.f20831e.contains(Integer.valueOf(i))) {
                this.f20831e.remove(Integer.valueOf(i));
            } else {
                this.f20831e.add(Integer.valueOf(i));
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f20827a.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f20827a[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            int i2 = 2131165462;
            if (view == null) {
                view = this.f20830d.inflate(2131427392, (ViewGroup) null);
                ((TextView) view.findViewById(2131231064)).setText(this.f20827a[i]);
                ImageView imageView = (ImageView) view.findViewById(2131231062);
                if (!this.f20828b[i]) {
                    i2 = 2131165463;
                }
                imageView.setImageResource(i2);
            } else {
                ((TextView) view.findViewById(2131231064)).setText(this.f20827a[i]);
                ImageView imageView2 = (ImageView) view.findViewById(2131231062);
                if (!this.f20831e.contains(Integer.valueOf(i))) {
                    i2 = 2131165463;
                }
                imageView2.setImageResource(i2);
            }
            return view;
        }
    }

    /* renamed from: c.l.a.b.c.f$g */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/f$g.class */
    public class C6757g extends BaseAdapter {

        /* renamed from: a */
        public CharSequence[] f20832a;

        /* renamed from: b */
        public int f20833b;

        /* renamed from: c */
        public LayoutInflater f20834c;

        /* renamed from: d */
        public Context f20835d;

        public C6757g(C6750f fVar, Context context, CharSequence[] charSequenceArr, int i) {
            this.f20835d = context;
            this.f20832a = charSequenceArr;
            this.f20833b = i;
            this.f20834c = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* renamed from: a */
        public void m19876a(int i) {
            this.f20833b = i;
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f20832a.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f20832a[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = this.f20834c.inflate(2131427393, (ViewGroup) null);
            }
            ((TextView) view2.findViewById(2131231178)).setText(this.f20832a[i]);
            ((RadioButton) view2.findViewById(2131231176)).setChecked(i == this.f20833b);
            return view2;
        }
    }

    public C6750f(Context context, DialogInterface dialogInterface) {
        this.f20783a = context;
        this.f20784b = dialogInterface;
        this.f20790h = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427391, (ViewGroup) null);
    }

    /* renamed from: a */
    public DialogInterface.OnKeyListener m19903a() {
        return this.f20795m;
    }

    /* renamed from: a */
    public Button m19902a(int i) {
        return i == -1 ? (Button) this.f20790h.findViewById(2131231112) : i == -2 ? (Button) this.f20790h.findViewById(2131231076) : null;
    }

    /* renamed from: a */
    public void m19901a(DialogInterface.OnCancelListener onCancelListener) {
    }

    /* renamed from: a */
    public void m19900a(DialogInterface.OnKeyListener onKeyListener) {
        this.f20795m = onKeyListener;
    }

    /* renamed from: a */
    public void m19899a(View view) {
        this.f20789g = view;
    }

    /* renamed from: a */
    public void m19897a(String str) {
        this.f20786d = str;
    }

    /* renamed from: a */
    public void m19896a(String str, DialogInterface.OnClickListener onClickListener) {
        this.f20788f = str;
        this.f20794l = onClickListener;
    }

    /* renamed from: a */
    public void m19895a(boolean z) {
        this.f20801s = z;
    }

    /* renamed from: a */
    public void m19894a(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        this.f20796n = charSequenceArr;
        this.f20797o = i;
        this.f20799q = onClickListener;
    }

    /* renamed from: a */
    public void m19893a(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        this.f20791i = charSequenceArr;
        this.f20792j = zArr;
        this.f20800r = onMultiChoiceClickListener;
    }

    /* renamed from: b */
    public TextView m19892b() {
        return (TextView) this.f20790h.findViewById(2131231235);
    }

    /* renamed from: b */
    public void m19891b(int i) {
    }

    /* renamed from: b */
    public void m19889b(String str) {
        this.f20785c = str;
    }

    /* renamed from: b */
    public void m19888b(String str, DialogInterface.OnClickListener onClickListener) {
        this.f20787e = str;
        this.f20793k = onClickListener;
    }

    /* renamed from: b */
    public void m19887b(boolean z) {
        this.f20798p = z;
    }

    /* renamed from: c */
    public void m19884c(boolean z) {
    }

    /* renamed from: c */
    public boolean m19886c() {
        return this.f20798p;
    }

    /* renamed from: d */
    public void m19883d() {
        if (this.f20785c != null) {
            ((TextView) this.f20790h.findViewById(2131231235)).setText(this.f20785c);
        } else {
            ((LinearLayout) this.f20790h.findViewById(2131231240)).setVisibility(8);
        }
        if (this.f20787e != null) {
            ((Button) this.f20790h.findViewById(2131231112)).setText(this.f20787e);
            if (this.f20793k != null) {
                ((Button) this.f20790h.findViewById(2131231112)).setOnClickListener(new View$OnClickListenerC6751a());
            }
        } else {
            this.f20790h.findViewById(2131231112).setVisibility(4);
        }
        if (this.f20788f != null) {
            ((Button) this.f20790h.findViewById(2131231076)).setText(this.f20788f);
            ((Button) this.f20790h.findViewById(2131231076)).setOnClickListener(new View$OnClickListenerC6752b());
        } else {
            this.f20790h.findViewById(2131231076).setVisibility(8);
        }
        if (this.f20793k == null && this.f20794l == null) {
            ((LinearLayout) this.f20790h.findViewById(2131230860)).setVisibility(8);
        }
        if (m19886c()) {
            if (this.f20786d != null) {
                ((TextView) this.f20790h.findViewById(2131231048)).setText(this.f20786d);
            }
            if (this.f20789g != null) {
                ((LinearLayout) this.f20790h.findViewById(2131230902)).addView(this.f20789g, new ViewGroup.LayoutParams(-1, -2));
            }
        } else if (this.f20786d != null) {
            ((TextView) this.f20790h.findViewById(2131231048)).setText(this.f20786d);
        } else if (this.f20789g != null) {
            ((LinearLayout) this.f20790h.findViewById(2131230902)).removeAllViews();
            ((LinearLayout) this.f20790h.findViewById(2131230902)).addView(this.f20789g, new ViewGroup.LayoutParams(-1, -2));
        }
        if (this.f20786d == null && this.f20789g == null) {
            ((LinearLayout) this.f20790h.findViewById(2131230902)).setVisibility(8);
        }
        LinearLayout linearLayout = (LinearLayout) this.f20790h.findViewById(2131231061);
        if (this.f20791i != null) {
            ListView listView = (ListView) linearLayout.findViewById(2131231063);
            C6756f fVar = new C6756f(this, this.f20783a, this.f20791i, this.f20792j);
            listView.setAdapter((ListAdapter) fVar);
            listView.setOnItemClickListener(new C6753c(fVar));
        } else {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = (LinearLayout) this.f20790h.findViewById(2131231175);
        if (this.f20796n != null) {
            ListView listView2 = (ListView) linearLayout2.findViewById(2131231177);
            C6757g gVar = new C6757g(this, this.f20783a, this.f20796n, this.f20797o);
            listView2.setAdapter((ListAdapter) gVar);
            listView2.setOnItemClickListener(new C6754d(gVar));
            return;
        }
        linearLayout2.setVisibility(8);
    }
}
