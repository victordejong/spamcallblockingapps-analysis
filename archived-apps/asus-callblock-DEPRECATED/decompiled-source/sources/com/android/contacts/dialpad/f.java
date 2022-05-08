package com.android.contacts.dialpad;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.util.AsusRedPointNotificationHelper;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/f.class */
public final class f extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f1060a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<Integer> f1061b = new ArrayList<>();
    private LayoutInflater c;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f1062a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1063b;
        ImageView c;

        public a(long j, TextView textView, ImageView imageView) {
            this.f1062a = j;
            this.f1063b = textView;
            this.c = imageView;
        }
    }

    public f(Context context) {
        this.f1060a = context;
        this.c = LayoutInflater.from(context);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f1060a);
        boolean z = defaultSharedPreferences.getInt("keypad_mode", 0) == 0;
        boolean isUsingTwoPanes = PhoneCapabilityTester.isUsingTwoPanes(this.f1060a);
        boolean a2 = e.a(this.f1060a);
        boolean isHavingOneHandControl = PhoneCapabilityTester.isHavingOneHandControl(this.f1060a);
        boolean z2 = defaultSharedPreferences.getBoolean("onehand_mode_on", false);
        if (MainDialtactsActivity.checkNeedShowUpdateVesion(this.f1060a)) {
            this.f1061b.add(2131755851);
        }
        if (!isUsingTwoPanes) {
            if (z) {
                this.f1061b.add(2131755807);
            } else {
                this.f1061b.add(2131755834);
            }
        }
        if (!a2) {
            if (b.e) {
                this.f1061b.add(2131755013);
            } else {
                this.f1061b.add(2131755687);
            }
        }
        if (!isHavingOneHandControl) {
            return;
        }
        if (z2) {
            this.f1061b.add(2131755925);
        } else {
            this.f1061b.add(2131755926);
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f1061b == null ? 0 : this.f1061b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.f1061b == null ? null : this.f1061b.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return this.f1061b.get(i).intValue();
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            view = this.c.inflate(2131427622, (ViewGroup) null);
            aVar = new a(getItemId(i), (TextView) view.findViewById(2131297139), (ImageView) view.findViewById(2131297224));
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        aVar.f1062a = getItemId(i);
        aVar.f1063b.setText(((Integer) getItem(i)).intValue());
        if (((Integer) getItem(i)).intValue() != 2131755851 || !AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(this.f1060a, 12)) {
            aVar.c.setVisibility(8);
        } else {
            aVar.c.setVisibility(0);
        }
        return view;
    }
}
