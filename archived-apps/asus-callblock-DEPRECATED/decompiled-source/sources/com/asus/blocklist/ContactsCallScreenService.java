package com.asus.blocklist;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.telecom.Call;
import android.telecom.CallScreeningService;
import android.util.Log;
import com.android.contacts.util.PhoneCapabilityTester;
@TargetApi(24)
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/ContactsCallScreenService.class */
public class ContactsCallScreenService extends CallScreeningService {
    @Override // android.telecom.CallScreeningService
    public void onScreenCall(Call.Details details) {
        String str;
        Bundle extras = details.getExtras();
        boolean z = extras != null ? extras.getBoolean("isSuppressed", false) : false;
        CallScreeningService.CallResponse.Builder builder = new CallScreeningService.CallResponse.Builder();
        if (z) {
            Log.d("CallScreeningService", "[ContactsCallScreenService] BlockNumberProvider is suppressed, return");
            respondToCall(details, builder.setRejectCall(false).setDisallowCall(false).setSkipCallLog(false).setSkipNotification(false).build());
            return;
        }
        if (details == null || details.getHandle() == null) {
            str = null;
            if (PhoneCapabilityTester.isDebug()) {
                Log.w("CallScreeningService", "number is null.");
                str = null;
            }
        } else {
            str = details.getHandle().getSchemeSpecificPart();
        }
        int a2 = d.a().a(getApplicationContext(), str);
        CallScreeningService.CallResponse build = a2 > 0 ? builder.setRejectCall(true).setDisallowCall(true).setSkipCallLog(true).setSkipNotification(true).build() : builder.setRejectCall(false).setDisallowCall(false).setSkipCallLog(false).setSkipNotification(false).build();
        Log.d("CallScreeningService", "<onScreenCall> number:" + g.b(str) + ", label:" + a2);
        respondToCall(details, build);
    }
}
