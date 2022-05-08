package com.android.contacts.group;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.util.Constants;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.interactions.SetSmsRingtoneActivity;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/group/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f1370a = "GroupActionUtils";

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/d$a.class */
    public static final class a extends AsyncTask<Void, Void, ArrayList<String>> {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<String> f1371a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        private Context f1372b;
        private long c;
        private String d;

        public a(Activity activity, long j, String str) {
            this.f1372b = activity;
            this.c = j;
            this.d = str;
        }

        private ArrayList<String> a(String str) {
            Throwable th;
            Cursor cursor;
            String str2;
            ArrayList<String> arrayList = new ArrayList<>();
            try {
                if (this.f1372b == null || this.f1372b.getContentResolver() == null) {
                    cursor = null;
                } else if (!PhoneCapabilityTester.IsAsusDevice()) {
                    cursor = this.f1372b.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "mimetype='vnd.android.cursor.item/group_membership' AND data1 = " + str, null, null);
                } else if (f.b(this.d)) {
                    cursor = this.f1372b.getContentResolver().query(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, "frequent"), new String[]{"_id"}, null, null, null);
                } else {
                    cursor = this.f1372b.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "mimetype='vnd.android.cursor.item/group_membership' AND data2 = " + str, null, null);
                }
                String str3 = null;
                if (cursor != null) {
                    str3 = null;
                    try {
                        if (cursor.moveToFirst()) {
                            String str4 = "contact_id IN ( ";
                            do {
                                str4 = str4 + cursor.getString(0) + ", ";
                            } while (cursor.moveToNext());
                            str3 = str2.substring(0, str2.length() - 2) + ")";
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                if (str3 != null) {
                    arrayList = b(str3);
                }
                return arrayList;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x00ac A[Catch: all -> 0x00c1, LOOP:1: B:24:0x00a2->B:27:0x00ac, LOOP_END, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, blocks: (B:8:0x002b, B:9:0x002e, B:11:0x0037, B:14:0x0041, B:18:0x008c, B:20:0x0094, B:23:0x009d, B:25:0x00a4, B:27:0x00ac, B:35:0x00d2, B:36:0x00dc), top: B:44:0x002b }] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00e4  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.ArrayList<java.lang.String> b(java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 247
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.group.d.a.b(java.lang.String):java.util.ArrayList");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ ArrayList<String> doInBackground(Void[] voidArr) {
            if (this.c >= 0) {
                this.f1371a = a(String.valueOf(this.c));
            }
            return this.f1371a;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(ArrayList<String> arrayList) {
            Iterator<String> it;
            ArrayList<String> arrayList2 = arrayList;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                String str = new String();
                while (arrayList2.iterator().hasNext()) {
                    str = str + it.next() + ';';
                }
                Log.d(d.f1370a, "mailto: " + PhoneCapabilityTester.privacyLogCheck(str));
                Intent intent = new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_MAILTO, str, null));
                if (this.f1372b.getPackageManager().resolveActivity(intent, 65536) != null) {
                    ImplicitIntentsUtil.startActivityOutsideApp(this.f1372b, intent);
                } else {
                    Toast.makeText(this.f1372b, 2131755026, 0).show();
                }
            } else if (arrayList2.isEmpty() && this.f1372b != null) {
                String string = this.f1372b.getResources().getString(2131755844);
                if (!TextUtils.isEmpty(string)) {
                    Toast.makeText(this.f1372b, string, 0).show();
                }
            }
            super.onPostExecute(arrayList2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/d$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public long f1373a;

        /* renamed from: b  reason: collision with root package name */
        public String f1374b;

        public b(long j, String str) {
            this.f1373a = j;
            this.f1374b = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/d$c.class */
    public static final class c extends AsyncTask<String, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        private String f1375a = BuildConfig.FLAVOR;

        /* renamed from: b  reason: collision with root package name */
        private Context f1376b;
        private long c;
        private String d;

        public c(Activity activity, long j, String str) {
            this.f1376b = activity;
            this.c = j;
            this.d = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x00bb  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0140  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String a(java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 342
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.group.d.c.a(java.lang.String):java.lang.String");
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x00cc A[Catch: all -> 0x011f, LOOP:1: B:34:0x00c3->B:36:0x00cc, LOOP_END, TRY_LEAVE, TryCatch #1 {all -> 0x011f, blocks: (B:12:0x002d, B:14:0x0036, B:17:0x004a, B:19:0x007c, B:21:0x0085, B:22:0x0091, B:22:0x0091, B:23:0x0094, B:27:0x00aa, B:29:0x00b2, B:32:0x00bc, B:34:0x00c3, B:36:0x00cc, B:38:0x00fd, B:40:0x0106, B:41:0x0115, B:49:0x0130), top: B:60:0x002d }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String b(java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 344
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.group.d.c.b(java.lang.String):java.lang.String");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(String[] strArr) {
            if (this.c < 0) {
                return null;
            }
            this.f1375a = a(String.valueOf(this.c));
            if (this.f1375a == null || this.f1375a.isEmpty()) {
                return null;
            }
            Log.d(d.f1370a, "sendTo: " + PhoneCapabilityTester.privacyLogCheck(this.f1375a));
            String str = this.f1375a;
            if (this.f1376b == null) {
                return null;
            }
            Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + str));
            intent.putExtra("sms_body", BuildConfig.FLAVOR);
            ImplicitIntentsUtil.startActivityOutsideApp(this.f1376b, intent);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r5) {
            Void r0 = r5;
            if ((this.f1375a == null || this.f1375a.isEmpty()) && this.f1376b != null) {
                String string = this.f1376b.getResources().getString(2131755841);
                if (!TextUtils.isEmpty(string)) {
                    Toast.makeText(this.f1376b, string, 0).show();
                }
            }
            super.onPostExecute(r0);
        }
    }

    public static void a(Activity activity, long j, String str) {
        new a(activity, j, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static void a(Fragment fragment, String str) {
        Intent intent = new Intent("android.intent.action.RINGTONE_PICKER");
        intent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", true);
        intent.putExtra("android.intent.extra.ringtone.TYPE", 1);
        intent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", false);
        intent.putExtra("android.intent.extra.ringtone.EXISTING_URI", str != null ? Uri.parse(str) : RingtoneManager.getDefaultUri(1));
        fragment.startActivityForResult(intent, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0207 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x027f A[Catch: RemoteException -> 0x028c, OperationApplicationException -> 0x02af, TRY_ENTER, TRY_LEAVE, TryCatch #5 {OperationApplicationException -> 0x02af, RemoteException -> 0x028c, blocks: (B:76:0x020d, B:80:0x0242, B:98:0x027f), top: B:114:0x020d }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x028d -> B:113:0x0246). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x02b0 -> B:113:0x0246). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r10, java.lang.String r11, android.net.Uri r12, long r13, int r15) {
        /*
            Method dump skipped, instructions count: 757
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.group.d.a(android.content.Context, java.lang.String, android.net.Uri, long, int):void");
    }

    static /* synthetic */ boolean a(ArrayList arrayList, b bVar) {
        boolean z;
        Iterator it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                if (((b) it.next()).f1373a == bVar.f1373a) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        return z;
    }

    public static void b(Fragment fragment, String str) {
        Intent intent = new Intent(fragment.getActivity(), SetSmsRingtoneActivity.class);
        intent.putExtra(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, 2131755846);
        intent.putExtra("ringtone_uri", str);
        fragment.startActivityForResult(intent, 2);
    }

    static /* synthetic */ boolean b(ArrayList arrayList, b bVar) {
        boolean z;
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            b bVar2 = (b) it.next();
            if (bVar2.f1373a == bVar.f1373a) {
                bVar2.f1374b = bVar.f1374b;
                z = true;
                break;
            }
        }
        return z;
    }
}
