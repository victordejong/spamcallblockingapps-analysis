package androidx.work;
/* renamed from: androidx.work.v */
/* loaded from: classes-dex2jar.jar:androidx/work/v.class */
public enum EnumC0550v {
    ENQUEUED,
    RUNNING,
    SUCCEEDED,
    FAILED,
    BLOCKED,
    CANCELLED;

    public boolean isFinished() {
        return this == SUCCEEDED || this == FAILED || this == CANCELLED;
    }
}
