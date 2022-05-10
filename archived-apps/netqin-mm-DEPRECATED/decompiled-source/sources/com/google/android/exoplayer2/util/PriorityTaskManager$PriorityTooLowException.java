package com.google.android.exoplayer2.util;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException.class */
public class PriorityTaskManager$PriorityTooLowException extends IOException {
    public PriorityTaskManager$PriorityTooLowException(int i, int i2) {
        super("Priority too low [priority=" + i + ", highest=" + i2 + "]");
    }
}
