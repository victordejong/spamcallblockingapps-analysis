package zendesk.core;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes3-dex2jar.jar:zendesk/core/PushRegistrationRequestWrapper.class */
class PushRegistrationRequestWrapper {
    @SerializedName("push_notification_device")
    private PushRegistrationRequest pushRegistrationRequest;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPushRegistrationRequest(PushRegistrationRequest pushRegistrationRequest) {
        this.pushRegistrationRequest = pushRegistrationRequest;
    }
}
