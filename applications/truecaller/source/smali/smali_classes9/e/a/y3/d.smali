.class public final Le/a/y3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y3/c;


# instance fields
.field public a:Lcom/freshchat/consumer/sdk/Freshchat;

.field public final b:Ls1/g;

.field public final c:Landroid/content/Context;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/o/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/l/p2/v0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/y3/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/b0/o/a;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/l/p2/v0;",
            ">;",
            "Lo3/a<",
            "Le/a/y3/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freshChatHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y3/d;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/y3/d;->d:Lo3/a;

    iput-object p3, p0, Le/a/y3/d;->e:Lo3/a;

    iput-object p4, p0, Le/a/y3/d;->f:Lo3/a;

    iput-object p5, p0, Le/a/y3/d;->g:Lo3/a;

    iput-object p6, p0, Le/a/y3/d;->h:Lo3/a;

    .line 2
    sget-object p1, Le/a/y3/d$a;->b:Le/a/y3/d$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/y3/d;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/y3/d;->f()Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/y3/d;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/Freshchat;->handleFcmMessage(Landroid/content/Context;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/y3/d;->f()Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/y3/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->showConversations(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/y3/d;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->z4:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x121

    aget-object v4, v2, v3

    invoke-virtual {v1, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v4, 0x120

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/y3/d;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 4
    iget-object v5, v0, Le/a/u3/g;->y4:Le/a/u3/g$a;

    aget-object v6, v2, v4

    invoke-virtual {v5, v0, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/y3/d;->h:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y3/a;

    invoke-interface {v0}, Le/a/y3/a;->a()Z

    move-result v0

    .line 7
    iget-object v5, p0, Le/a/y3/d;->g:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l/p2/v0;

    invoke-interface {v5}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Le/a/y3/d;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 9
    iget-object v6, v0, Le/a/u3/g;->z4:Le/a/u3/g$a;

    aget-object v3, v2, v3

    invoke-virtual {v6, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "regular"

    invoke-static {v5, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    :cond_1
    iget-object v0, p0, Le/a/y3/d;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 12
    iget-object v3, v0, Le/a/u3/g;->y4:Le/a/u3/g$a;

    aget-object v2, v2, v4

    invoke-virtual {v3, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "gold"

    invoke-static {v5, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public d(Lcom/google/firebase/messaging/RemoteMessage;)Z
    .locals 1

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/y3/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->o2()Ljava/util/Map;

    move-result-object p1

    const-string v0, "freshchat_user"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/y3/d;->f()Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/Freshchat;->setPushRegistrationToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final f()Lcom/freshchat/consumer/sdk/Freshchat;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/y3/d;->a:Lcom/freshchat/consumer/sdk/Freshchat;

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Le/a/y3/d;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->w5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x154

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 4
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "Base64.decode(chatWithUsConfig, Base64.DEFAULT)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v4, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_6

    .line 7
    :try_start_1
    iget-object v0, p0, Le/a/y3/d;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/e/k;

    .line 8
    const-class v4, Lcom/truecaller/freshchat/FreshChatModel;

    .line 9
    invoke-virtual {v0, v1, v4}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-static {v4}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/truecaller/freshchat/FreshChatModel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_6

    .line 13
    iget-object v1, p0, Le/a/y3/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v1

    iput-object v1, p0, Le/a/y3/d;->a:Lcom/freshchat/consumer/sdk/Freshchat;

    .line 14
    new-instance v1, Lcom/freshchat/consumer/sdk/FreshchatConfig;

    invoke-virtual {v0}, Lcom/truecaller/freshchat/FreshChatModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/truecaller/freshchat/FreshChatModel;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/freshchat/consumer/sdk/FreshchatConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/truecaller/freshchat/FreshChatModel;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setDomain(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setCameraCaptureEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    .line 17
    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setGallerySelectionEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    .line 18
    :try_start_2
    iget-object v0, p0, Le/a/y3/d;->a:Lcom/freshchat/consumer/sdk/Freshchat;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/Freshchat;->init(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 20
    :cond_1
    :goto_3
    new-instance v0, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;-><init>()V

    .line 21
    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->setNotificationSoundEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    move-result-object v0

    const v1, 0x7f0816fb

    .line 22
    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->setSmallIcon(I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->setPriority(I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Le/a/y3/d;->f()Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/Freshchat;->setNotificationConfig(Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;)Lcom/freshchat/consumer/sdk/Freshchat;

    .line 25
    :cond_2
    iget-object v0, p0, Le/a/y3/d;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    const-string v1, "fresh_chat_update"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 26
    iget-object v0, p0, Le/a/y3/d;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    const-string v1, "FirebaseMessaging.getInstance()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->f()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Le/a/y3/e;

    invoke-direct {v1, p0}, Le/a/y3/e;-><init>(Le/a/y3/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 28
    invoke-virtual {p0}, Le/a/y3/d;->f()Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getUser()Lcom/freshchat/consumer/sdk/FreshchatUser;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "getFreshChatInstance()?.user ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Le/a/y3/d;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/o/a;

    const-string v2, "profileFirstName"

    .line 30
    invoke-interface {v1, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 31
    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setFirstName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    :cond_3
    const-string v2, "profileLastName"

    .line 32
    invoke-interface {v1, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 33
    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setLastName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    :cond_4
    const-string v2, "profileEmail"

    .line 34
    invoke-interface {v1, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 35
    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setEmail(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    .line 36
    :cond_5
    iget-object v1, p0, Le/a/y3/d;->e:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/e/r/a;

    const-string v2, "profileNumber"

    invoke-interface {v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 37
    :try_start_3
    invoke-virtual {p0}, Le/a/y3/d;->f()Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 38
    iget-object v4, p0, Le/a/y3/d;->h:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/y3/a;

    invoke-interface {v4, v1}, Le/a/y3/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lcom/freshchat/consumer/sdk/Freshchat;->identifyUser(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Freshchat;

    .line 39
    invoke-virtual {v2, v0}, Lcom/freshchat/consumer/sdk/Freshchat;->setUser(Lcom/freshchat/consumer/sdk/FreshchatUser;)Lcom/freshchat/consumer/sdk/Freshchat;
    :try_end_3
    .catch Lcom/freshchat/consumer/sdk/exception/MethodNotAllowedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    :cond_6
    :goto_4
    iget-object v0, p0, Le/a/y3/d;->a:Lcom/freshchat/consumer/sdk/Freshchat;

    return-object v0
.end method
