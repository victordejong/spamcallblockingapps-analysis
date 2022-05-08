package com.vladlee.easyblacklist;

import android.app.Activity;
import android.app.role.RoleManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.app.C0598a;
import androidx.preference.AbstractC1027o;
import com.google.android.gms.gass.AdShield2Logger;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/CheckPermissionsActivity.class */
public class CheckPermissionsActivity extends AppCompatActivity {
    /* renamed from: a */
    private static ArrayList<String> m352a(Context context, ArrayList<String> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (C0598a.m8618a(context, next) != 0) {
                arrayList2.add(next);
            }
        }
        return arrayList2;
    }

    /* renamed from: a */
    public static void m354a(Activity activity, AbstractC1027o oVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.READ_SMS");
        arrayList.add("android.permission.RECEIVE_SMS");
        arrayList.add("android.permission.SEND_SMS");
        if (C0598a.m8759a(activity, "android.permission.READ_SMS")) {
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(activity);
            aVar.m9788b(activity.getString(2131624142));
            aVar.m9796a(activity.getString(2131624101), new DialogInterface$OnClickListenerC3299bk(oVar, activity, arrayList));
            aVar.m9787b(activity.getString(2131624009), new DialogInterface$OnClickListenerC3300bl());
            aVar.m9792b().show();
        } else if (C3392ee.m80a((Context) activity, "pref_sms_permission_asked", false)) {
            DialogInterfaceC0308m.C0309a aVar2 = new DialogInterfaceC0308m.C0309a(activity);
            aVar2.m9788b(activity.getString(2131624145));
            aVar2.m9796a(activity.getString(2131624184), new DialogInterface$OnClickListenerC3301bm(activity));
            aVar2.m9787b(activity.getString(2131624009), new DialogInterface$OnClickListenerC3302bn());
            aVar2.m9792b().show();
        } else {
            if (oVar == null) {
                C0598a.m8758a(activity, (String[]) arrayList.toArray(new String[arrayList.size()]), 10005);
            } else {
                oVar.requestPermissions((String[]) arrayList.toArray(new String[arrayList.size()]), 10005);
            }
            C3391ed.m86b((Context) activity, "pref_sms_permission_asked", true);
        }
    }

    /* renamed from: a */
    public static void m353a(Context context) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setData(Uri.parse("package:" + context.getPackageName()));
        intent.addFlags(268435456);
        intent.addFlags(1073741824);
        intent.addFlags(8388608);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m351a(CheckPermissionsActivity checkPermissionsActivity, ArrayList arrayList) {
        C0598a.m8758a(checkPermissionsActivity, (String[]) arrayList.toArray(new String[arrayList.size()]), 1001);
        C3391ed.m86b((Context) checkPermissionsActivity, "pref_permissions_asked", true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m350a(CheckPermissionsActivity checkPermissionsActivity, boolean z) {
        if (z) {
            boolean z2 = !C3369do.m127a((Context) checkPermissionsActivity);
            if (Build.VERSION.SDK_INT >= 19 && z2) {
                C3369do.m126b(checkPermissionsActivity);
            }
            if (z2) {
                ((SwitchCompat) checkPermissionsActivity.findViewById(2131296576)).setChecked(false);
                C3392ee.m74b((Context) checkPermissionsActivity, "pref_block_sms_option", false);
                return;
            }
        }
        if (!z || m346c(checkPermissionsActivity)) {
            if (!z) {
                C3392ee.m80a((Context) checkPermissionsActivity, "pref_block_sms_option", false);
            }
            C3392ee.m74b(checkPermissionsActivity, "pref_block_sms_option", z);
            return;
        }
        ((SwitchCompat) checkPermissionsActivity.findViewById(2131296576)).setChecked(false);
        C3392ee.m74b((Context) checkPermissionsActivity, "pref_block_sms_option", false);
        m354a(checkPermissionsActivity, (AbstractC1027o) null);
    }

    /* renamed from: a */
    private boolean m349a(ArrayList<String> arrayList) {
        if (!C3391ed.m89a((Context) this, "pref_permissions_asked", false)) {
            return false;
        }
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            if (!C0598a.m8759a((Activity) this, it.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private void m347b(ArrayList<String> arrayList) {
        Button button = (Button) findViewById(2131296346);
        TextView textView = (TextView) findViewById(2131296610);
        if (m349a(arrayList)) {
            textView.setText(String.format(getString(2131624146), getString(2131623974)));
            button.setText(getString(2131624184));
            button.setOnClickListener(new View$OnClickListenerC3297bi(this));
            return;
        }
        textView.setText(String.format(getString(2131624144), getString(2131623974)));
        button.setText(getString(2131624101));
        button.setOnClickListener(new View$OnClickListenerC3298bj(this, arrayList));
    }

    /* renamed from: b */
    public static boolean m348b(Context context) {
        return Build.VERSION.SDK_INT < 23 || m352a(context, m344i()).size() == 0;
    }

    /* renamed from: c */
    public static boolean m346c(Context context) {
        return C0598a.m8618a(context, "android.permission.READ_SMS") == 0;
    }

    /* renamed from: h */
    private void m345h() {
        Intent intent = new Intent(this, EasyBlacklistActivity.class);
        intent.putExtras(getIntent());
        intent.putExtra(C3356db.f19480i, true);
        startActivity(intent);
        finish();
    }

    /* renamed from: i */
    private static ArrayList<String> m344i() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("android.permission.READ_CONTACTS");
        arrayList.add("android.permission.READ_PHONE_STATE");
        arrayList.add("android.permission.CALL_PHONE");
        arrayList.add("android.permission.READ_CALL_LOG");
        return arrayList;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1001 && Build.VERSION.SDK_INT >= 19) {
            boolean c = m346c(this);
            boolean a = C3369do.m127a((Context) this);
            if (a && c) {
                ((SwitchCompat) findViewById(2131296576)).setChecked(true);
                C3392ee.m74b((Context) this, "pref_block_sms_option", true);
            } else if (a) {
                m354a(this, (AbstractC1027o) null);
            } else {
                C3392ee.m74b((Context) this, "pref_block_sms_option", false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0022, code lost:
        if (r7.size() == 0) goto L_0x002a;
     */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r7) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            super.onCreate(r1)
            r0 = r6
            r1 = 2131492902(0x7f0c0026, float:1.860927E38)
            r0.setContentView(r1)
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L_0x0028
            r0 = r6
            java.util.ArrayList r1 = m344i()
            java.util.ArrayList r0 = m352a(r0, r1)
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r7
            int r0 = r0.size()
            if (r0 != 0) goto L_0x0030
            goto L_0x002a
        L_0x0028:
            r0 = 0
            r7 = r0
        L_0x002a:
            r0 = r6
            r0.m345h()
            r0 = r7
            r8 = r0
        L_0x0030:
            r0 = r8
            if (r0 == 0) goto L_0x0053
            r0 = r8
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x0053
            r0 = r6
            r1 = r8
            r0.m347b(r1)
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            com.google.firebase.analytics.FirebaseAnalytics r0 = com.google.firebase.analytics.FirebaseAnalytics.getInstance(r0)
            java.lang.String r1 = "view_check_permissions"
            r2 = r7
            r0.m646a(r1, r2)
        L_0x0053:
            r0 = r6
            r1 = 2131296345(0x7f090059, float:1.8210604E38)
            android.view.View r0 = r0.findViewById(r1)
            android.widget.Button r0 = (android.widget.Button) r0
            com.vladlee.easyblacklist.bf r1 = new com.vladlee.easyblacklist.bf
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r0.setOnClickListener(r1)
            r0 = r6
            boolean r0 = m346c(r0)
            r9 = r0
            r0 = r6
            boolean r0 = com.vladlee.easyblacklist.C3369do.m127a(r0)
            if (r0 == 0) goto L_0x0078
            r0 = r9
            if (r0 != 0) goto L_0x007f
        L_0x0078:
            r0 = r6
            java.lang.String r1 = "pref_block_sms_option"
            r2 = 0
            com.vladlee.easyblacklist.C3392ee.m74b(r0, r1, r2)
        L_0x007f:
            r0 = r6
            r1 = 2131296576(0x7f090140, float:1.8211073E38)
            android.view.View r0 = r0.findViewById(r1)
            androidx.appcompat.widget.SwitchCompat r0 = (androidx.appcompat.widget.SwitchCompat) r0
            r7 = r0
            r0 = r7
            r1 = r6
            java.lang.String r2 = "pref_block_sms_option"
            r3 = 0
            boolean r1 = com.vladlee.easyblacklist.C3392ee.m80a(r1, r2, r3)
            r0.setChecked(r1)
            r0 = r7
            com.vladlee.easyblacklist.bg r1 = new com.vladlee.easyblacklist.bg
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r0.setOnCheckedChangeListener(r1)
            r0 = r6
            r1 = 2131296611(0x7f090163, float:1.8211144E38)
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            com.vladlee.easyblacklist.bh r1 = new com.vladlee.easyblacklist.bh
            r2 = r1
            r3 = r6
            r4 = r7
            r2.<init>(r3, r4)
            r0.setOnClickListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.CheckPermissionsActivity.onCreate(android.os.Bundle):void");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.C0598a.AbstractC0599a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        boolean z;
        boolean z2 = true;
        if (i == 1001) {
            if (iArr.length > 0) {
                int length = iArr.length;
                int i2 = 0;
                while (true) {
                    z = z2;
                    if (i2 >= length) {
                        break;
                    }
                    if (iArr[i2] != 0) {
                        z2 = false;
                    }
                    i2++;
                }
            } else {
                FirebaseAnalytics.getInstance(this).m646a("permissions_request_cancelled", new Bundle());
                z = false;
            }
            if (z) {
                m345h();
            }
        } else if (i != 10005) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        } else if (iArr[0] == 0) {
            ((SwitchCompat) findViewById(2131296576)).setChecked(true);
            C3392ee.m74b((Context) this, "pref_block_sms_option", true);
        } else {
            C3392ee.m74b((Context) this, "pref_block_sms_option", false);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (((RoleManager) getSystemService("role")).isRoleHeld("android.app.role.CALL_SCREENING")) {
            ArrayList<String> a = m352a((Context) this, m344i());
            if (a.size() == 0) {
                m345h();
            } else {
                m347b(a);
            }
        } else {
            startActivityForResult(((RoleManager) getSystemService("role")).createRequestRoleIntent("android.app.role.CALL_SCREENING"), AdShield2Logger.EVENTID_VM_INIT_EXCEPTION);
        }
    }
}
