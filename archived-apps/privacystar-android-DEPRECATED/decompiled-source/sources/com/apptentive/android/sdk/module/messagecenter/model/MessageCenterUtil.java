package com.apptentive.android.sdk.module.messagecenter.model;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/MessageCenterUtil.class */
public class MessageCenterUtil {

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/MessageCenterUtil$CompoundMessageCommonInterface.class */
    public interface CompoundMessageCommonInterface {
        String getBody();

        boolean isLastSent();

        void setBody(String str);

        void setLastSent(boolean z);
    }
}
