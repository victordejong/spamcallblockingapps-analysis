package gogolook.callgogolook2.messaging.datamodel;

import android.app.IntentService;
import android.content.Intent;
import gogolook.callgogolook2.MyApplication;
import p459j.p460a.p474c0.p475c.C11558s;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/NoConfirmationSmsSendService.class */
public class NoConfirmationSmsSendService extends IntentService {
    public NoConfirmationSmsSendService() {
        super(NoConfirmationSmsSendService.class.getName());
        setIntentRedelivery(true);
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        C11558s.m9170a(MyApplication.m29013o(), intent);
    }
}
