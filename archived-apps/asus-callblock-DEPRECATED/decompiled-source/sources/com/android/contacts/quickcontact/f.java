package com.android.contacts.quickcontact;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/f.class */
public final class f extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    List<Intent> f2095a;

    /* renamed from: b  reason: collision with root package name */
    List<String> f2096b;
    a d;
    private ListView h;
    private RelativeLayout i;
    String c = BuildConfig.FLAVOR;
    protected final View.OnClickListener e = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.f.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Intent intent = (Intent) view.getTag();
            if (f.this.d != null) {
                f.this.d.a(intent);
            }
        }
    };
    protected final View.OnClickListener f = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.f.3
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Intent intent = (Intent) view.getTag();
            if (f.this.d != null) {
                f.this.d.a(intent);
            }
        }
    };
    private final View.OnClickListener j = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.f.4
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (f.this.d != null) {
                f.this.d.a();
            }
        }
    };
    protected final View.OnClickListener g = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.f.5
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Intent intent = (Intent) view.getTag();
            if (f.this.d != null) {
                f.this.d.b(intent);
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/f$a.class */
    public interface a {
        void a();

        void a(Intent intent);

        void b(Intent intent);
    }

    public f() {
        setRetainInstance(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f2095a != null && this.h != null) {
            this.h.setAdapter((ListAdapter) new BaseAdapter() { // from class: com.android.contacts.quickcontact.f.1
                @Override // android.widget.Adapter
                public final int getCount() {
                    return f.this.f2095a.size();
                }

                @Override // android.widget.Adapter
                public final Object getItem(int i) {
                    return f.this.f2095a.get(i);
                }

                @Override // android.widget.Adapter
                public final long getItemId(int i) {
                    return i;
                }

                @Override // android.widget.Adapter
                public final View getView(int i, View view, ViewGroup viewGroup) {
                    Intent intent = (Intent) f.this.f2095a.get(i);
                    String str = (String) f.this.f2096b.get(i);
                    String str2 = f.this.c;
                    if (view == null) {
                        view = f.this.getActivity().getLayoutInflater().inflate(str2.equals("vnd.android.cursor.item/postal-address_v2") ? 2131427641 : 2131427640, viewGroup, false);
                    }
                    TextView textView = (TextView) view.findViewById(16908308);
                    TextView textView2 = (TextView) view.findViewById(16908309);
                    View findViewById = view.findViewById(2131296288);
                    ImageView imageView = (ImageView) view.findViewById(2131297258);
                    View findViewById2 = view.findViewById(2131297259);
                    view.findViewById(2131297181);
                    findViewById.setOnClickListener(f.this.e);
                    findViewById.setTag(intent);
                    imageView.setOnClickListener(f.this.f);
                    imageView.setTag(intent);
                    imageView.setVisibility(8);
                    findViewById2.setVisibility(8);
                    if (str2.equals("vnd.android.cursor.item/phone_v2")) {
                        textView.setContentDescription(f.this.getActivity().getString(2131755531, new Object[]{str}));
                    }
                    textView.setText(str);
                    if (textView2 != null) {
                        textView2.setVisibility(8);
                    }
                    ViewFlipper viewFlipper = (ViewFlipper) view.findViewById(2131297205);
                    if (viewFlipper != null) {
                        if (PhoneCapabilityTester.isRCSVerizon()) {
                            viewFlipper.getChildAt(0).setVisibility(8);
                            viewFlipper.setDisplayedChild(1);
                            imageView.setVisibility(8);
                            findViewById2.setVisibility(8);
                            ((ImageView) viewFlipper.findViewById(2131297261)).setVisibility(8);
                            ImageView imageView2 = (ImageView) viewFlipper.findViewById(2131297522);
                            imageView2.setOnClickListener(f.this.g);
                            imageView2.setTag(intent);
                            ImageView imageView3 = (ImageView) viewFlipper.findViewById(2131297539);
                            imageView3.setOnClickListener(f.this.e);
                            imageView3.setTag(intent);
                            viewFlipper.getLayoutParams().width = f.this.getResources().getDimensionPixelSize(2131100283);
                        } else {
                            viewFlipper.getChildAt(1).setVisibility(8);
                            viewFlipper.setDisplayedChild(0);
                            findViewById.setOnClickListener(f.this.e);
                            findViewById.setTag(intent);
                        }
                    }
                    return view;
                }
            });
        }
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.i = (RelativeLayout) layoutInflater.inflate(2131427639, viewGroup, false);
        this.h = (ListView) this.i.findViewById(2131296995);
        this.h.setItemsCanFocus(true);
        this.i.setOnClickListener(this.j);
        a();
        return this.i;
    }
}
