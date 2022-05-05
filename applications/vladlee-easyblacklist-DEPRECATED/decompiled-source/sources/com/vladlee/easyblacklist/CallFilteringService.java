package com.vladlee.easyblacklist;

import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.telecom.Call;
import android.telecom.CallScreeningService;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/CallFilteringService.class */
public class CallFilteringService extends CallScreeningService {
    @Override // android.telecom.CallScreeningService, android.app.Service
    public IBinder onBind(Intent intent) {
        return super.onBind(intent);
    }

    @Override // android.telecom.CallScreeningService
    public void onScreenCall(Call.Details details) {
        Uri handle = details.getHandle();
        String decode = handle != null ? Uri.decode(handle.getSchemeSpecificPart()) : null;
        if (C3275aq.m267a(this, decode)) {
            CallScreeningService.CallResponse.Builder builder = new CallScreeningService.CallResponse.Builder();
            builder.setDisallowCall(true);
            builder.setRejectCall(true);
            builder.setSkipCallLog(true);
            builder.setSkipNotification(true);
            respondToCall(details, builder.build());
            Intent intent = new Intent(this, CallBlockHandlerDefPhoneApp.class);
            intent.putExtra(C3356db.f19472a, decode);
            startService(intent);
            return;
        }
        CallScreeningService.CallResponse.Builder builder2 = new CallScreeningService.CallResponse.Builder();
        builder2.setDisallowCall(false);
        builder2.setRejectCall(false);
        builder2.setSkipCallLog(false);
        builder2.setSkipNotification(false);
        respondToCall(details, builder2.build());
    }
}
