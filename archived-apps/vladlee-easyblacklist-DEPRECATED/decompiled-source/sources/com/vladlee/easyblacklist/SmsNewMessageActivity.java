package com.vladlee.easyblacklist;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.view.MenuItem;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/SmsNewMessageActivity.class */
public class SmsNewMessageActivity extends AppCompatActivity {

    /* renamed from: k */
    private static SmsNewMessageActivity f19282k;

    /* renamed from: l */
    private String f19283l = null;

    /* renamed from: a */
    public static void m274a(String str) {
        Intent intent = new Intent(f19282k, SmsChatActivity.class);
        intent.putExtra(C3356db.f19472a, str);
        intent.putExtra(C3356db.f19473b, f19282k.f19283l);
        f19282k.startActivity(intent);
        f19282k.finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        f19282k = this;
        setContentView(2131492981);
        setTitle(2131624113);
        Cursor query = getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "data1", "data2"}, null, null, "display_name COLLATE LOCALIZED ASC");
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        if (query != null) {
            while (query.moveToNext()) {
                C3383ea eaVar = new C3383ea();
                eaVar.f19532a = query.getString(query.getColumnIndex("display_name"));
                eaVar.f19533b = query.getString(query.getColumnIndex("data1"));
                eaVar.f19534c = (String) ContactsContract.CommonDataKinds.Phone.getTypeLabel(getResources(), query.getInt(query.getColumnIndex("data2")), "");
                if (eaVar.f19534c == null) {
                    eaVar.f19534c = "";
                }
                if (!(eaVar.f19532a == null || eaVar.f19533b == null)) {
                    String str = eaVar.f19532a + PhoneNumberUtils.stripSeparators(eaVar.f19533b);
                    if (!hashMap.containsKey(str)) {
                        arrayList.add(eaVar);
                        hashMap.put(str, Boolean.TRUE);
                    }
                }
            }
            query.close();
        }
        C3388ec ecVar = new C3388ec(this, arrayList);
        ListView listView = (ListView) findViewById(2131296472);
        listView.setAdapter((ListAdapter) ecVar);
        listView.setTextFilterEnabled(true);
        EditText editText = (EditText) findViewById(2131296415);
        editText.addTextChangedListener(new C3448gf(this, ecVar));
        editText.setOnEditorActionListener(new C3449gg(this, editText));
        listView.setOnTouchListener(new View$OnTouchListenerC3450gh(this));
        this.f19283l = getIntent().getStringExtra(C3356db.f19473b);
        if (this.f19283l == null) {
            this.f19283l = "";
        }
        m9927a((Toolbar) findViewById(2131296622));
        m9926b().mo9830a(true);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }
}
