package com.vladlee.easyblacklist;

import android.content.Context;
import android.graphics.Bitmap;
import android.telephony.PhoneNumberUtils;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.TextView;
import com.google.android.gms.ads.AdRequest;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: com.vladlee.easyblacklist.eb */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/eb.class */
public final class C3384eb extends ArrayAdapter<C3306br> {

    /* renamed from: b */
    private ArrayList<C3306br> f19536b;

    /* renamed from: c */
    private ArrayList<C3306br> f19537c;

    /* renamed from: e */
    private LayoutInflater f19539e;

    /* renamed from: g */
    private Filter f19541g;

    /* renamed from: h */
    private Checkable f19542h;

    /* renamed from: i */
    private Context f19543i;

    /* renamed from: a */
    private LruCache<String, Bitmap> f19535a = new LruCache<>(AdRequest.MAX_CONTENT_URL_LENGTH);

    /* renamed from: f */
    private int f19540f = 2131492929;

    /* renamed from: d */
    private HashMap<String, Boolean> f19538d = new HashMap<>();

    /* renamed from: com.vladlee.easyblacklist.eb$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/eb$a.class */
    public final class View$OnClickListenerC3385a implements View.OnClickListener {

        /* renamed from: b */
        private int f19545b;

        public View$OnClickListenerC3385a(int i) {
            this.f19545b = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean isChecked = ((CheckBox) view).isChecked();
            C3306br brVar = (C3306br) C3384eb.this.f19537c.get(this.f19545b);
            brVar.f19380b = isChecked;
            C3384eb.this.f19537c.set(this.f19545b, brVar);
            C3384eb.this.f19542h.toggle();
            C3384eb.this.f19538d.put(((C3306br) C3384eb.this.f19537c.get(this.f19545b)).f19379a.f19377b.get(0), Boolean.valueOf(isChecked));
        }
    }

    /* renamed from: com.vladlee.easyblacklist.eb$b */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/eb$b.class */
    private final class C3386b extends Filter {
        private C3386b() {
        }

        /* synthetic */ C3386b(C3384eb ebVar, byte b) {
            this();
        }

        @Override // android.widget.Filter
        protected final Filter.FilterResults performFiltering(CharSequence charSequence) {
            C3306br brVar;
            Filter.FilterResults filterResults = new Filter.FilterResults();
            boolean z = true;
            boolean z2 = charSequence != null;
            if (charSequence.length() <= 0) {
                z = false;
            }
            if (z && z2) {
                ArrayList arrayList = new ArrayList();
                String lowerCase = charSequence.toString().toLowerCase();
                for (int i = 0; i < C3384eb.this.f19536b.size(); i++) {
                    C3305bq bqVar = ((C3306br) C3384eb.this.f19536b.get(i)).f19379a;
                    String e = C3311bt.m229a(C3384eb.this.f19543i).m211e(C3384eb.this.f19543i, bqVar.f19377b.get(0));
                    if (e != null) {
                        if (C3384eb.this.m101a(e.toLowerCase(), lowerCase) || C3384eb.m100a(bqVar.f19377b, lowerCase)) {
                            brVar = new C3306br(bqVar);
                            arrayList.add(brVar);
                        }
                    } else if (C3384eb.m100a(bqVar.f19377b, lowerCase)) {
                        brVar = new C3306br(bqVar);
                        arrayList.add(brVar);
                    }
                }
                filterResults.count = arrayList.size();
                filterResults.values = arrayList;
            } else {
                synchronized (this) {
                    filterResults.count = C3384eb.this.f19536b.size();
                    filterResults.values = C3384eb.this.f19536b;
                }
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        protected final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            C3384eb.this.f19537c = (ArrayList) filterResults.values;
            if (C3384eb.this.f19537c == null) {
                C3384eb.this.f19537c = new ArrayList();
            }
            for (int i = 0; i < C3384eb.this.f19537c.size(); i++) {
                Boolean bool = (Boolean) C3384eb.this.f19538d.get(((C3306br) C3384eb.this.f19537c.get(i)).f19379a.f19377b.get(0));
                if (bool != null) {
                    C3306br brVar = (C3306br) C3384eb.this.f19537c.get(i);
                    brVar.f19380b = bool.booleanValue();
                    C3384eb.this.f19537c.set(i, brVar);
                }
            }
            C3384eb.this.f19542h.toggle();
            C3384eb.this.notifyDataSetChanged();
            C3384eb.this.notifyDataSetInvalidated();
        }
    }

