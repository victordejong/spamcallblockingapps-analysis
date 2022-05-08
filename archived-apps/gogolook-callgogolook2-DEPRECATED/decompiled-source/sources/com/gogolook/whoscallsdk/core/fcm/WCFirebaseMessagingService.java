package com.gogolook.whoscallsdk.core.fcm;

import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.p185l.C6373a;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b&\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/fcm/WCFirebaseMessagingService;", "Lcom/google/firebase/messaging/FirebaseMessagingService;", "()V", "onMessageReceived", "", "remoteMessage", "Lcom/google/firebase/messaging/RemoteMessage;", "onNewToken", "token", "", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/fcm/WCFirebaseMessagingService.class */
public abstract class WCFirebaseMessagingService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        C15149k.m377b(remoteMessage, "remoteMessage");
        C6438i.m22579c("[FCM] receive message from : " + remoteMessage.m31060H());
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        C15149k.m377b(str, "token");
        C6438i.m22579c("[FCM] receive token : " + str);
        C6373a.m22920a(str);
    }
}
