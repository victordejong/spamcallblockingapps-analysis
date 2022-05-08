package com.android.contacts;

import android.accounts.Account;
import android.app.ActionBar;
import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SearchView;
import android.widget.TextView;
import com.android.contacts.a.b;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.b;
import com.android.contacts.interactions.a;
import com.android.contacts.list.ax;
import com.android.contacts.list.e;
import com.android.contacts.list.f;
import com.android.contacts.list.g;
import com.android.contacts.list.h;
import com.android.contacts.list.i;
import com.android.contacts.list.j;
import com.android.contacts.list.l;
import com.android.contacts.list.m;
import com.android.contacts.list.p;
import com.android.contacts.simcardmanage.c;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/AsusContactsMultipleSelectionActivity.class */
public class AsusContactsMultipleSelectionActivity extends p implements View.OnCreateContextMenuListener, View.OnFocusChangeListener, SearchView.OnCloseListener, SearchView.OnQueryTextListener, a.AbstractC0041a, h.c, m.f, c.a {
    public static Boolean f = false;
    public static Boolean g = false;
    private long[] A;
    private long[] B;
    private ProgressDialog E;
    private Account H;
    private DialogFragment I;

    /* renamed from: a  reason: collision with root package name */
    protected p<?> f419a;

    /* renamed from: b  reason: collision with root package name */
    protected Intent f420b;
    protected SearchView c;
    protected View d;
    protected TextView e;
    protected MenuItem h;
    protected boolean j;
    private View u;
    private String v;
    private String w;
    private long[] x;
    private String y;
    private long z;
    private final String k = "send_contacts";
    private final int l = 1;
    private final int m = 2;
    private final int n = 3;
    private final int o = 4;
    private final int p = 5;
    private final int q = 6;
    private final int r = 7;
    private final int s = 8;
    private int t = -1;
    private int C = 1;
    private ProgressDialog D = null;
    private ProgressDialog F = null;
    private ProgressDialog G = null;
    protected Bundle i = null;
    private boolean J = true;
    private ax K = new ax() { // from class: com.android.contacts.AsusContactsMultipleSelectionActivity.3
        @Override // com.android.contacts.list.ax
        public final void onCreateNewContactAction() {
        }

        @Override // com.android.contacts.list.ax
        public final void onEditContactAction(Uri uri) {
        }

        @Override // com.android.contacts.list.ax
        public final void onEditContactAction(Uri uri, long j) {
        }

        @Override // com.android.contacts.list.ax
        public final void onPickContactAction(Uri uri) {
        }

        @Override // com.android.contacts.list.ax
        public final void onSelectAContact(boolean z) {
            AsusContactsMultipleSelectionActivity.this.a(z);
        }

        @Override // com.android.contacts.list.ax
        public final void onShortcutIntentCreated(Intent intent) {
        }
    };

    private Bundle a(Bundle bundle) {
        l lVar = (l) ((m) this.f419a).t;
        ArrayList<String> arrayList = new ArrayList<>();
        for (Map.Entry<Long, Integer> entry : lVar.f.entrySet()) {
            Long key = entry.getKey();
            if (entry.getValue().intValue() == 1) {
                arrayList.add(key.toString());
            }
        }
        bundle.putStringArrayList("mapSuggestSimImportExport", arrayList);
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (Long l : lVar.d) {
            arrayList2.add(l.toString());
        }
        bundle.putStringArrayList("mapAllSimImportExport", arrayList2);
        return bundle;
    }

    public void a() {
        switch (this.t) {
            case 1:
                setTitle(2131755466);
                return;
            case 2:
                setTitle(2131755741);
                return;
            case 3:
                Bundle extras = this.f420b.getExtras();
                if (extras == null || extras.getInt(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE) <= 0) {
                    setTitle(2131755624);
                    return;
                } else {
                    setTitle(extras.getInt(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE));
                    return;
                }
            case 4:
                Bundle extras2 = this.f420b.getExtras();
                if (extras2 == null || extras2.getInt(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE) <= 0) {
                    setTitle(2131755696);
                    return;
                } else {
                    setTitle(extras2.getInt(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE));
                    return;
                }
            case 5:
                setTitle(2131755082);
                return;
            case 6:
                setTitle(2131756120);
                return;
            default:
                return;
        }
    }

