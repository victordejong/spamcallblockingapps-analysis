package com.vladlee.easyblacklist;

import android.app.IntentService;
import android.content.Intent;
import android.media.AudioManager;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.widget.Toast;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/CallSilentHandler.class */
public class CallSilentHandler extends IntentService {

    /* renamed from: a */
    AudioManager f19240a = null;

    /* renamed from: b */
    int f19241b = 2;

    /* renamed from: c */
    boolean f19242c = false;

    /* renamed from: com.vladlee.easyblacklist.CallSilentHandler$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/CallSilentHandler$a.class */
    public final class C3254a extends PhoneStateListener {
        public C3254a() {
        }

        @Override // android.telephony.PhoneStateListener
        public final void onCallStateChanged(int i, String str) {
            if (i == 0 || i == 2) {
                CallSilentHandler.this.f19242c = true;
            }
        }
    }

    public CallSilentHandler() {
        super("CallSilentHandler");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        this.f19240a = (AudioManager) getSystemService("audio");
        this.f19241b = this.f19240a.getRingerMode();
        BlockService.m363a(this.f19240a, this.f19241b);
        Toast.makeText(this, "MUTE!", 1).show();
        C3254a aVar = new C3254a();
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
        telephonyManager.listen(aVar, 32);
        BlockService.m359b(this.f19240a, this.f19241b);
        telephonyManager.listen(aVar, 0);
    }
}
