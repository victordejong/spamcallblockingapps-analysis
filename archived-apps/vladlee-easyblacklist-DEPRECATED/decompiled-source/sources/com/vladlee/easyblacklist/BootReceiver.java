package com.vladlee.easyblacklist;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ReceiverCallNotAllowedException;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/BootReceiver.class */
public class BootReceiver extends BroadcastReceiver {
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00d0 -> B:5:0x004e). Please submit an issue!!! */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                SmsReceiverHighPriority smsReceiverHighPriority = new SmsReceiverHighPriority();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
                intentFilter.setPriority(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                context.registerReceiver(smsReceiverHighPriority, intentFilter);
                CallReceiver callReceiver = new CallReceiver();
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.PHONE_STATE");
                intentFilter2.setPriority(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                context.registerReceiver(callReceiver, intentFilter2);
            } catch (ReceiverCallNotAllowedException | IllegalArgumentException e) {
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                JobInfo.Builder builder = new JobInfo.Builder(0, new ComponentName(context, ServiceStartJob.class));
                builder.setMinimumLatency(1L);
                builder.setOverrideDeadline(3000L);
                Bundle bundle = new Bundle();
                bundle.putBoolean(C3356db.f19481j, true);
                builder.setTransientExtras(bundle);
                ((JobScheduler) context.getSystemService(JobScheduler.class)).schedule(builder.build());
            } catch (IllegalArgumentException e2) {
                BlockService.m367a(context);
                if (C3392ee.m80a(context, "pref_schedule_enable", false)) {
                    AlarmReceiver.m373a(context);
                }
            }
        } else {
            Intent intent2 = new Intent(context, ServiceStartHandler.class);
            intent2.putExtra(C3356db.f19481j, true);
            context.startService(intent2);
        }
    }
}
