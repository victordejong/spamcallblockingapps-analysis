package com.android.contacts.simcardmanage;

import android.accounts.Account;
import android.app.IntentService;
import android.content.ContentProviderResult;
import android.content.Intent;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.b;
import com.android.contacts.vcard.SelectAccountActivity;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/ImportFromSimService.class */
public class ImportFromSimService extends IntentService {

    /* renamed from: b  reason: collision with root package name */
    private d f2128b;
    private Account c;
    private Intent d;

    /* renamed from: a  reason: collision with root package name */
    private String f2127a = "ImportFromSimService";
    private final String e = "sim_ready";
    private final String f = "sim_contact_count";
    private final int g = 100;
    private String h = null;
    private String i = null;

    public ImportFromSimService() {
        super("ImportFromSimService");
        setIntentRedelivery(true);
    }

    private static int a(ContentProviderResult[] contentProviderResultArr) {
        int i;
        if (contentProviderResultArr != null) {
            int length = contentProviderResultArr.length;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= length) {
                    break;
                }
                i3 = i3;
                if (contentProviderResultArr[i2].uri.toString().startsWith(ContactsContract.RawContacts.CONTENT_URI.toString())) {
                    i3++;
                }
                i2++;
            }
        } else {
            i = 0;
        }
        return i;
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        int i;
        this.f2128b = e.a(this);
        this.d = new Intent("android.intent.action.asus_import_sim_state");
        Log.d(this.f2127a, "ImportFromSimService.start()");
        if (intent == null) {
            Log.d(this.f2127a, "ImportFromSimService ReStart");
        } else if (intent.getAction().equals("android.intent.action.asus_import_sim")) {
            boolean a2 = this.f2128b.a(1);
            Log.d(this.f2127a, "isSimReady = " + a2);
            if (a2) {
                this.i = intent.getStringExtra(SelectAccountActivity.ACCOUNT_NAME);
                this.h = intent.getStringExtra(SelectAccountActivity.ACCOUNT_TYPE);
                if (this.i == null || this.h == null) {
                    this.c = new Account(b.a.f611a, b.a.f612b);
                } else {
                    this.c = new Account(this.i, this.h);
                }
                List<SimCardContact> f = this.f2128b.f(1);
                if (f == null || f.size() <= 0) {
                    i = 0;
                } else {
                    Log.d(this.f2127a, "simCardContacts size = " + f.size());
                    int size = f.size() / 100;
                    int i2 = size;
                    if (f.size() % 100 > 0) {
                        i2 = size + 1;
                    }
                    int i3 = 0;
                    i = 0;
                    while (i3 < i2) {
                        List<SimCardContact> subList = f.subList(i3 * 100, i3 == i2 - 1 ? f.size() : (i3 + 1) * 100);
                        i += a(this.f2128b.a(1, subList, this.c, subList.size()));
                        i3++;
                    }
                }
                Log.d(this.f2127a, "successImportCount = " + i);
                this.d.putExtra("sim_ready", true);
                this.d.putExtra("sim_contact_count", i);
                sendBroadcast(this.d);
                return;
            }
            this.d.putExtra("sim_ready", false);
            sendBroadcast(this.d);
        }
    }
}
