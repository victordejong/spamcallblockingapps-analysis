package gogolook.callgogolook2.messaging.p078ui;

import android.os.Bundle;
import p459j.p460a.p474c0.p491g.FragmentC12103s;
import p459j.p460a.p582w0.p590x4.C14300r;
/* renamed from: gogolook.callgogolook2.messaging.ui.SmsStorageLowWarningActivity */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/SmsStorageLowWarningActivity.class */
public class SmsStorageLowWarningActivity extends BaseBugleFragmentActivity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C14300r.m1652b("SmsStorageLowWarning", getIntent());
        getFragmentManager().beginTransaction().add(FragmentC12103s.m7162b(), (String) null).commit();
    }
}
