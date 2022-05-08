package com.asus.contacts.settings;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.activities.AboutContactsAppActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.uservoice.uservoicesdk.d;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/settings/c.class */
public class c extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2746a = c.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public static final int f2747b = MainDialtactsActivity.TAB_INDEX_DIALER;
    public static final int c = MainDialtactsActivity.TAB_INDEX_ALLCONTACTS;
    public int d = -1;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/settings/c$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        TextView f2750a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f2751b;
        ImageView c;

        a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/settings/c$b.class */
    public final class b extends ArrayAdapter<String> {

        /* renamed from: b  reason: collision with root package name */
        private Context f2753b;
        private ArrayList<String> c;
        private int d;

        /* JADX WARN: Multi-variable type inference failed */
        public b(Context context, int i, int i2) {
            super(context, 2131427622, (List) i);
            this.f2753b = context;
            this.c = i;
            this.d = i2;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            a aVar;
            boolean isNeedShowRedPoint;
            LayoutInflater layoutInflater = c.this.getActivity().getLayoutInflater();
            if (view == null) {
                view = layoutInflater.inflate(2131427621, viewGroup, false);
                aVar = new a();
                aVar.f2750a = (TextView) view.findViewById(2131297139);
                aVar.f2751b = (ImageView) view.findViewById(2131297224);
                aVar.c = (ImageView) view.findViewById(2131296953);
                view.setTag(aVar);
            } else {
                aVar = (a) view.getTag();
            }
            aVar.f2750a.setText(this.c.get(i));
            switch (i) {
                case 0:
                    aVar.c.setBackgroundResource(2131165262);
                    isNeedShowRedPoint = false;
                    break;
                case 1:
                    isNeedShowRedPoint = AsusRedPointNotificationDualPanelHelper.getInstance().isNeedShowRedPoint(this.f2753b, 9);
                    aVar.c.setBackgroundResource(2131165260);
                    break;
                default:
                    isNeedShowRedPoint = false;
                    break;
            }
            if (isNeedShowRedPoint) {
                aVar.f2751b.setVisibility(0);
            } else {
                aVar.f2751b.setVisibility(8);
            }
            return view;
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(18, getActivity(), "More", true);
            return;
        }
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(10, getActivity(), "More", true);
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        boolean z;
        boolean z2;
        final int i = 2;
        if (bundle != null) {
            this.d = bundle.getInt("KEY_TABPOSITION", this.d);
        }
        if (this.d == f2747b) {
            getActivity();
            z2 = com.android.contacts.userfeedback.a.a();
            z = true;
        } else if (this.d == c) {
            getActivity();
            z2 = com.android.contacts.userfeedback.a.b();
            z = true;
        } else {
            z = false;
            z2 = false;
            i = 1;
        }
        ArrayList arrayList = new ArrayList();
        if (z2) {
            arrayList.add(getActivity().getResources().getString(d.f.d));
        }
        if (z) {
            arrayList.add(getActivity().getResources().getString(2131755799));
        }
        b bVar = new b(getActivity(), arrayList, this.d);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(getActivity().getResources().getString(2131755145));
        builder.setAdapter(bVar, new DialogInterface.OnClickListener() { // from class: com.asus.contacts.settings.c.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                if (c.this.d == c.f2747b) {
                    if (i2 != 0) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(6, c.this.getActivity(), "Dialer", "Dialer: About", null, null);
                        ImplicitIntentsUtil.startActivityInApp(c.this.getActivity(), new Intent(c.this.getActivity(), AboutContactsAppActivity.class));
                        AsusRedPointNotificationDualPanelHelper.getInstance().disableRedPoint(c.this.getActivity(), 9);
                    } else if (i > 1) {
                        com.android.contacts.userfeedback.a.b(c.this.getActivity());
                    } else {
                        ImplicitIntentsUtil.startActivityInApp(c.this.getActivity(), new Intent(c.this.getActivity(), AboutContactsAppActivity.class));
                        AsusRedPointNotificationDualPanelHelper.getInstance().disableRedPoint(c.this.getActivity(), 9);
                    }
                } else if (i2 != 0) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(6, c.this.getActivity(), "Contacts", "Contacts: About", null, null);
                    ImplicitIntentsUtil.startActivityInApp(c.this.getActivity(), new Intent(c.this.getActivity(), AboutContactsAppActivity.class));
                    AsusRedPointNotificationDualPanelHelper.getInstance().disableRedPoint(c.this.getActivity(), 9);
                } else if (i > 1) {
                    com.android.contacts.userfeedback.a.a(c.this.getActivity());
                } else {
                    ImplicitIntentsUtil.startActivityInApp(c.this.getActivity(), new Intent(c.this.getActivity(), AboutContactsAppActivity.class));
                    AsusRedPointNotificationDualPanelHelper.getInstance().disableRedPoint(c.this.getActivity(), 9);
                }
            }
        });
        AlertDialog create = builder.create();
        create.setCanceledOnTouchOutside(false);
        return create;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("KEY_TABPOSITION", this.d);
        super.onSaveInstanceState(bundle);
    }
}
