package com.birbit.android.jobqueue.messaging.message;

import com.birbit.android.jobqueue.JobHolder;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/RunJobMessage.class */
public class RunJobMessage extends Message {
    private JobHolder jobHolder;

    public RunJobMessage() {
        super(Type.RUN_JOB);
    }

    public JobHolder getJobHolder() {
        return this.jobHolder;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
        this.jobHolder = null;
    }

    public void setJobHolder(JobHolder jobHolder) {
        this.jobHolder = jobHolder;
    }
}
