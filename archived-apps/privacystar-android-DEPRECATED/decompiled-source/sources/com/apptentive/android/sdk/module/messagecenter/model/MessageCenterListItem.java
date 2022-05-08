package com.apptentive.android.sdk.module.messagecenter.model;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem.class */
public interface MessageCenterListItem {
    public static final int GREETING = 1;
    public static final int MESSAGE_AUTO = 4;
    public static final int MESSAGE_COMPOSER = 7;
    public static final int MESSAGE_CONTEXT = 3;
    public static final int MESSAGE_INCOMING = 6;
    public static final int MESSAGE_OUTGOING = 5;
    public static final int STATUS = 2;
    public static final int WHO_CARD = 8;

    int getListItemType();
}
