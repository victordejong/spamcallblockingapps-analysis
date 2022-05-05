package com.vladlee.easyblacklist;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Html;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.app.C0598a;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p043e.p044a.AbstractC0816a;
import androidx.p043e.p045b.C0825b;
import androidx.p043e.p045b.C0826c;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.vladlee.easyblacklist.C3318by;
import java.util.ArrayList;
/* renamed from: com.vladlee.easyblacklist.l */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/l.class */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC3472l extends Fragment implements SharedPreferences.OnSharedPreferenceChangeListener, AbstractC0816a.AbstractC0817a<Cursor> {

    /* renamed from: b */
    private static SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19666b;

    /* renamed from: a */
    private ProgressDialog f19667a = null;

    /* renamed from: c */
    private C3468k f19668c = null;

    /* renamed from: d */
    private ActionMode f19669d = null;

    /* renamed from: e */
    private ActionMode.Callback f19670e = new ActionMode$CallbackC3475m(this);

    /* renamed from: com.vladlee.easyblacklist.l$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/l$a.class */
    public final class DialogInterface$OnClickListenerC3473a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        private int f19672b;

        public DialogInterface$OnClickListenerC3473a(int i) {
            SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this = r4;
            this.f19672b = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                FragmentActivity activity = SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this.getActivity();
                SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this.getView().findViewById(2131296471);
                if (SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this.f19668c.getCount() > this.f19672b) {
                    Cursor cursor = (Cursor) SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this.f19668c.getItem(this.f19672b);
                    String string = cursor.getString(cursor.getColumnIndex("phone"));
                    if (string != null) {
                        C3305bq c = C3311bt.m229a(activity).m216c(activity, string);
                        if (c != null) {
                            c.m249a(string);
                            ArrayList<String> arrayList = c.f19377b;
                            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                C3318by.m183c(activity, arrayList.get(i2));
                            }
                            C3318by.m202a(activity, c.f19376a);
                            return;
                        }
                        C3318by.m183c(activity, string);
                        return;
                    }
                    String string2 = cursor.getString(cursor.getColumnIndex("filter"));
                    int i3 = cursor.getInt(cursor.getColumnIndex("ignore_case"));
                    String str = string2;
                    if (i3 != 0) {
                        str = string2.toLowerCase();
                    }
                    activity.getContentResolver().delete(C3318by.C3321c.f19427a, "filter = ? AND ignore_case = ?", new String[]{str, String.valueOf(i3)});
                }
            }
        }
    }

    /* renamed from: com.vladlee.easyblacklist.l$b */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/l$b.class */
    public final class AsyncTaskC3474b extends AsyncTask<String, Void, ArrayList<C3305bq>> {
        AsyncTaskC3474b() {
            SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this = r4;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ ArrayList<C3305bq> doInBackground(String[] strArr) {
            return C3324bz.m157a(SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this.getActivity(), strArr[0]);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(ArrayList<C3305bq> arrayList) {
            ArrayList<C3305bq> arrayList2 = arrayList;
            FragmentActivity activity = SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this.getActivity();
            if (activity != null) {
                if (SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this.f19667a != null) {
                    if (SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this.f19667a.isShowing()) {
                        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this.f19667a.dismiss();
                    }
                    SharedPreferences$OnSharedPreferenceChangeListenerC3472l.this.f19667a = null;
                }
                if (arrayList2 != null) {
                    C3324bz.m156a(activity, arrayList2);
                } else {
                    Toast.makeText(activity, activity.getString(2131624064), 0).show();
                }
            }
        }
    }

    public SharedPreferences$OnSharedPreferenceChangeListenerC3472l() {
        f19666b = this;
    }

    /* renamed from: a */
    public static /* synthetic */ C3468k m22a(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        return lVar.f19668c;
    }

    /* renamed from: a */
    public static void m25a(Activity activity) {
        if (activity != null) {
            SwitchCompat switchCompat = (SwitchCompat) activity.findViewById(2131296570);
            if (switchCompat != null) {
                switchCompat.setChecked(C3392ee.m80a((Context) activity, "pref_block_calls_option", true));
                switchCompat.setOnCheckedChangeListener(new C3482t(activity));
            }
            SwitchCompat switchCompat2 = (SwitchCompat) activity.findViewById(2131296575);
            if (switchCompat2 != null) {
                switchCompat2.setChecked(C3392ee.m80a((Context) activity, "pref_block_sms_option", false));
                switchCompat2.setOnCheckedChangeListener(new C3483u(activity));
            }
        }
    }

    /* renamed from: a */
    private void m24a(Context context) {
        if (C0598a.m8618a(context, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            m23a(context, 10003);
        } else if (C3456gn.m29b(context)) {
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(context);
            aVar.m9804a(2131624170);
            aVar.m9791b(2131624065);
            aVar.m9796a(context.getResources().getString(2131624222), new DialogInterface$OnClickListenerC3480r(this));
            aVar.m9787b(context.getResources().getString(2131624114), new DialogInterface$OnClickListenerC3481s(this));
            aVar.m9792b().show();
        } else {
            m6x();
        }
    }

    /* renamed from: a */
    private void m23a(Context context, int i) {
        if (C0598a.m8759a((Activity) getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(context);
            aVar.m9788b(context.getString(2131624142));
            aVar.m9796a(getString(2131624101), new DialogInterface$OnClickListenerC3264af(this, i));
            aVar.m9787b(getString(2131624009), new DialogInterface$OnClickListenerC3265ag(this));
            aVar.m9792b().show();
        } else if (C3392ee.m80a(context, "pref_storage_permission_asked", false)) {
            DialogInterfaceC0308m.C0309a aVar2 = new DialogInterfaceC0308m.C0309a(context);
            aVar2.m9788b(String.format(getString(2131624147), getString(2131623974)));
            aVar2.m9796a(getString(2131624184), new DialogInterface$OnClickListenerC3266ah(this, context));
            aVar2.m9787b(getString(2131624009), new DialogInterface$OnClickListenerC3267ai(this));
            aVar2.m9792b().show();
        } else {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, i);
            C3392ee.m74b(context, "pref_storage_permission_asked", true);
        }
    }

    /* renamed from: b */
    public static void m19b(Activity activity) {
        View findViewById;
        if (activity != null && (findViewById = activity.findViewById(2131296454)) != null) {
            if (C3392ee.m80a((Context) activity, "pref_enable_blocking", true) || !C3392ee.m80a((Context) activity, "pref_schedule_enable", false)) {
                findViewById.setVisibility(8);
            } else {
                findViewById.setVisibility(0);
            }
        }
    }

    /* renamed from: b */
    private void m18b(Context context) {
        if (C0598a.m8618a(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            C3324bz.m159a(context);
        } else {
            m23a(context, 10004);
        }
    }

    /* renamed from: b */
    public static void m16b(String str) {
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar = f19666b;
        lVar.f19667a = ProgressDialog.show(lVar.getActivity(), "", f19666b.getString(2131624107));
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar2 = f19666b;
        lVar2.getClass();
        new AsyncTaskC3474b().execute(str);
    }

    /* renamed from: d */
    public static void m13d(Activity activity) {
        boolean z;
        ImageButton imageButton;
        Resources resources;
        int i;
        boolean z2 = C3392ee.m80a((Context) activity, "pref_block_calls_option", true) && (C3392ee.m80a((Context) activity, "pref_block_hidden_calls", false) || C3392ee.m80a((Context) activity, "pref_block_unknown_calls", false) || C3392ee.m80a((Context) activity, "pref_block_all_calls", false) || C3392ee.m80a((Context) activity, "pref_block_all_calls_if_voip", false));
        if (C3392ee.m80a((Context) activity, "pref_block_sms_option", true)) {
            z = true;
            if (!C3392ee.m80a((Context) activity, "pref_block_unknown_sms", false)) {
                z = true;
                if (!C3392ee.m80a((Context) activity, "pref_block_non_numeric_sms", false)) {
                    if (C3392ee.m80a((Context) activity, "pref_block_all_sms", false)) {
                        z = true;
                    }
                }
            }
            if (!z2 || z) {
                imageButton = (ImageButton) activity.findViewById(2131296342);
                resources = activity.getResources();
                i = 2131099673;
            } else {
                imageButton = (ImageButton) activity.findViewById(2131296342);
                resources = activity.getResources();
                i = 17170443;
            }
            imageButton.setColorFilter(resources.getColor(i));
            ((ImageButton) activity.findViewById(2131296343)).setColorFilter(activity.getResources().getColor(i));
        }
        z = false;
        if (!z2) {
        }
        imageButton = (ImageButton) activity.findViewById(2131296342);
        resources = activity.getResources();
        i = 2131099673;
        imageButton.setColorFilter(resources.getColor(i));
        ((ImageButton) activity.findViewById(2131296343)).setColorFilter(activity.getResources().getColor(i));
    }

    /* renamed from: d */
    public static void m11d(boolean z) {
        if (z) {
            new DialogC3357dc(f19666b.getActivity()).show();
            return;
        }
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar = f19666b;
        lVar.f19667a = ProgressDialog.show(lVar.getActivity(), "", f19666b.getString(2131624107));
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar2 = f19666b;
        lVar2.getClass();
        new AsyncTaskC3474b().execute(null);
    }

    /* renamed from: x */
    public void m6x() {
        FragmentActivity activity = getActivity();
        String a = C3456gn.m32a(activity, C3318by.m192b(activity));
        if (a != null) {
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(activity);
            aVar.m9788b(activity.getString(2131624066) + a);
            aVar.m9796a(activity.getResources().getString(17039370), new DialogInterface$OnClickListenerC3479q(this));
            aVar.m9792b().show();
            return;
        }
        Toast.makeText(activity, activity.getString(2131624068), 0).show();
    }

    /* renamed from: y */
    private void m5y() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            SwitchCompat switchCompat = (SwitchCompat) activity.findViewById(2131296572);
            switchCompat.setChecked(C3392ee.m80a((Context) activity, "pref_block_calls_option", true));
            switchCompat.setOnCheckedChangeListener(new C3484v(this, activity));
            CheckBox checkBox = (CheckBox) activity.findViewById(2131296375);
            checkBox.setChecked(C3392ee.m80a((Context) activity, "pref_block_hidden_calls", false));
            checkBox.setOnCheckedChangeListener(new C3485w(this, activity));
            CheckBox checkBox2 = (CheckBox) activity.findViewById(2131296377);
            checkBox2.setChecked(C3392ee.m80a((Context) activity, "pref_block_unknown_calls", false));
            checkBox2.setOnCheckedChangeListener(new C3486x(this, activity));
            CheckBox checkBox3 = (CheckBox) activity.findViewById(2131296372);
            checkBox3.setChecked(C3392ee.m80a((Context) activity, "pref_block_all_calls", false));
            checkBox3.setOnCheckedChangeListener(new C3487y(this, activity));
            CheckBox checkBox4 = (CheckBox) activity.findViewById(2131296373);
            checkBox4.setChecked(C3392ee.m80a((Context) activity, "pref_block_all_calls_if_voip", false));
            checkBox4.setOnCheckedChangeListener(new C3259aa(this, activity));
            SwitchCompat switchCompat2 = (SwitchCompat) activity.findViewById(2131296573);
            switchCompat2.setChecked(C3392ee.m80a((Context) activity, "pref_block_sms_option", true));
            switchCompat2.setOnCheckedChangeListener(new C3260ab(this, activity));
            CheckBox checkBox5 = (CheckBox) activity.findViewById(2131296378);
            checkBox5.setChecked(C3392ee.m80a((Context) activity, "pref_block_unknown_sms", false));
            checkBox5.setOnCheckedChangeListener(new C3261ac(this, activity));
            CheckBox checkBox6 = (CheckBox) activity.findViewById(2131296376);
            checkBox6.setChecked(C3392ee.m80a((Context) activity, "pref_block_non_numeric_sms", false));
            checkBox6.setOnCheckedChangeListener(new C3262ad(this, activity));
            CheckBox checkBox7 = (CheckBox) activity.findViewById(2131296374);
            checkBox7.setChecked(C3392ee.m80a((Context) activity, "pref_block_all_sms", false));
            checkBox7.setOnCheckedChangeListener(new C3263ae(this, activity));
        }
    }

    /* renamed from: z */
    private void m4z() {
        FragmentActivity activity = getActivity();
        boolean a = C3392ee.m80a((Context) activity, "pref_block_calls_option", true);
        activity.findViewById(2131296375).setEnabled(a);
        activity.findViewById(2131296375).setEnabled(a);
        activity.findViewById(2131296377).setEnabled(a);
        activity.findViewById(2131296372).setEnabled(a);
        activity.findViewById(2131296373).setEnabled(a);
        boolean a2 = C3392ee.m80a((Context) activity, "pref_block_sms_option", true);
        activity.findViewById(2131296378).setEnabled(a2);
        activity.findViewById(2131296376).setEnabled(a2);
        activity.findViewById(2131296374).setEnabled(a2);
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: a */
    public final /* synthetic */ void mo20a(Cursor cursor) {
        Cursor cursor2 = cursor;
        this.f19668c.swapCursor(cursor2);
        if (getActivity() != null) {
            boolean z = cursor2.getCount() > 0;
            FragmentActivity activity = getActivity();
            if (activity != null) {
                TextView textView = (TextView) activity.findViewById(2131296600);
                if (z) {
                    textView.setVisibility(8);
                } else {
                    textView.setText(Html.fromHtml(String.format(getString(2131624115), "<b>+</b>")));
                    textView.setVisibility(0);
                }
            }
            ListView listView = (ListView) getActivity().findViewById(2131296471);
            if (listView != null) {
                this.f19668c.notifyDataSetChanged();
                listView.invalidate();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setHasOptionsMenu(true);
        FragmentActivity activity = getActivity();
        View view = getView();
        if (!(activity == null || view == null)) {
            ListView listView = (ListView) view.findViewById(2131296471);
            C3335ch.m154a(activity, 864000000L, true);
            listView.setAdapter((ListAdapter) this.f19668c);
            listView.setOnItemLongClickListener(new C3269ak(this));
            listView.setOnItemClickListener(new C3270al(this, activity));
            listView.setOnTouchListener(new View$OnTouchListenerC3271am(this));
            listView.setItemsCanFocus(false);
        }
        ImageButton imageButton = (ImageButton) getActivity().findViewById(2131296343);
        if (imageButton != null) {
            imageButton.setOnClickListener(new View$OnClickListenerC3272an(this));
        }
        ImageButton imageButton2 = (ImageButton) getActivity().findViewById(2131296342);
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(new View$OnClickListenerC3273ao(this));
        }
        PreferenceManager.getDefaultSharedPreferences(getActivity()).registerOnSharedPreferenceChangeListener(this);
        m25a((Activity) getActivity());
        m5y();
        m4z();
        m13d(getActivity());
        ((RelativeLayout) getActivity().findViewById(2131296334)).setOnTouchListener(new View$OnTouchListenerC3274ap(this));
        getActivity().findViewById(2131296600).setOnTouchListener(new View$OnTouchListenerC3478p(this));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 10001 && i2 == -1) {
            String path = intent.getData().getPath();
            String[] split = path.split(":");
            if (split.length > 1) {
                path = split[1];
            }
            FirebaseAnalytics.getInstance(getActivity()).m646a("blacklistFragment_addFromFile", new Bundle());
            this.f19667a = ProgressDialog.show(getActivity(), "", getString(2131624107));
            new AsyncTaskC3474b().execute(path);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f19667a != null) {
            this.f19667a = ProgressDialog.show(getActivity(), "", getString(2131624107));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f19668c = new C3468k(getContext());
        getLoaderManager().mo8003a(1, this);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(2131558401, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        return layoutInflater.inflate(2131492895, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        ActionMode actionMode = this.f19669d;
        if (actionMode != null) {
            actionMode.finish();
            this.f19669d = null;
        }
        getLoaderManager().mo8004a(1);
        C3468k kVar = this.f19668c;
        if (kVar != null) {
            kVar.m26b();
            this.f19668c = null;
        }
        ProgressDialog progressDialog = this.f19667a;
        if (progressDialog != null) {
            if (progressDialog.isShowing()) {
                this.f19667a.dismiss();
            }
            this.f19667a = null;
        }
        f19666b = null;
        PreferenceManager.getDefaultSharedPreferences(getActivity()).unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        FragmentActivity activity = getActivity();
        int itemId = menuItem.getItemId();
        if (itemId == 2131296398) {
            FragmentActivity activity2 = getActivity();
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(activity2);
            aVar.m9797a(getString(2131624043));
            aVar.m9788b(getString(2131624033));
            aVar.m9803a(new DialogInterface$OnClickListenerC3488z(this, activity2));
            aVar.m9790b(new DialogInterface$OnClickListenerC3268aj(this));
            aVar.m9792b().show();
        } else if (itemId == 2131296484) {
            m18b((Context) activity);
        } else if (itemId == 2131296527) {
            m24a((Context) activity);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 10003:
                if (iArr[0] == 0) {
                    m24a(getContext());
                    return;
                }
                return;
            case 10004:
                if (iArr[0] == 0) {
                    m18b(getContext());
                    return;
                }
                return;
            case 10005:
                if (iArr[0] == 0) {
                    SwitchCompat switchCompat = (SwitchCompat) getActivity().findViewById(2131296573);
                    if (switchCompat != null) {
                        switchCompat.setChecked(true);
                        C3392ee.m74b(getContext(), "pref_block_sms_option", true);
                        return;
                    }
                    C3392ee.m74b(getContext(), "pref_block_sms_option", false);
                    return;
                }
                return;
            default:
                super.onRequestPermissionsResult(i, strArr, iArr);
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        m25a((Activity) getActivity());
        m5y();
        m4z();
        m13d(getActivity());
        m19b((Activity) getActivity());
        C3335ch.m154a(getContext(), 864000000L, true);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("pref_block_calls_option".equals(str) || "pref_block_sms_option".equals(str)) {
            m25a((Activity) getActivity());
            m5y();
            m4z();
            m13d(getActivity());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        f19666b = this;
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: r_ */
    public final C0826c<Cursor> mo8r_() {
        return new C0825b(getContext(), C3318by.C3321c.f19427a, new String[]{"_id", "phone", "filter", "ignore_case", "contact_id"}, null, null, "display_name ASC GROUP BY display_name");
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: s_ */
    public final void mo7s_() {
        this.f19668c.swapCursor(null);
    }
}
