package com.android.contacts.dialpad;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public c f1067a;

    /* renamed from: b  reason: collision with root package name */
    public Activity f1068b;
    int c;
    b d = null;
    public AlertDialog e = null;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/i$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        public final CharSequence f1072a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1073b;

        public a(CharSequence charSequence, int i) {
            this.f1072a = charSequence;
            this.f1073b = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/i$b.class */
    public interface b {
        void a(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/i$c.class */
    protected final class c extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<a> f1074a = new ArrayList<>();
        private Context c;

        public c(Context context) {
            this.c = null;
            this.c = context;
        }

        private static float a(Resources resources) {
            return TypedValue.applyDimension(1, 15.0f, resources.getDisplayMetrics());
        }

        public final void a() {
            this.f1074a = null;
            this.f1074a = new ArrayList<>();
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f1074a.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return this.f1074a.get(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            a aVar = (a) getItem(i);
            Resources resources = i.this.f1068b.getResources();
            TextView textView = view;
            if (view == null) {
                TextView textView2 = new TextView(this.c);
                textView2.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
                textView2.setPadding((int) a(resources), (int) a(resources), (int) a(resources), (int) a(resources));
                textView2.setGravity(16);
                textView2.setMinHeight(65);
                textView = textView2;
            }
            TextView textView3 = (TextView) textView;
            textView3.setTag(aVar);
            textView3.setTextColor(-16777216);
            textView3.setText(aVar.f1072a);
            textView3.setTextSize(2, 22.0f);
            return textView3;
        }
    }

    public i(Activity activity) {
        this.f1067a = null;
        this.f1068b = null;
        this.c = 0;
        this.f1068b = activity;
        this.c = 100;
        this.f1067a = new c(this.f1068b);
    }
}
