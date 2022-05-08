package com.android.contacts.simcardmanage;

import android.app.Service;
import android.content.ContentValues;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.IBinder;
import android.util.Log;
import com.android.contacts.util.DateUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/ReadIccProviderService.class */
public class ReadIccProviderService extends Service {
    private static String c = "contacts.intent.action.SIM_PROPERTY_FINISHED";
    private static String d = "sim_subId";
    private static String e = "sim_slotId";

    /* renamed from: a  reason: collision with root package name */
    private String f2129a = "ReadIccProviderService";

    /* renamed from: b  reason: collision with root package name */
    private d f2130b;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/ReadIccProviderService$a.class */
    private final class a extends AsyncTask<Integer, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        int f2131a;

        /* renamed from: b  reason: collision with root package name */
        long f2132b;

        public a(int i, long j) {
            this.f2131a = 0;
            this.f2131a = i;
            this.f2132b = j;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            if (numArr2 == null || numArr2.length <= 0) {
                Log.e(ReadIccProviderService.this.f2129a, "Error: No simIndex");
                return null;
            }
            int intValue = numArr2[0].intValue();
            Log.e(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": ReadIccProviderService Thread getSimContacts() Start");
            long currentTimeMillis = System.currentTimeMillis();
            ReadIccProviderService.this.f2130b.a(intValue, false);
            if (PhoneCapabilityTester.IsAsusDevice()) {
                ReadIccProviderService.this.f2130b.b(intValue);
            }
            ContentValues c = ReadIccProviderService.this.f2130b.c(this.f2132b);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") simIndex = " + intValue + " subId = " + this.f2132b);
            if (c == null) {
                return null;
            }
            int asInteger = DateUtils.getAsInteger(c, e.f2157a[1]);
            int asInteger2 = DateUtils.getAsInteger(c, e.f2157a[2]);
            int asInteger3 = DateUtils.getAsInteger(c, e.f2157a[3]);
            int asInteger4 = DateUtils.getAsInteger(c, e.f2157a[4]);
            int asInteger5 = DateUtils.getAsInteger(c, e.f2157a[5]);
            int asInteger6 = DateUtils.getAsInteger(c, e.f2157a[6]);
            int asInteger7 = DateUtils.getAsInteger(c, e.f2157a[7]);
            int asInteger8 = DateUtils.getAsInteger(c, e.f2157a[8]);
            int asInteger9 = DateUtils.getAsInteger(c, e.f2157a[9]);
            Boolean asBoolean = c.getAsBoolean(e.f2157a[10]);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": (new)SIM_PROP_SIM_NUM:" + asInteger);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": (new)SIM_PROP_EMAIL_NUM:" + asInteger2);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": (new)SIM_PROP_ADDTIONNUBER_NUM:" + asInteger3);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": (new)SIM_PROP_SECONDNAME:" + asInteger4);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": (new)SIM_PROP_MAX_NAME_LENGTH:" + asInteger5);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": (new)SIM_PROP_MAX_PHONE_LENGTH:" + asInteger6);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": (new)SIM_PROP_MAX_EMAIL_LENGTH:" + asInteger7);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": (new)SIM_PROP_MAX_ADDTIONNUMBER_LENGTH:" + asInteger8);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": (new)SIM_PROP_MAX_ SECONDNAME_LENGTH:" + asInteger9);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": (new)SIM_PROP_EDIT_MODE:" + asBoolean);
            ReadIccProviderService.this.f2130b.a(intValue, 1, asInteger);
            ReadIccProviderService.this.f2130b.a(intValue, 2, asInteger2);
            ReadIccProviderService.this.f2130b.a(intValue, 3, asInteger3);
            ReadIccProviderService.this.f2130b.a(intValue, 4, asInteger4);
            ReadIccProviderService.this.f2130b.a(intValue, 5, asInteger5);
            ReadIccProviderService.this.f2130b.a(intValue, 6, asInteger6 * 2);
            ReadIccProviderService.this.f2130b.a(intValue, 7, asInteger7);
            ReadIccProviderService.this.f2130b.a(intValue, 8, asInteger8 * 2);
            ReadIccProviderService.this.f2130b.a(intValue, 9, asInteger9);
            ReadIccProviderService.this.f2130b.d(intValue, asBoolean.booleanValue());
            if (PhoneCapabilityTester.IsAsusDevice()) {
                List<SimCardContact> list = null;
                if (asInteger == 0 && com.asus.contacts.a.b("ril.is_verizon_sim") == 1) {
                    ReadIccProviderService.this.f2130b.a(intValue, false);
                    ReadIccProviderService.this.f2130b.b(intValue, false);
                } else {
                    list = ReadIccProviderService.this.f2130b.f(intValue);
                    if (list != null) {
                        Log.i(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": simCardContacts count = " + list.size());
                    }
                    ReadIccProviderService.this.f2130b.a(intValue, true);
                }
                Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": Total Load SIM run time(sec) : " + ((System.currentTimeMillis() - currentTimeMillis) / 1000));
                if (list != null) {
                    Intent intent = new Intent(ReadIccProviderService.this.getApplicationContext(), SimcardService.class);
                    intent.setAction("android.intent.action.ASUS_SIM_CARD_SERVICE");
                    intent.putExtra("sim_index", intValue);
                    intent.putExtra("sim_sub_id", this.f2132b);
                    ReadIccProviderService.this.startService(intent);
                }
                Log.e(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": ReadIccProviderService Thread getSimContacts() Stop");
                return null;
            }
            Log.d(ReadIccProviderService.this.f2129a, "Sim unbundle send broadcast : SIM property finished.");
            Intent intent2 = new Intent();
            intent2.setAction(ReadIccProviderService.c);
            intent2.putExtra(ReadIccProviderService.d, this.f2132b);
            int i = intValue - 1;
            intent2.putExtra(ReadIccProviderService.e, i);
            ReadIccProviderService.this.sendBroadcast(intent2);
            Log.d(ReadIccProviderService.this.f2129a, "sendBroadcast slotId:" + i + "mSubId:" + this.f2132b);
            ReadIccProviderService.this.f2130b.a(intValue, true);
            Log.d(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": Total Load SIM run time(sec) : " + ((System.currentTimeMillis() - currentTimeMillis) / 1000));
            Log.e(ReadIccProviderService.this.f2129a, "(" + this.f2132b + ") " + intValue + ": ReadIccProviderService Thread getSimContacts() Stop");
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r6) {
            super.onPostExecute(r6);
            Log.i(ReadIccProviderService.this.f2129a, "stopService: " + this.f2131a);
            ReadIccProviderService.this.stopSelf(this.f2131a);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f2130b = e.a(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null || !intent.getAction().equals("android.intent.action.ASUS_READ_ICC_PROVIDER_SERVICE")) {
            return 3;
        }
        Log.i(this.f2129a, "startService: " + i2);
        try {
            new a(i2, intent.getLongExtra("sim_sub_id", -1L)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Integer.valueOf(intent.getIntExtra("sim_index", 1)));
            return 3;
        } catch (Exception e2) {
            Log.e(this.f2129a, i2 + " : " + e2.toString());
            return 3;
        }
    }
}
