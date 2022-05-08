package com.android.contacts.ipcall;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.android.contacts.ipcall.a;
import com.android.contacts.ipcall.c;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/AsusIpCallSettingActivity.class */
public class AsusIpCallSettingActivity extends Activity implements a.AbstractC0042a, c.AbstractC0043c {

    /* renamed from: a  reason: collision with root package name */
    ProgressDialog f1479a;

    /* renamed from: b  reason: collision with root package name */
    MenuItem f1480b;
    public View.OnClickListener c = new View.OnClickListener() { // from class: com.android.contacts.ipcall.AsusIpCallSettingActivity.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b bVar = (b) view.getTag();
            if (bVar != null) {
                com.android.contacts.ipcall.b.a(view.getContext(), bVar.f1485a);
                AsusIpCallSettingActivity.this.c();
            }
        }
    };
    public View.OnClickListener d = new View.OnClickListener() { // from class: com.android.contacts.ipcall.AsusIpCallSettingActivity.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b bVar = (b) view.getTag();
            if (bVar != null) {
                com.android.contacts.ipcall.b.a(view.getContext(), bVar.f1485a);
                AsusIpCallSettingActivity.this.c();
            }
        }
    };
    private ListView e;
    private a f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/AsusIpCallSettingActivity$a.class */
    public final class a extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<AsusIpCodeItem> f1483a = new ArrayList<>();
        private LayoutInflater c;

        public a(Context context) {
            if (context != null) {
                this.c = LayoutInflater.from(context);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public AsusIpCodeItem getItem(int i) {
            return (this.f1483a == null || i >= this.f1483a.size()) ? null : this.f1483a.get(i);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f1483a == null ? 0 : this.f1483a.size();
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            AsusIpCodeItem a2 = getItem(i);
            View inflate = this.c.inflate(2131427589, viewGroup, false);
            b bVar = new b(inflate, i);
            inflate.setTag(bVar);
            bVar.f1486b.setText(a2.f1489a);
            bVar.c.setChecked(a2.f1490b);
            bVar.c.setOnClickListener(AsusIpCallSettingActivity.this.c);
            inflate.setOnClickListener(AsusIpCallSettingActivity.this.d);
            return inflate;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/AsusIpCallSettingActivity$b.class */
    final class b {

        /* renamed from: a  reason: collision with root package name */
        int f1485a;

        /* renamed from: b  reason: collision with root package name */
        final TextView f1486b;
        final RadioButton c;

        public b(View view, int i) {
            this.f1485a = i;
            this.f1486b = (TextView) view.findViewById(2131296958);
            this.c = (RadioButton) view.findViewById(2131297207);
            this.c.setTag(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/AsusIpCallSettingActivity$c.class */
    public final class c extends AsyncTask<Long, Integer, ArrayList<AsusIpCodeItem>> {

        /* renamed from: b  reason: collision with root package name */
        private Context f1488b;
        private a c;

        public c(Context context, a aVar) {
            this.f1488b = context;
            this.c = aVar;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ ArrayList<AsusIpCodeItem> doInBackground(Long[] lArr) {
            return com.android.contacts.ipcall.b.c(this.f1488b);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(ArrayList<AsusIpCodeItem> arrayList) {
            ArrayList<AsusIpCodeItem> arrayList2 = arrayList;
            AsusIpCallSettingActivity.this.b();
            a aVar = this.c;
            if (arrayList2.size() != 0) {
                aVar.f1483a.clear();
                Iterator<AsusIpCodeItem> it = arrayList2.iterator();
                while (it.hasNext()) {
                    aVar.f1483a.add(it.next());
                }
            }
            aVar.notifyDataSetChanged();
            AsusIpCallSettingActivity.this.a();
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            AsusIpCallSettingActivity asusIpCallSettingActivity = AsusIpCallSettingActivity.this;
            if (asusIpCallSettingActivity.f1479a != null && !asusIpCallSettingActivity.f1479a.isShowing()) {
                asusIpCallSettingActivity.f1479a.show();
            }
        }
    }

    public final void a() {
        if (this.f1480b != null) {
            this.f1480b.setEnabled(com.android.contacts.ipcall.b.a(this) > 0);
        }
    }

    @Override // com.android.contacts.ipcall.a.AbstractC0042a
    public final void a(String str) {
        boolean a2 = com.android.contacts.ipcall.b.a(this, str);
        Log.d(com.android.contacts.ipcall.b.f1497a, "Add result: " + a2 + ", add ip code: " + str);
        if (a2) {
            c();
        }
    }

    @Override // com.android.contacts.ipcall.c.AbstractC0043c
    public final void a(ArrayList<AsusIpCodeItem> arrayList) {
        boolean a2 = com.android.contacts.ipcall.b.a(this, arrayList);
        Log.d(com.android.contacts.ipcall.b.f1497a, "Remove result: " + a2);
        if (a2) {
            c();
        }
    }

    public final void b() {
        if (this.f1479a != null) {
            this.f1479a.cancel();
            this.f1479a.dismiss();
        }
    }

    public final void c() {
        try {
            if (this.f == null) {
                this.f = new a(this);
            }
            new c(this, this.f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Long[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427384);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayOptions(12, 12);
            actionBar.setDisplayShowHomeEnabled(false);
        }
        this.e = (ListView) findViewById(2131296960);
        this.f = new a(this);
        this.e.setAdapter((ListAdapter) this.f);
        this.f1479a = new ProgressDialog(this);
        this.f1479a.setCancelable(false);
        this.f1479a.setMessage(getString(2131755350));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(2131492898, menu);
        return true;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        b();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                onBackPressed();
                z = true;
                break;
            case 2131297033:
                com.android.contacts.ipcall.a.a().show(getFragmentManager(), "add_ip_code");
                z = true;
                break;
            case 2131297063:
                z = true;
                if (this.f != null) {
                    com.android.contacts.ipcall.c.a(this.f.f1483a).show(getFragmentManager(), "remove_ip_code");
                    z = true;
                    break;
                }
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        this.f1480b = menu.findItem(2131297063);
        a();
        return true;
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        com.android.contacts.ipcall.b.d(this);
        c();
    }
}
