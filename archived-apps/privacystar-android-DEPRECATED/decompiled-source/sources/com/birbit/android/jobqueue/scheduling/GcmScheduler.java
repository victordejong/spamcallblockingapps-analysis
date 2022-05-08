package com.birbit.android.jobqueue.scheduling;

import android.content.Context;
import android.os.Bundle;
import com.birbit.android.jobqueue.log.JqLog;
import com.google.android.gms.gcm.GcmNetworkManager;
import com.google.android.gms.gcm.TaskParams;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/scheduling/GcmScheduler.class */
public class GcmScheduler extends Scheduler {
    private static final String KEY_DELAY = "delay";
    private static final String KEY_NETWORK_STATUS = "networkStatus";
    private static final String KEY_OVERRIDE_DEADLINE = "deadline";
    private static final String KEY_UUID = "uuid";
    GcmNetworkManager gcmNetworkManager;
    final Class<? extends GcmJobSchedulerService> serviceClass;

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/scheduling/GcmScheduler$ResultCallback.class */
    private static class ResultCallback {
        CountDownLatch latch = new CountDownLatch(1);
        volatile boolean reschedule = false;

        ResultCallback() {
        }

        public boolean get() {
            try {
                this.latch.await(600L, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                JqLog.m391e("job did not finish in 10 minutes :/", new Object[0]);
            }
            return this.reschedule;
        }

        void onDone(boolean z) {
            this.reschedule = z;
            this.latch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GcmScheduler(Context context, Class<? extends GcmJobSchedulerService> cls) {
        this.serviceClass = cls;
        this.gcmNetworkManager = GcmNetworkManager.getInstance(context.getApplicationContext());
    }

    static SchedulerConstraint fromBundle(Bundle bundle) throws Exception {
        SchedulerConstraint schedulerConstraint = new SchedulerConstraint(bundle.getString(KEY_UUID));
        if (schedulerConstraint.getUuid() == null) {
            schedulerConstraint.setUuid(UUID.randomUUID().toString());
        }
        schedulerConstraint.setNetworkStatus(bundle.getInt(KEY_NETWORK_STATUS, 0));
        schedulerConstraint.setDelayInMs(bundle.getLong(KEY_DELAY, 0L));
        if (bundle.containsKey(KEY_OVERRIDE_DEADLINE)) {
            schedulerConstraint.setOverrideDeadlineInMs(Long.valueOf(bundle.getLong(KEY_OVERRIDE_DEADLINE)));
        }
        return schedulerConstraint;
    }

    static Bundle toBundle(SchedulerConstraint schedulerConstraint) {
        Bundle bundle = new Bundle();
        if (schedulerConstraint.getUuid() != null) {
            bundle.putString(KEY_UUID, schedulerConstraint.getUuid());
        }
        bundle.putInt(KEY_NETWORK_STATUS, schedulerConstraint.getNetworkStatus());
        bundle.putLong(KEY_DELAY, schedulerConstraint.getDelayInMs());
        if (schedulerConstraint.getOverrideDeadlineInMs() != null) {
            bundle.putLong(KEY_OVERRIDE_DEADLINE, schedulerConstraint.getOverrideDeadlineInMs().longValue());
        }
        return bundle;
    }

    private static int toNetworkState(int i) {
        switch (i) {
            case 0:
                return 2;
            case 1:
                return 0;
            case 2:
                return 1;
            default:
                JqLog.m391e("unknown network status %d. Defaulting to CONNECTED", Integer.valueOf(i));
                return 0;
        }
    }

    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    public void cancelAll() {
        this.gcmNetworkManager.cancelAllTasks(this.serviceClass);
    }

    long getExecutionWindowSizeInSeconds() {
        return TimeUnit.DAYS.toSeconds(7L);
    }

    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    public void onFinished(SchedulerConstraint schedulerConstraint, boolean z) {
        Object data = schedulerConstraint.getData();
        if (JqLog.isDebugEnabled()) {
            JqLog.m392d("finished job %s", schedulerConstraint);
        }
        if (data instanceof ResultCallback) {
            ((ResultCallback) data).onDone(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int onStartJob(TaskParams taskParams) {
        try {
            SchedulerConstraint fromBundle = fromBundle(taskParams.getExtras());
            if (JqLog.isDebugEnabled()) {
                JqLog.m392d("starting job %s", fromBundle);
            }
            ResultCallback resultCallback = new ResultCallback();
            fromBundle.setData(resultCallback);
            start(fromBundle);
            return resultCallback.get() ? 1 : 0;
        } catch (Exception e) {
            JqLog.m390e(e, "bad bundle from GcmScheduler. Ignoring the call", new Object[0]);
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void request(com.birbit.android.jobqueue.scheduling.SchedulerConstraint r7) {
        /*
            r6 = this;
            boolean r0 = com.birbit.android.jobqueue.log.JqLog.isDebugEnabled()
            if (r0 == 0) goto L_0x0013
            java.lang.String r0 = "creating gcm wake up request for %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r7
            r2[r3] = r4
            com.birbit.android.jobqueue.log.JqLog.m392d(r0, r1)
        L_0x0013:
            com.google.android.gms.gcm.OneoffTask$Builder r0 = new com.google.android.gms.gcm.OneoffTask$Builder
            r1 = r0
            r1.<init>()
            r1 = r7
            int r1 = r1.getNetworkStatus()
            int r1 = toNetworkState(r1)
            com.google.android.gms.gcm.OneoffTask$Builder r0 = r0.setRequiredNetwork(r1)
            r1 = 1
            com.google.android.gms.gcm.OneoffTask$Builder r0 = r0.setPersisted(r1)
            r1 = r6
            java.lang.Class<? extends com.birbit.android.jobqueue.scheduling.GcmJobSchedulerService> r1 = r1.serviceClass
            com.google.android.gms.gcm.OneoffTask$Builder r0 = r0.setService(r1)
            r1 = r7
            java.lang.String r1 = r1.getUuid()
            com.google.android.gms.gcm.OneoffTask$Builder r0 = r0.setTag(r1)
            r1 = r7
            android.os.Bundle r1 = toBundle(r1)
            com.google.android.gms.gcm.OneoffTask$Builder r0 = r0.setExtras(r1)
            r8 = r0
            r0 = r7
            java.lang.Long r0 = r0.getOverrideDeadlineInMs()
            if (r0 != 0) goto L_0x0058
            r0 = r7
            long r0 = r0.getDelayInMs()
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
            r2 = r6
            long r2 = r2.getExecutionWindowSizeInSeconds()
            long r1 = r1.toMillis(r2)
            long r0 = r0 + r1
            r9 = r0
            goto L_0x0060
        L_0x0058:
            r0 = r7
            java.lang.Long r0 = r0.getOverrideDeadlineInMs()
            long r0 = r0.longValue()
            r9 = r0
        L_0x0060:
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.MILLISECONDS
            r1 = r7
            long r1 = r1.getDelayInMs()
            long r0 = r0.toSeconds(r1)
            r11 = r0
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.MILLISECONDS
            r1 = r9
            long r0 = r0.toSeconds(r1)
            r13 = r0
            r0 = r13
            r9 = r0
            r0 = r13
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0085
            r0 = 1
            r1 = r11
            long r0 = r0 + r1
            r9 = r0
        L_0x0085:
            r0 = r8
            r1 = r11
            r2 = r9
            com.google.android.gms.gcm.OneoffTask$Builder r0 = r0.setExecutionWindow(r1, r2)
            r0 = r6
            com.google.android.gms.gcm.GcmNetworkManager r0 = r0.gcmNetworkManager
            r1 = r8
            com.google.android.gms.gcm.OneoffTask r1 = r1.build()
            r0.schedule(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.birbit.android.jobqueue.scheduling.GcmScheduler.request(com.birbit.android.jobqueue.scheduling.SchedulerConstraint):void");
    }
}
