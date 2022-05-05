package com.vladlee.easyblacklist;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/SmsService.class */
public class SmsService extends IntentService {
    public SmsService() {
        super(SmsService.class.getName());
        setIntentRedelivery(true);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Bundle extras;
        if ("android.intent.action.RESPOND_VIA_MESSAGE".equals(intent.getAction()) && (extras = intent.getExtras()) != null) {
            String string = extras.getString("android.intent.extra.TEXT");
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            if (string != null && schemeSpecificPart != null && string.length() > 0) {
                SmsChatActivity.m286a(this, schemeSpecificPart, string);
            }
        }
    }
}