    @Override // com.android.contacts.list.m.f
    public final void a(int i) {
        switch (i) {
            case 1:
                if (this.D != null && this.D.isShowing()) {
                    this.D.dismiss();
                    removeDialog(1);
                    return;
                }
                return;
            case 2:
                if (this.E != null && this.E.isShowing()) {
                    this.E.dismiss();
                    removeDialog(2);
                    return;
                }
                return;
            case 7:
                if (this.F != null && this.F.isShowing()) {
                    this.F.cancel();
                    this.F = null;
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.android.contacts.list.m.f
    public final void a(int i, int i2) {
        if (this.I != null) {
            this.I = null;
        }
        if (this.J) {
            this.I = c.a(i, i2);
            this.I.show(getFragmentManager(), (String) null);
            this.I.setCancelable(false);
        }
    }

    @Override // com.android.contacts.simcardmanage.c.a
    public final void a(ProgressDialog progressDialog) {
        this.F = progressDialog;
    }

    @Override // com.android.contacts.simcardmanage.c.a
    public final void a(Boolean bool) {
        m.a(bool);
    }

    @Override // com.android.contacts.list.h.c, com.android.contacts.list.m.f
    public final void a(boolean z) {
        if (this.h != null) {
            this.h.setEnabled(z);
            if (this.h != null) {
                com.android.contacts.skin.a.a(this, this.h);
            }
        }
    }

    public void b() {
        switch (this.t) {
            case 1:
                f fVar = new f();
                fVar.f1822b = this.v;
                fVar.c = this.w;
                fVar.d = this.i;
                this.f419a = fVar;
                this.e.setText(2131755680);
                fVar.f1821a = this.K;
                break;
            case 2:
                j jVar = new j();
                jVar.c = this.z;
                jVar.d = this.A;
                jVar.e = this.B;
                this.d.setVisibility(8);
                jVar.f = this.i;
                this.f419a = jVar;
                this.e.setText(getString(2131755227, new Object[]{this.y}));
                this.e.setVisibility(8);
                jVar.f1841b = this.K;
                break;
            case 3:
                m mVar = new m();
                mVar.f1848a = 0;
                mVar.c = this.H;
                mVar.g = this.C;
                this.d.setVisibility(8);
                this.e.setVisibility(8);
                mVar.i = this.i;
                this.f419a = mVar;
                break;
            case 4:
                m mVar2 = new m();
                mVar2.f1848a = 1;
                mVar2.c = this.H;
                mVar2.g = this.C;
                this.d.setVisibility(8);
                this.e.setVisibility(8);
                mVar2.i = this.i;
                this.f419a = mVar2;
                break;
            case 5:
                h hVar = new h();
                if (!PhoneCapabilityTester.isVerizon()) {
                    hVar.f = this.H;
                }
                this.d.setVisibility(8);
                this.e.setVisibility(8);
                hVar.k = this.i;
                this.f419a = hVar;
                if (PhoneCapabilityTester.IsSystemApp()) {
                    b.a();
                    b.a(18, (Activity) this, "Delete multiple contacts", true);
                    break;
                }
                break;
            case 6:
                h hVar2 = new h();
                this.d.setVisibility(8);
                this.e.setVisibility(8);
                hVar2.k = this.i;
                this.f419a = hVar2;
                if (!PhoneCapabilityTester.IsSystemApp()) {
                    b.a();
                    b.a(10, (Activity) this, "Share multiple contact", true);
                    break;
                } else {
                    b.a();
                    b.a(18, (Activity) this, "Share multiple contact", true);
                    break;
                }
            default:
                throw new IllegalStateException("Invalid action code: " + this.t);
        }
        getFragmentManager().beginTransaction().replace(2131296333, this.f419a).commitAllowingStateLoss();
    }

    @Override // com.android.contacts.list.m.f
    public final void b(int i) {
        if (this.F != null) {
            this.F.setProgress(i);
        }
    }

    @Override // com.android.contacts.list.m.f
    public final void c() {
        g = true;
    }

    @Override // com.android.contacts.list.m.f
    public final boolean d() {
        return this.f420b.getExtras().getBoolean("need_result");
    }

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        if (fragment instanceof p) {
            this.f419a = (p) fragment;
        }
    }

    @Override // android.widget.SearchView.OnCloseListener
    public boolean onClose() {
        boolean z = true;
        if (!TextUtils.isEmpty(this.c.getQuery())) {
            this.c.setQuery(null, true);
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            this.j = com.android.contacts.ezmode.h.a(getApplication());
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            f = Boolean.valueOf(PhoneCapabilityTester.isUsingTwoPanes(this));
            this.f420b = getIntent();
            String action = this.f420b.getAction();
            this.t = action.equals("android.intent.action.ASUS_MULTIPLE_PICKER_GROUP_EDIT") ? 1 : action.equals("android.intent.action.ASUS_MULTIPLE_PICKER_LINK_EDIT") ? 2 : action.equals("android.intent.action.ASUS_MULTIPLE_PICKER_SIM_EXPORT") ? 3 : action.equals("android.intent.action.ASUS_MULTIPLE_PICKER_SIM_IMPORT") ? 4 : action.equals("android.intent.action.ASUS_MULTIPLE_PICKER_DELETEALL") ? 5 : action.equals("com.asus.CONTACT_PICK1") ? 7 : action.equals("android.intent.action.ASUS_MULTIPLE_PICKER_ADDTOBLOCKLIST") ? 8 : action.equalsIgnoreCase("send_contacts") ? 6 : -1;
            if (bundle != null) {
                this.i = bundle;
            }
            Bundle extras = this.f420b.getExtras();
            switch (this.t) {
                case 1:
                    if (extras != null) {
                        this.v = extras.getString(SelectAccountActivity.ACCOUNT_NAME);
                        this.w = extras.getString(SelectAccountActivity.ACCOUNT_TYPE);
                        this.x = extras.getLongArray("group_member");
                        break;
                    }
                    break;
                case 2:
                    if (extras != null) {
                        this.z = extras.getLong("target_conatct_id");
                        this.y = extras.getString("main_contact_name");
                        this.A = extras.getLongArray("to_be_linked_contact_id");
                        this.B = extras.getLongArray("suggest_to_unlink");
                        break;
                    }
                    break;
                case 3:
                    if (extras != null) {
                        String string = extras.getString(SelectAccountActivity.ACCOUNT_NAME);
                        String string2 = extras.getString(SelectAccountActivity.ACCOUNT_TYPE);
                        this.C = extras.getInt("simIndex") > 0 ? extras.getInt("simIndex") : 1;
                        if (string != "asus_all_accounts") {
                            this.H = new Account(string, string2);
                            break;
                        } else {
                            this.H = null;
                            break;
                        }
                    }
                    break;
                case 4:
                    if (extras == null) {
                        this.H = new Account(b.a.f611a, b.a.f612b);
                        break;
                    } else {
                        String string3 = extras.getString(SelectAccountActivity.ACCOUNT_NAME);
                        String string4 = extras.getString(SelectAccountActivity.ACCOUNT_TYPE);
                        this.C = extras.getInt("simIndex") > 0 ? extras.getInt("simIndex") : 1;
                        this.H = new Account(string3, string4);
                        break;
                    }
                case 5:
                    if (!PhoneCapabilityTester.isVerizon()) {
                        this.H = new Account(extras.getString(SelectAccountActivity.ACCOUNT_NAME), extras.getString(SelectAccountActivity.ACCOUNT_TYPE));
                        break;
                    }
                    break;
            }
            setContentView(2131427362);
            this.d = findViewById(2131296334);
            this.u = findViewById(2131297289);
            this.e = (TextView) findViewById(2131297277);
            b();
            a();
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowHomeEnabled(false);
                if (this.j) {
                    actionBar.setDisplayHomeAsUpEnabled(false);
                    actionBar.setTitle(2131756087);
                } else {
                    actionBar.setDisplayHomeAsUpEnabled(true);
                }
                actionBar.setDisplayShowTitleEnabled(true);
                actionBar.setDisplayShowCustomEnabled(true);
            }
            this.c = (SearchView) findViewById(2131297252);
            this.c.setQueryHint(getString(2131755688));
            this.c.setOnQueryTextListener(this);
            this.c.setVisibility(0);
            this.c.setFocusable(false);
            this.c.setBackgroundColor(getResources().getColor(2131034116));
            try {
                ImageView imageView = (ImageView) this.c.findViewById(getResources().getIdentifier("android:id/search_mag_icon", null, null));
                LinearLayout linearLayout = (LinearLayout) this.c.findViewById(getResources().getIdentifier("android:id/search_plate", null, null));
                LinearLayout linearLayout2 = (LinearLayout) this.c.findViewById(getResources().getIdentifier("android:id/submit_area", null, null));
                LinearLayout linearLayout3 = (LinearLayout) this.c.findViewById(getResources().getIdentifier("android:id/search_edit_frame", null, null));
                if (imageView != null) {
                    ((ViewGroup.MarginLayoutParams) imageView.getLayoutParams()).setMargins(0, 0, 0, 0);
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.AsusContactsMultipleSelectionActivity.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            if (AsusContactsMultipleSelectionActivity.this.c != null) {
                                EditText editText = (EditText) AsusContactsMultipleSelectionActivity.this.c.findViewById(AsusContactsMultipleSelectionActivity.this.getResources().getIdentifier("android:id/search_src_text", null, null));
                                if (editText != null) {
                                    editText.setFocusable(true);
                                    editText.requestFocus();
                                    ((InputMethodManager) AsusContactsMultipleSelectionActivity.this.getSystemService("input_method")).showSoftInput(editText, 1);
                                }
                            }
                        }
                    });
                    imageView.requestLayout();
                }
                if (linearLayout2 != null) {
                    linearLayout2.setBackground(new ColorDrawable(0));
                }
                if (linearLayout != null) {
                    linearLayout.setBackground(new ColorDrawable(0));
                }
                if (linearLayout3 != null) {
                    linearLayout3.setBackground(getResources().getDrawable(2131165914));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                    layoutParams.gravity = 16;
                    layoutParams.setMargins((int) getResources().getDimension(2131099965), 0, (int) getResources().getDimension(2131099965), 0);
                    linearLayout3.setLayoutParams(layoutParams);
                }
            } catch (Exception e) {
                Log.d("AsusContactsMultipleSelectionActivity", "searchview resource exception: " + e.toString());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x02cc  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected android.app.Dialog onCreateDialog(int r8, android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 831
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.AsusContactsMultipleSelectionActivity.onCreateDialog(int, android.os.Bundle):android.app.Dialog");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        boolean z = true;
        getMenuInflater().inflate(2131492867, menu);
        this.h = menu.findItem(2131297244);
        MenuItem findItem = menu.findItem(2131297041);
        if (findItem != null) {
            com.android.contacts.skin.a.a(this, findItem);
        }
        this.h.setVisible(true);
        this.h.setEnabled(false);
        if (this.h != null) {
            com.android.contacts.skin.a.a(this, this.h);
        }
        switch (this.t) {
            case 1:
                this.h.setTitle(2131755597);
                if (this.f419a != null && (this.f419a instanceof f)) {
                    this.h.setEnabled(Boolean.valueOf(((f) this.f419a).g > 0).booleanValue());
                    if (this.h != null) {
                        com.android.contacts.skin.a.a(this, this.h);
                        break;
                    }
                }
                break;
            case 2:
                this.h.setTitle(2131755598);
                if (this.f419a != null && (this.f419a instanceof j)) {
                    if (((j) this.f419a).g <= 0) {
                        z = false;
                    }
                    this.h.setEnabled(Boolean.valueOf(z).booleanValue());
                    if (this.h != null) {
                        com.android.contacts.skin.a.a(this, this.h);
                        break;
                    }
                }
                break;
            case 3:
                this.h.setTitle(2131755086);
                break;
            case 4:
                this.h.setTitle(2131755088);
                break;
            case 5:
                this.h.setTitle(2131755819);
                break;
            case 6:
                this.h.setTitle(2131755849);
                break;
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.android.contacts.p, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.F = null;
        this.G = null;
        MemoryUtils.fixInputMethodManagerLeak(this);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        switch (view.getId()) {
            case 2131297252:
                if (z) {
                    View findFocus = this.c.findFocus();
                    InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
                    if (inputMethodManager != null && !inputMethodManager.showSoftInput(findFocus, 0)) {
                        Log.w("AsusContactsMultipleSelectionActivity", "Failed to show soft input method.");
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x020c  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r6) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.AsusContactsMultipleSelectionActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        if (this.t == 2 || this.t == 3 || this.t == 4 || this.t == 5 || this.t == 6 || this.t == 7 || this.t == 8) {
            this.d.setVisibility(8);
            this.u.setVisibility(8);
        } else if (TextUtils.isEmpty(str)) {
            this.d.setVisibility(0);
            this.u.setVisibility(8);
        } else {
            this.u.setVisibility(0);
            this.d.setVisibility(8);
        }
        this.f419a.a(str, true);
        return true;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        if (this.c == null) {
            return true;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(this.c.getWindowToken(), 0);
        }
        this.c.clearFocus();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        switch (this.t) {
            case 1:
                ((f) this.f419a).a(getIntent().getExtras().getString("group_name"));
                return;
            case 2:
            default:
                return;
            case 3:
                if (m.h()) {
                    ((m) this.f419a).d();
                    return;
                }
                return;
            case 4:
                if (m.i()) {
                    ((m) this.f419a).d();
                    return;
                }
                return;
            case 5:
                if (h.i()) {
                    ((h) this.f419a).d();
                    return;
                }
                return;
        }
    }

    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.J = false;
        super.onSaveInstanceState(bundle);
        switch (this.t) {
            case 1:
                e eVar = (e) ((f) this.f419a).t;
                ArrayList<String> arrayList = new ArrayList<>();
                for (Map.Entry<Uri, Integer> entry : eVar.g.entrySet()) {
                    Uri key = entry.getKey();
                    if (entry.getValue().intValue() == 1) {
                        arrayList.add(key.toString());
                    }
                }
                bundle.putStringArrayList("mapAsusAllMemberList", arrayList);
                bundle.putInt("to_add_count", ((f) this.f419a).g);
                return;
            case 2:
                i iVar = (i) ((j) this.f419a).t;
                ArrayList<String> arrayList2 = new ArrayList<>();
                for (Map.Entry<Uri, Integer> entry2 : iVar.g.entrySet()) {
                    Uri key2 = entry2.getKey();
                    if (entry2.getValue().intValue() == 1) {
                        arrayList2.add(key2.toString());
                    }
                }
                bundle.putStringArrayList("mapSuggestAsusJoin", arrayList2);
                ArrayList<String> arrayList3 = new ArrayList<>();
                for (Map.Entry<Uri, Integer> entry3 : iVar.f.entrySet()) {
                    Uri key3 = entry3.getKey();
                    if (entry3.getValue().intValue() == 1) {
                        arrayList3.add(key3.toString());
                    }
                }
                bundle.putStringArrayList("mapAllAsusJoin", arrayList3);
                ArrayList<String> arrayList4 = new ArrayList<>();
                for (Map.Entry<Long, Integer> entry4 : iVar.h.entrySet()) {
                    Long key4 = entry4.getKey();
                    if (entry4.getValue().intValue() == 1) {
                        arrayList4.add(key4.toString());
                    }
                }
                bundle.putStringArrayList("mapUnlinkSuggestAsusJoin", arrayList4);
                bundle.putInt("to_join_count", ((j) this.f419a).g);
                return;
            case 3:
                if (m.h()) {
                    bundle.putInt("totalSelectNumber", m.j());
                }
                a(bundle);
                return;
            case 4:
                if (m.i()) {
                    bundle.putInt("totalSelectNumber", m.j());
                }
                a(bundle);
                return;
            case 5:
            case 6:
                g gVar = (g) ((h) this.f419a).t;
                ArrayList<String> arrayList5 = new ArrayList<>();
                for (Map.Entry<Uri, Integer> entry5 : gVar.g.entrySet()) {
                    Uri key5 = entry5.getKey();
                    if (entry5.getValue().intValue() == 1) {
                        arrayList5.add(key5.toString());
                    }
                }
                bundle.putStringArrayList("mapSuggestAsusDeleteAll", arrayList5);
                ArrayList<String> arrayList6 = new ArrayList<>();
                for (Uri uri : gVar.e) {
                    arrayList6.add(uri.toString());
                }
                bundle.putStringArrayList("mapAllAsusDeleteAll", arrayList6);
                return;
            default:
                return;
        }
    }

    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onStart() {
        this.J = true;
        super.onStart();
        switch (this.t) {
            case 1:
                f fVar = (f) this.f419a;
                long[] jArr = this.x;
                ArrayList arrayList = new ArrayList();
                for (long j : jArr) {
                    arrayList.add(Long.valueOf(j));
                }
                fVar.b(arrayList);
                ((f) this.f419a).a(getIntent().getExtras().getString("group_name"));
                return;
            case 2:
            default:
                return;
            case 3:
                if (m.h() && this.F == null) {
                    a(1, m.j());
                    return;
                }
                return;
            case 4:
                if (m.i() && this.F == null) {
                    a(2, m.j());
                    return;
                }
                return;
            case 5:
                if (h.i() && this.G == null) {
                    DialogFragment a2 = a.a();
                    a2.show(getFragmentManager(), (String) null);
                    a2.setCancelable(false);
                    return;
                }
                return;
        }
    }

    @Override // com.android.contacts.interactions.a.AbstractC0041a
    public void setProgressDialog(ProgressDialog progressDialog) {
        this.G = progressDialog;
        if (this.f419a instanceof h) {
            ((h) this.f419a).a(progressDialog);
            ((h) this.f419a).g = this;
        } else if (this.f419a instanceof m) {
            ((m) this.f419a).f = progressDialog;
        }
    }
}
