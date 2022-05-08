package com.amazonaws.event;
/* loaded from: classes-dex2jar.jar:com/amazonaws/event/ProgressEvent.class */
public class ProgressEvent {
    public long bytesTransferred;
    public int eventCode;

    public ProgressEvent(long j) {
        this.bytesTransferred = j;
    }

    public long getBytesTransferred() {
        return this.bytesTransferred;
    }

    public int getEventCode() {
        return this.eventCode;
    }

    public void setEventCode(int i) {
        this.eventCode = i;
    }
}
