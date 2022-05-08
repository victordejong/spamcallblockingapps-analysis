package com.asus.contacts.yellowpage;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.uservoice.uservoicesdk.d;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/d.class */
public final class d extends ArrayAdapter<c> {

    /* renamed from: a  reason: collision with root package name */
    private Context f2809a;
    private boolean c;
    private View.OnClickListener d = new View.OnClickListener() { // from class: com.asus.contacts.yellowpage.d.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a aVar = (a) view.getTag();
            if (aVar.c == 2) {
                Intent intent = new Intent(d.this.f2809a, AsusCategoryActivity.class);
                intent.putExtra("extra_category", aVar.f2812a);
                intent.putExtra("extra_parent_code", aVar.f2813b);
                intent.putExtra("extra_is_near_by", d.this.c);
                d.this.f2809a.startActivity(intent);
            } else if (aVar.c == 3) {
                Intent intent2 = new Intent(d.this.f2809a, AsusBusinessListActivity.class);
                intent2.setAction("action.asus.yellowpage.search_by_category");
                intent2.putExtra("extra_category", aVar.f2812a);
                intent2.putExtra("extra_parent_code", aVar.f2813b);
                intent2.putExtra("extra_is_near_by", d.this.c);
                d.this.f2809a.startActivity(intent2);
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private int f2810b = 2131427737;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/d$a.class */
    final class a {

        /* renamed from: a  reason: collision with root package name */
        public String f2812a;

        /* renamed from: b  reason: collision with root package name */
        public String f2813b;
        public int c;
        public TextView d;

        public a(View view) {
            this.d = (TextView) view.findViewById(d.b.g);
        }
    }

    public d(Context context, ArrayList<c> arrayList, boolean z) {
        super(context, 2131427737, arrayList);
        this.f2809a = context;
        this.c = z;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            view = LayoutInflater.from(this.f2809a).inflate(this.f2810b, (ViewGroup) null);
            aVar = new a(view);
            view.setTag(aVar);
        }
        c item = getItem(i);
        aVar.f2813b = item.e;
        aVar.c = aVar.f2813b.length() / 2;
        if (aVar.c == 2) {
            aVar.f2812a = item.f2808b;
        } else if (aVar.c == 3) {
            aVar.f2812a = item.c;
        }
        aVar.d.setText(aVar.f2812a);
        view.setOnClickListener(this.d);
        return view;
    }
}
