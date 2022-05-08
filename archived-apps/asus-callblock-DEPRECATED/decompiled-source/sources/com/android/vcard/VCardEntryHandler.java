package com.android.vcard;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntryHandler.class */
public interface VCardEntryHandler {
    void onEnd();

    void onEntryCreated(VCardEntry vCardEntry);

    void onStart();
}
