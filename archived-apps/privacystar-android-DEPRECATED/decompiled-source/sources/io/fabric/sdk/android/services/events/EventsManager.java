package io.fabric.sdk.android.services.events;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/events/EventsManager.class */
public interface EventsManager<T> {
    void deleteAllEvents();

    void recordEvent(T t);

    void sendEvents();
}
