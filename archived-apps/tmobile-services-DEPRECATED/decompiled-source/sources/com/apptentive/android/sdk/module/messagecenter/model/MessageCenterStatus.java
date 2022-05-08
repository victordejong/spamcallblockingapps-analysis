package com.apptentive.android.sdk.module.messagecenter.model;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/MessageCenterStatus.class */
public class MessageCenterStatus extends JSONObject implements MessageCenterListItem {
    public final String body;
    public final Integer icon;

    public MessageCenterStatus(String str, Integer num) {
        this.body = str;
        this.icon = num;
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem
    public int getListItemType() {
        return 2;
    }
}
