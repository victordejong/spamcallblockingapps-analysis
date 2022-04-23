package com.vladlee.easyblacklist;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.view.MenuItem;
import android.view.View;
import android.widget.Checkable;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.vladlee.easyblacklist.C3318by;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/AddListActivity.class */
public class AddListActivity extends AppCompatActivity implements Checkable {

    /* renamed from: k */
    private int f19225k = 1;

    /* renamed from: l */
    private boolean f19226l = false;

    /* renamed from: m */
    private ArrayList<C3305bq> f19227m = null;

    /* renamed from: n */
    private ProgressDialog f19228n = null;

    /* renamed from: o */
    private final int f19229o = 5;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.vladlee.easyblacklist.AddListActivity$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/AddListActivity$a.class */
    public final class AsyncTaskC3253a extends AsyncTask<Integer, Void, Void> {

        /* renamed from: b */
        private final int f19231b = 5;

        AsyncTaskC3253a() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Integer[] numArr) {
            int intValue = numArr[0].intValue();
            AddListActivity addListActivity = AddListActivity.this;
            addListActivity.m388a(addListActivity.f19227m, intValue);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r6) {
            if (AddListActivity.this.f19228n != null) {
                if (AddListActivity.this.f19228n.isShowing()) {
                    AddListActivity.this.f19228n.dismiss();
                }
                AddListActivity.this.f19228n = null;
            }
            AddListActivity.this.f19227m = null;
            AddListActivity.this.setRequestedOrientation(-1);
            AddListActivity.this.setResult(-1, new Intent());
            AddListActivity.this.finish();
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            AddListActivity.this.setRequestedOrientation(5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m390a(AddListActivity addListActivity, int i) {
        C3384eb ebVar = (C3384eb) ((ListView) addListActivity.findViewById(2131296481)).getAdapter();
        int count = ebVar.getCount();
        ArrayList<C3305bq> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < count; i2++) {
            C3306br a = ebVar.getItem(i2);
            if (a.f19380b) {
                arrayList.add(a.f19379a);
            }
        }
        addListActivity.f19227m = arrayList;
        if (addListActivity.f19227m.size() > 5) {
            addListActivity.f19228n = ProgressDialog.show(addListActivity, "", addListActivity.getString(2131624171));
            new AsyncTaskC3253a().execute(Integer.valueOf(i));
            return;
        }
        addListActivity.m388a(addListActivity.f19227m, i);
        addListActivity.setResult(-1, new Intent());
        addListActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m388a(ArrayList<C3305bq> arrayList, int i) {
        if (i == 1) {
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                arrayList2.addAll(arrayList.get(i2).f19377b);
            }
            C3318by.m197a(this, arrayList2);
        } else if (i == 2) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                C3318by.m193a(C3318by.C3323e.f19429a, this, arrayList.get(i3).f19377b);
            }
        } else if (i == 3) {
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                C3318by.m193a(C3318by.C3320b.f19426a, this, arrayList.get(i4).f19377b);
            }
        }
    }

    /* renamed from: h */
    private void m383h() {
        int a = ((C3384eb) ((ListView) findViewById(2131296481)).getAdapter()).m106a();
        TextView textView = (TextView) findViewById(2131296604);
        textView.setText(getString(2131624180) + " " + a);
        textView.setVisibility(0);
        findViewById(2131296462).setVisibility(0);
        View findViewById = findViewById(2131296344);
        if (a == 0) {
            findViewById.setVisibility(8);
        } else {
            findViewById.setVisibility(0);
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x016b A[LOOP:0: B:20:0x0163->B:22:0x016b, LOOP_END] */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.AddListActivity.onCreate(android.os.Bundle):void");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        ProgressDialog progressDialog = this.f19228n;
        if (progressDialog != null) {
            if (progressDialog.isShowing()) {
                this.f19228n.dismiss();
            }
            this.f19228n = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        setResult(0, new Intent());
        finish();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m383h();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
    }

    @Override // android.widget.Checkable
    public void toggle() {
        m383h();
    }
}
