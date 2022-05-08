package com.asus.toolpanel;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.activities.AboutContactsAppActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.activities.RequestCameraPermissionsActivity;
import com.android.contacts.activities.SpeedDialEditor;
import com.android.contacts.asuscallerid.AsusCallerIDSettings;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.blocklist.g;
import com.asus.contacts.b.c;
import com.asus.contacts.customize.CustomizedPreferenceActivity;
import com.asus.contacts.settings.AsusContactsSettingActivity;
import com.asus.privatecontacts.pin.PrivatePinDialogActivity;
import com.uservoice.uservoicesdk.d;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/toolpanel/b.class */
public final class b extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    Context f3110a;

    /* renamed from: b  reason: collision with root package name */
    Resources f3111b;
    ArrayList<Integer> d;
    SharedPreferences e;
    private int i;
    private int j;
    String c = "ToolPanelAdapter";
    int f = 0;
    int g = 1;
    int h = 2;

    /* loaded from: classes-dex2jar.jar:com/asus/toolpanel/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        TextView f3114a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f3115b;
    }

    public b(Context context, Resources resources) {
        this.f3110a = context;
        this.f3111b = resources;
        this.e = PreferenceManager.getDefaultSharedPreferences(this.f3110a);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.d.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(final int i, View view, ViewGroup viewGroup) {
        int color;
        int color2;
        a aVar;
        int i2 = 0;
        LayoutInflater layoutInflater = (LayoutInflater) this.f3110a.getSystemService("layout_inflater");
        if (com.android.contacts.skin.a.b()) {
            color = this.f3110a.getResources().getColor(2131034153);
            color2 = this.f3110a.getResources().getColor(2131034419);
            this.i = this.f3110a.getResources().getColor(2131034426);
            this.j = this.f3110a.getResources().getColor(2131034427);
        } else if (com.android.contacts.skin.a.c()) {
            color = com.android.contacts.skin.a.a(3);
            color2 = com.android.contacts.skin.a.a(2);
            this.i = com.android.contacts.skin.a.a(0);
            Color.colorToHSV(this.i, r0);
            float[] fArr = {fArr[0] * 1.02f, 1.0f, fArr[2] * 0.65f};
            this.j = Color.HSVToColor(fArr);
        } else {
            color = this.f3110a.getResources().getColor(2131034181);
            color2 = this.f3110a.getResources().getColor(2131034189);
            this.i = this.f3110a.getResources().getColor(2131034426);
            this.j = this.f3110a.getResources().getColor(2131034427);
        }
        if (view == null) {
            view = layoutInflater.inflate(2131427675, (ViewGroup) null);
            aVar = new a();
            aVar.f3114a = (TextView) view.findViewById(2131297391);
            aVar.f3115b = (ImageView) view.findViewById(2131296537);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        switch (this.d.get(i).intValue()) {
            case 0:
                i2 = 2131165359;
                aVar.f3114a.setText(2131755028);
                break;
            case 1:
                i2 = 2131165356;
                aVar.f3114a.setText(2131755497);
                break;
            case 2:
                i2 = 2131165357;
                aVar.f3114a.setText(2131755096);
                break;
            case 3:
                i2 = 2131165358;
                aVar.f3114a.setText(2131755976);
                break;
            case 4:
                i2 = 2131165350;
                aVar.f3114a.setText(2131755010);
                break;
            case 5:
                i2 = 2131165351;
                if (!com.asus.a.a.c(this.f3110a)) {
                    aVar.f3114a.setText(2131756237);
                    break;
                } else {
                    aVar.f3114a.setText(2131756236);
                    break;
                }
            case 6:
                i2 = 2131165361;
                aVar.f3114a.setText(2131756193);
                break;
            case 7:
                i2 = 2131165352;
                aVar.f3114a.setText(2131755785);
                break;
            case 8:
                i2 = 2131165353;
                aVar.f3114a.setText(2131755824);
                break;
            case 9:
                i2 = 2131165354;
                aVar.f3114a.setText(2131755141);
                break;
            case 10:
                i2 = 2131165360;
                aVar.f3114a.setText(2131756123);
                break;
            case 11:
                i2 = 2131165355;
                aVar.f3114a.setText(d.f.d);
                break;
            case 12:
                i2 = 2131165349;
                aVar.f3114a.setText(2131755799);
                break;
            default:
                Log.d(this.c, "Error ToolPanel getView Item Index");
                break;
        }
        aVar.f3115b.setImageDrawable(new com.asus.toolpanel.a(this.f3111b, 2131100325, 2131100326, this.i, color, i2));
        aVar.f3114a.setTextColor(color2);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.asus.toolpanel.b.1

            /* renamed from: a  reason: collision with root package name */
            int f3112a;

            {
                this.f3112a = i;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean z;
                com.asus.toolpanel.a aVar2 = (com.asus.toolpanel.a) ((ImageView) view2.findViewById(2131296537)).getDrawable();
                if (motionEvent.getAction() == 0) {
                    com.asus.toolpanel.a.a(b.this.j);
                    aVar2.invalidateSelf();
                    z = true;
                } else {
                    if (motionEvent.getAction() != 3) {
                        if (motionEvent.getAction() == 1) {
                            com.asus.toolpanel.a.a(b.this.i);
                            aVar2.invalidateSelf();
                            b bVar = b.this;
                            int intValue = ((Integer) b.this.d.get(this.f3112a)).intValue();
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(18, (Activity) bVar.f3110a, "Click toolpanel item", true);
                            }
                            switch (intValue) {
                                case 0:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Settings", null, null);
                                    } else {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(10, bVar.f3110a, "ToolPanel", "ToolPanel- Settings", null, null);
                                    }
                                    Intent intent = new Intent(bVar.f3110a, AsusContactsSettingActivity.class);
                                    intent.putExtra("PREF_LAUNCHED_FROM_TOOLPANEL", true);
                                    bVar.e.edit().putInt("DialtactsActivity_last_manually_selected_tab", MainDialtactsActivity.TAB_INDEX_TOOLPANEL).apply();
                                    ((MainDialtactsActivity) bVar.f3110a).finish();
                                    ImplicitIntentsUtil.startActivityInApp(bVar.f3110a, intent);
                                    break;
                                case 1:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Personalized_settings", null, null);
                                    }
                                    Intent intent2 = new Intent(bVar.f3110a, CustomizedPreferenceActivity.class);
                                    intent2.putExtra("PREF_LAUNCHED_FROM_TOOLPANEL", true);
                                    bVar.e.edit().putInt("DialtactsActivity_last_manually_selected_tab", MainDialtactsActivity.TAB_INDEX_TOOLPANEL).apply();
                                    ((MainDialtactsActivity) bVar.f3110a).finish();
                                    ImplicitIntentsUtil.startActivityInApp(bVar.f3110a, intent2);
                                    break;
                                case 2:
                                    com.android.contacts.a.b.a();
                                    com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Phone_ringtone", null, null);
                                    try {
                                        if (bVar.f == bVar.h) {
                                            ImplicitIntentsUtil.startActivityOutsideApp(bVar.f3110a, new Intent("com.android.phone.action.AsusDualTabRingtoneActivity", (Uri) null));
                                        } else if (bVar.f == bVar.g) {
                                            Intent intent3 = new Intent("android.intent.action.RINGTONE_PICKER");
                                            intent3.putExtra("android.intent.extra.ringtone.TITLE", bVar.f3110a.getResources().getString(2131755096));
                                            intent3.putExtra("android.intent.extra.ringtone.SHOW_SILENT", false);
                                            intent3.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", true);
                                            intent3.putExtra("android.intent.extra.ringtone.TYPE", 4);
                                            ((Activity) bVar.f3110a).startActivityForResult(intent3, 999);
                                        }
                                        break;
                                    } catch (Exception e) {
                                        Log.d(bVar.c, "Fail to start Phone Ringtone settings due to : " + e.toString());
                                        e.printStackTrace();
                                        break;
                                    }
                                case 3:
                                    com.android.contacts.a.b.a();
                                    com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Private_contacts", null, null);
                                    c.a(bVar.f3110a, "key_private_contacts");
                                    Intent intent4 = new Intent(view2.getContext(), PrivatePinDialogActivity.class);
                                    if (!RequestCameraPermissionsActivity.startPermissionActivity(bVar.f3110a, intent4, 2, null)) {
                                        ImplicitIntentsUtil.startActivityInApp(bVar.f3110a, intent4);
                                        break;
                                    }
                                    break;
                                case 4:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Block_list", null, null);
                                    } else {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(10, bVar.f3110a, "ToolPanel", "ToolPanel- Block_list", null, null);
                                    }
                                    ImplicitIntentsUtil.startActivityInAppIfPossible(bVar.f3110a, CompatUtils.isNCompatible() ? g.i(bVar.f3110a) : new Intent("android.intent.action.ASUS_ENTER_BLOCK_CALL_SMS_LOG"));
                                    break;
                                case 5:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Call_blocking_settings", null, null);
                                    }
                                    ImplicitIntentsUtil.startActivityInApp(bVar.f3110a, new Intent(bVar.f3110a, AsusCallerIDSettings.class));
                                    break;
                                case 6:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Speed_dial", null, null);
                                    } else {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(10, bVar.f3110a, "ToolPanel", "ToolPanel- Speed_dial", null, null);
                                    }
                                    Intent intent5 = new Intent("com.android.contacts.action.EDIT_SPEED_DIAL");
                                    intent5.putExtra(SpeedDialEditor.EXTRA_FROM_SPEED_DIAL, true);
                                    ImplicitIntentsUtil.startActivityInApp(bVar.f3110a, intent5);
                                    break;
                                case 7:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Call_recording", null, null);
                                    } else {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(10, bVar.f3110a, "ToolPanel", "ToolPanel- Call_recording", null, null);
                                    }
                                    try {
                                        Intent launchIntentForPackage = bVar.f3110a.getPackageManager().getLaunchIntentForPackage("com.asus.soundrecorder");
                                        launchIntentForPackage.setComponent(new ComponentName("com.asus.soundrecorder", "com.asus.soundrecorder.AsusRecordingsManager"));
                                        launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
                                        launchIntentForPackage.putExtra("folder", "callrecordings");
                                        ImplicitIntentsUtil.startActivityOutsideApp(bVar.f3110a, launchIntentForPackage, false);
                                        break;
                                    } catch (Exception e2) {
                                        Log.e(bVar.c, e2.toString());
                                        break;
                                    }
                                case 8:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Dual_SIM_card_settings", null, null);
                                    } else {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(10, bVar.f3110a, "ToolPanel", "ToolPanel- Dual_SIM_card_settings", null, null);
                                    }
                                    try {
                                        ImplicitIntentsUtil.startActivityOutsideApp(bVar.f3110a, new Intent("com.android.phone.MULTI_SIM_SETTINGS", (Uri) null));
                                        break;
                                    } catch (Exception e3) {
                                        Log.d(bVar.c, "Fail to start daul SIM card settings due to : " + e3.toString());
                                        e3.printStackTrace();
                                        break;
                                    }
                                case 9:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Encourage_us", null, null);
                                    }
                                    com.asus.contacts.settings.a.a(new Bundle()).show(((Activity) bVar.f3110a).getFragmentManager(), "encourage_us_dialog");
                                    break;
                                case 10:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Share_to", null, null);
                                    }
                                    com.android.contacts.a.b.a();
                                    com.android.contacts.a.b.a(16, (Activity) bVar.f3110a, "Click Share", true);
                                    new com.asus.c.d((Activity) bVar.f3110a).a();
                                    break;
                                case 11:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- Feedback_help", null, null);
                                    }
                                    com.android.contacts.userfeedback.a.a(bVar.f3110a);
                                    break;
                                case 12:
                                    if (PhoneCapabilityTester.IsSystemApp()) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(9, bVar.f3110a, "ToolPanel", "ToolPanel- About", null, null);
                                    }
                                    com.android.contacts.a.b.a();
                                    com.android.contacts.a.b.a(6, bVar.f3110a, "Dialer", "Dialer: About", null, null);
                                    ImplicitIntentsUtil.startActivityInApp(bVar.f3110a, new Intent(bVar.f3110a, AboutContactsAppActivity.class));
                                    break;
                                default:
                                    Log.d(bVar.c, "Error ToolPanel Item Index " + intValue);
                                    break;
                            }
                        }
                    } else {
                        com.asus.toolpanel.a.a(b.this.i);
                        aVar2.invalidateSelf();
                    }
                    z = false;
                }
                return z;
            }
        });
        return view;
    }
}
