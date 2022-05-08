package io.fabric.sdk.android.services.concurrency;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/Priority.class */
public enum Priority {
    LOW,
    NORMAL,
    HIGH,
    IMMEDIATE;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <Y> int compareTo(PriorityProvider priorityProvider, Y y) {
        return (y instanceof PriorityProvider ? ((PriorityProvider) y).getPriority() : NORMAL).ordinal() - priorityProvider.getPriority().ordinal();
    }
}
