package com.vladlee.easyblacklist;

import android.content.Context;
import android.graphics.Bitmap;
import android.telephony.PhoneNumberUtils;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.TextView;
import com.google.android.gms.ads.AdRequest;
import java.util.ArrayList;
/* renamed from: com.vladlee.easyblacklist.ec */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ec.class */
public final class C3388ec extends ArrayAdapter<C3383ea> {

    /* renamed from: a */
    ArrayList<C3383ea> f19549a;

    /* renamed from: b */
    ArrayList<C3383ea> f19550b;

    /* renamed from: c */
    Context f19551c;

    /* renamed from: e */
    private LayoutInflater f19553e;

    /* renamed from: g */
    private Filter f19555g;

    /* renamed from: d */
    private LruCache<String, Bitmap> f19552d = new LruCache<>(AdRequest.MAX_CONTENT_URL_LENGTH);

    /* renamed from: f */
    private int f19554f = 2131492930;

    /* renamed from: com.vladlee.easyblacklist.ec$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ec$a.class */
    private final class C3389a extends Filter {
        private C3389a() {
        }

        /* synthetic */ C3389a(C3388ec ecVar, byte b) {
            this();
        }

        @Override // android.widget.Filter
        protected final Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            boolean z = true;
            boolean z2 = charSequence != null;
            if (charSequence.length() <= 0) {
                z = false;
            }
            if (z && z2) {
                ArrayList arrayList = new ArrayList();
                String lowerCase = charSequence.toString().toLowerCase();
                for (int i = 0; i < C3388ec.this.f19549a.size(); i++) {
                    C3383ea eaVar = C3388ec.this.f19549a.get(i);
                    String str = eaVar.f19532a;
                    String str2 = str;
                    if (str == null) {
                        str2 = eaVar.f19533b;
                    }
                    if (C3388ec.this.m93b(str2.toLowerCase(), lowerCase) || C3388ec.m94a(eaVar.f19533b, lowerCase)) {
                        arrayList.add(eaVar);
                    }
                }
                filterResults.count = arrayList.size();
                filterResults.values = arrayList;
            } else {
                filterResults.count = C3388ec.this.f19549a.size();
                filterResults.values = C3388ec.this.f19549a;
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        protected final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            C3388ec.this.f19550b = (ArrayList) filterResults.values;
            if (C3388ec.this.f19550b == null) {
                C3388ec.this.f19550b = new ArrayList<>();
            }
            C3388ec.this.notifyDataSetChanged();
            C3388ec.this.notifyDataSetInvalidated();
        }
    }

    /* renamed from: com.vladlee.easyblacklist.ec$b */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ec$b.class */
    public final class View$OnClickListenerC3390b implements View.OnClickListener {

        /* renamed from: b */
        private int f19558b;

        public View$OnClickListenerC3390b(int i) {
            this.f19558b = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SmsNewMessageActivity.m274a(C3388ec.this.f19550b.get(this.f19558b).f19533b);
        }
    }

    public C3388ec(Context context, ArrayList<C3383ea> arrayList) {
        super(context, 2131492930, arrayList);
        this.f19549a = arrayList;
        this.f19551c = context;
        this.f19550b = arrayList;
        this.f19553e = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: a */
    static /* synthetic */ boolean m94a(String str, String str2) {
        String stripSeparators = PhoneNumberUtils.stripSeparators(str2);
        String stripSeparators2 = PhoneNumberUtils.stripSeparators(str);
        if (stripSeparators2 == null || stripSeparators2.length() <= 0 || stripSeparators.length() <= 0) {
            return false;
        }
        String str3 = stripSeparators2;
        if (stripSeparators.charAt(0) != '+') {
            str3 = stripSeparators2;
            if (stripSeparators2.charAt(0) == '+') {
                str3 = stripSeparators2;
                if (stripSeparators2.length() > 1) {
                    str3 = stripSeparators2.substring(1);
                }
            }
        }
        return str3.contains(stripSeparators);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public boolean m93b(String str, String str2) {
        String[] split = str2.trim().split(" ");
        if (split.length != 1) {
            return m93b(str, split[0]) && m93b(str.replace(split[0], "").replace("  ", " "), str2.replace(split[0], "").replace("  ", " "));
        }
        for (String str3 : str.trim().split(" ")) {
            if (str3.startsWith(split[0])) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final int getCount() {
        return this.f19550b.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Filterable
    public final Filter getFilter() {
        if (this.f19555g == null) {
            this.f19555g = new C3389a(this, (byte) 0);
        }
        return this.f19555g;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final /* synthetic */ Object getItem(int i) {
        return this.f19550b.get(i);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f19553e.inflate(this.f19554f, viewGroup, false);
        }
        TextView textView = (TextView) view2.findViewById(2131296475);
        TextView textView2 = (TextView) view2.findViewById(2131296476);
        C3383ea eaVar = this.f19550b.get(i);
        textView.setText(eaVar.f19532a);
        String concat = "\u200e".concat(String.valueOf(C3311bt.m229a(this.f19551c).m209f(this.f19551c, eaVar.f19533b)));
        String str = concat;
        if (eaVar.f19534c.length() > 0) {
            str = eaVar.f19534c + ": " + concat;
        }
        textView2.setText(str);
        C3383ea eaVar2 = this.f19550b.get(i);
        C3303bo.m253a(view2, C3311bt.m229a(this.f19551c).m220b(this.f19551c, PhoneNumberUtils.stripSeparators(eaVar2.f19533b)), eaVar2.f19532a, this.f19552d);
        view2.setOnClickListener(new View$OnClickListenerC3390b(i));
        view2.setClickable(true);
        return view2;
    }
}
