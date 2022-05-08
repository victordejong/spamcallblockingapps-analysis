package com.google.android.datatransport;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/Transport.class */
public interface Transport<T> {
    void schedule(Event<T> event, TransportScheduleCallback transportScheduleCallback);

    void send(Event<T> event);
}