    /* renamed from: com.vladlee.easyblacklist.eb$c */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/eb$c.class */
    public final class View$OnClickListenerC3387c implements View.OnClickListener {

        /* renamed from: b */
        private int f19548b;

        public View$OnClickListenerC3387c(int i) {
            this.f19548b = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CheckBox checkBox = (CheckBox) view.findViewById(2131296370);
            boolean z = !checkBox.isChecked();
            checkBox.setChecked(z);
            C3306br brVar = (C3306br) C3384eb.this.f19537c.get(this.f19548b);
            brVar.f19380b = z;
            C3384eb.this.f19537c.set(this.f19548b, brVar);
            EditText editText = (EditText) ((View) view.getParent().getParent()).findViewById(2131296411);
            ((InputMethodManager) editText.getContext().getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
            C3384eb.this.f19542h.toggle();
        }
    }

    public C3384eb(Context context, ArrayList<C3306br> arrayList, Checkable checkable) {
        super(context, 2131492929, arrayList);
        this.f19543i = null;
        this.f19542h = checkable;
        this.f19536b = arrayList;
        this.f19537c = new ArrayList<>(this.f19536b);
        this.f19539e = (LayoutInflater) context.getSystemService("layout_inflater");
        for (int i = 0; i < this.f19537c.size(); i++) {
            C3306br brVar = this.f19537c.get(i);
            this.f19538d.put(brVar.f19379a.f19377b.get(0), Boolean.valueOf(brVar.f19380b));
        }
        this.f19543i = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m101a(String str, String str2) {
        String[] split = str2.trim().split(" ");
        if (split.length != 1) {
            return m101a(str, split[0]) && m101a(str.replace(split[0], "").replace("  ", " "), str2.replace(split[0], "").replace("  ", " "));
        }
        for (String str3 : str.trim().split(" ")) {
            if (str3.startsWith(split[0])) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    static /* synthetic */ boolean m100a(ArrayList arrayList, String str) {
        boolean z;
        for (int i = 0; i < arrayList.size(); i++) {
            String str2 = (String) arrayList.get(i);
            String stripSeparators = PhoneNumberUtils.stripSeparators(str);
            String stripSeparators2 = PhoneNumberUtils.stripSeparators(str2);
            if (stripSeparators2 == null || stripSeparators2.length() <= 0 || stripSeparators.length() <= 0) {
                z = false;
            } else {
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
                z = str3.contains(stripSeparators);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final int m106a() {
        int i = 0;
        for (int i2 = 0; i2 < this.f19537c.size(); i2++) {
            i = i;
            if (this.f19537c.get(i2).f19380b) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public final C3306br getItem(int i) {
        return this.f19537c.get(i);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final int getCount() {
        return this.f19537c.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Filterable
    public final Filter getFilter() {
        if (this.f19541g == null) {
            this.f19541g = new C3386b(this, (byte) 0);
        }
        return this.f19541g;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f19539e.inflate(this.f19540f, viewGroup, false);
        }
        TextView textView = (TextView) view2.findViewById(2131296476);
        C3304bp b = C3311bt.m229a(this.f19543i).m220b(this.f19543i, this.f19537c.get(i).f19379a.f19377b.get(0));
        textView.setText(C3456gn.m28b(b.f19373a));
        CheckBox checkBox = (CheckBox) view2.findViewById(2131296370);
        if (checkBox != null) {
            checkBox.setChecked(this.f19537c.get(i).f19380b);
            checkBox.setOnClickListener(new View$OnClickListenerC3385a(i));
            view2.setOnClickListener(new View$OnClickListenerC3387c(i));
            view2.setClickable(true);
        }
        C3303bo.m253a(view2, b, b.f19373a, this.f19535a);
        return view2;
    }
}
