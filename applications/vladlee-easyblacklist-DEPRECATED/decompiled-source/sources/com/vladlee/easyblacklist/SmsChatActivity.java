package com.vladlee.easyblacklist;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.appcompat.view.AbstractC0343b;
import androidx.p043e.p044a.AbstractC0816a;
import androidx.p043e.p045b.C0825b;
import androidx.p043e.p045b.C0826c;
import com.vladlee.easyblacklist.C3318by;
import com.vladlee.p077b.p078a.C3251a;
import com.vladlee.p077b.p078a.C3252b;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/SmsChatActivity.class */
public class SmsChatActivity extends AppCompatActivity implements AbstractC0816a.AbstractC0817a<Cursor> {

    /* renamed from: k */
    private String f19271k;

    /* renamed from: l */
    private long f19272l;

    /* renamed from: m */
    private BroadcastReceiver f19273m = null;

    /* renamed from: n */
    private BroadcastReceiver f19274n = null;

    /* renamed from: o */
    private ContentObserver f19275o = null;

    /* renamed from: p */
    private boolean f19276p = false;

    /* renamed from: q */
    private boolean f19277q = false;

    /* renamed from: r */
    private C3376du f19278r = null;

    /* renamed from: s */
    private long f19279s = 0;

    /* renamed from: t */
    private AbstractC0343b f19280t = null;

    /* renamed from: u */
    private AbstractC0343b.AbstractC0344a f19281u = new C3427fl(this);

    /* renamed from: a */
    public static /* synthetic */ C3376du m285a(SmsChatActivity smsChatActivity) {
        return smsChatActivity.f19278r;
    }

    /* renamed from: a */
    public void m287a(long j) {
        if (this.f19280t != null) {
            C3376du duVar = this.f19278r;
            duVar.m114a(j, !duVar.m115a(j));
            this.f19278r.notifyDataSetChanged();
            if (!this.f19278r.m111d()) {
                this.f19280t.mo9684c();
            } else if (this.f19278r.m112c()) {
                if (!this.f19280t.mo9687b().findItem(2131296308).isVisible()) {
                    this.f19280t.mo9683d();
                }
            } else if (this.f19280t.mo9687b().findItem(2131296308).isVisible()) {
                this.f19280t.mo9683d();
            }
        }
    }

    /* renamed from: a */
    public static void m286a(Context context, String str, String str2) {
        SmsManager smsManager = SmsManager.getDefault();
        ArrayList<String> divideMessage = smsManager.divideMessage(str2);
        ArrayList<PendingIntent> arrayList = new ArrayList<>();
        int size = divideMessage.size();
        C3251a aVar = new C3251a();
        aVar.f19224b = str2;
        aVar.f19223a = C3307bs.m246a(context, str);
        Uri b = C3252b.m392b(context, aVar);
        int i = 0;
        while (i < size) {
            Intent intent = new Intent("SMS_SENT");
            intent.putExtra("msg_last_part", i == size - 1);
            intent.putExtra("msg_uri", b.toString());
            arrayList.add(PendingIntent.getBroadcast(context, 0, intent, 1073741824));
            i++;
        }
        smsManager.sendMultipartTextMessage(str, null, divideMessage, arrayList, null);
    }

    /* renamed from: h */
    private void m275h() {
        BroadcastReceiver broadcastReceiver = this.f19273m;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
            this.f19273m = null;
        }
        BroadcastReceiver broadcastReceiver2 = this.f19274n;
        if (broadcastReceiver2 != null) {
            unregisterReceiver(broadcastReceiver2);
            this.f19274n = null;
        }
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: a */
    public final /* synthetic */ void mo20a(Cursor cursor) {
        this.f19278r.swapCursor(cursor);
        ListView listView = (ListView) findViewById(2131296478);
        this.f19278r.notifyDataSetChanged();
        listView.invalidate();
    }

    public void onClickSendMessage(View view) {
        String str = this.f19271k;
        if (str == null || !PhoneNumberUtils.isGlobalPhoneNumber(str)) {
            Toast.makeText(this, getString(2131624097), 0).show();
            return;
        }
        EditText editText = (EditText) findViewById(2131296409);
        String obj = editText.getText().toString();
        if (obj.length() > 0) {
            m286a(this, this.f19271k, obj);
            editText.setText("");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0104, code lost:
        if (r0.length() == 0) goto L_0x0107;
     */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 569
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.SmsChatActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131558407, menu);
        String str = this.f19271k;
        if (str == null || !C3307bs.m237b(str)) {
            menu.findItem(2131296305).setVisible(false);
        }
        return super.onCreateOptionsMenu(menu);
    }

    public void onMessageClick(View view) {
        int positionForView = ((ListView) findViewById(2131296478)).getPositionForView(view);
        Cursor cursor = this.f19278r.getCursor();
        cursor.moveToPosition(positionForView);
        m287a(cursor.getLong(0));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                return true;
            case 2131296305:
                String str = this.f19271k;
                if (str == null || str.length() <= 0) {
                    return true;
                }
                startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + this.f19271k)));
                return true;
            case 2131296323:
                String str2 = this.f19271k;
                if (str2 == null || str2.length() <= 0) {
                    return true;
                }
                C3318by.m201a(this, this.f19271k);
                return true;
            case 2131296397:
                String str3 = this.f19271k;
                DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(this);
                C3311bt a = C3311bt.m229a(this);
                String str4 = str3;
                if (a != null) {
                    str4 = a.m213d(this, str3);
                }
                aVar.m9797a(str4);
                aVar.m9791b(2131624035);
                aVar.m9796a(getResources().getString(2131624042), new DialogInterface$OnClickListenerC3438fw(this));
                aVar.m9787b(getResources().getString(17039360), new DialogInterface$OnClickListenerC3430fo(this));
                aVar.m9792b().show();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        m275h();
        C3318by.m200a(this, "chat_running_number", "");
        if (this.f19275o != null) {
            getContentResolver().unregisterContentObserver(this.f19275o);
            this.f19275o = null;
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f19277q) {
            boolean z = this.f19276p;
            if (!z) {
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(((EditText) findViewById(2131296409)).getWindowToken(), 0);
            } else if (z) {
                EditText editText = (EditText) findViewById(2131296409);
                editText.requestFocus();
                ((InputMethodManager) getSystemService("input_method")).showSoftInput(editText, 0);
                getWindow().setSoftInputMode(4);
            }
            this.f19277q = false;
        }
        C3318by.m200a(this, "chat_running_number", this.f19271k);
        String stringExtra = getIntent().getStringExtra(C3356db.f19472a);
        if (stringExtra != null && PhoneNumberUtils.compare(stringExtra, this.f19271k)) {
            C3381dz.m109a(this);
        }
        C3318by.m173f(this, this.f19271k);
        this.f19275o = new C3431fp(this, new Handler());
        getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, this.f19275o);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(((EditText) findViewById(2131296409)).getWindowToken(), 0);
        getWindow().setSoftInputMode(2);
        super.onStop();
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: r_ */
    public final C0826c<Cursor> mo8r_() {
        return new C0825b(this, C3318by.C3322d.f19428a, new String[]{"_id", "address", "body", "date", "type", "status", "thread_id"}, "thread_id = ?", new String[]{String.valueOf(this.f19272l)}, "date ASC");
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: s_ */
    public final void mo7s_() {
        this.f19278r.swapCursor(null);
    }
}
