.class public final Lcom/truecaller/fcm/FcmMessageListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008-\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006."
    }
    d2 = {
        "Lcom/truecaller/fcm/FcmMessageListenerService;",
        "Lcom/google/firebase/messaging/FirebaseMessagingService;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "",
        "token",
        "onNewToken",
        "(Ljava/lang/String;)V",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "remoteMessage",
        "onMessageReceived",
        "(Lcom/google/firebase/messaging/RemoteMessage;)V",
        "Le/a/w2/a;",
        "c",
        "Le/a/w2/a;",
        "getAppsFlyerEventsTracker",
        "()Le/a/w2/a;",
        "setAppsFlyerEventsTracker",
        "(Le/a/w2/a;)V",
        "appsFlyerEventsTracker",
        "Le/a/o4/b;",
        "b",
        "Le/a/o4/b;",
        "getPushHandler",
        "()Le/a/o4/b;",
        "setPushHandler",
        "(Le/a/o4/b;)V",
        "pushHandler",
        "Le/a/o4/e;",
        "a",
        "Le/a/o4/e;",
        "getPushIdManager",
        "()Le/a/o4/e;",
        "setPushIdManager",
        "(Le/a/o4/e;)V",
        "pushIdManager",
        "Le/a/y3/c;",
        "d",
        "Le/a/y3/c;",
        "getFreshChatManager",
        "()Le/a/y3/c;",
        "setFreshChatManager",
        "(Le/a/y3/c;)V",
        "freshChatManager",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/o4/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/o4/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/w2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/y3/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {v0}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/k2;->n(Lcom/truecaller/fcm/FcmMessageListenerService;)V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$hasUninstallKey"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->o2()Ljava/util/Map;

    move-result-object v0

    const-string v1, "af-uinstall-tracking"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/fcm/FcmMessageListenerService;->d:Le/a/y3/c;

    const-string v1, "freshChatManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Le/a/y3/c;->d(Lcom/google/firebase/messaging/RemoteMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/truecaller/fcm/FcmMessageListenerService;->d:Le/a/y3/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/y3/c;->a(Lcom/google/firebase/messaging/RemoteMessage;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/truecaller/fcm/FcmMessageListenerService;->b:Le/a/o4/b;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Le/a/o4/b;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    const-string p1, "pushHandler"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 4

    const-string v0, "token"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/fcm/FcmMessageListenerService;->a:Le/a/o4/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v2, Le/a/o4/d;

    sget-object v3, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-direct {v2, p1, v3}, Le/a/o4/d;-><init>(Ljava/lang/String;Le/a/d4/e;)V

    invoke-interface {v0, v2}, Le/a/o4/e;->c(Le/a/o4/d;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/fcm/FcmMessageListenerService;->c:Le/a/w2/a;

    if-eqz v0, :cond_3

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "firebaseToken"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Le/a/w2/b;->c:Le/a/w2/b;

    iget-object v0, v0, Le/a/w2/a;->a:Landroid/content/Context;

    const-string v3, "context"

    .line 6
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Le/a/w2/b;->a(Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/fcm/FcmMessageListenerService;->d:Le/a/y3/c;

    const-string v2, "freshChatManager"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/y3/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/truecaller/fcm/FcmMessageListenerService;->d:Le/a/y3/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/y3/c;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 10
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "appsFlyerEventsTracker"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "pushIdManager"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
