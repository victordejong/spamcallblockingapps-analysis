.class public final Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008:\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ)\u0010\r\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR(\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R(\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0012\u001a\u0004\u0008\u001a\u0010\u0014\"\u0004\u0008\u001b\u0010\u0016R(\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0012\u001a\u0004\u0008\u001f\u0010\u0014\"\u0004\u0008 \u0010\u0016R(\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\"0\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u0012\u001a\u0004\u0008$\u0010\u0014\"\u0004\u0008%\u0010\u0016R(\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\'0\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u0012\u001a\u0004\u0008)\u0010\u0014\"\u0004\u0008*\u0010\u0016R(\u00100\u001a\u0008\u0012\u0004\u0012\u00020,0\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u0012\u001a\u0004\u0008.\u0010\u0014\"\u0004\u0008/\u0010\u0016R(\u00109\u001a\u0002018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u00082\u00103\u0012\u0004\u00088\u0010\u0004\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107\u00a8\u0006;"
    }
    d2 = {
        "Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;",
        "Landroid/app/Service;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "Lo3/a;",
        "Le/a/e4/p;",
        "b",
        "Lo3/a;",
        "getMultiSimManager",
        "()Lo3/a;",
        "setMultiSimManager",
        "(Lo3/a;)V",
        "multiSimManager",
        "Le/a/q2/i0;",
        "e",
        "getMessageAnalytics",
        "setMessageAnalytics",
        "messageAnalytics",
        "Le/a/a/k/t;",
        "d",
        "getTransportManager",
        "setTransportManager",
        "transportManager",
        "Le/a/a/w0/a;",
        "f",
        "getMessagesMonitor",
        "setMessagesMonitor",
        "messagesMonitor",
        "Le/a/a/g/w;",
        "g",
        "getReadMessageStorage",
        "setReadMessageStorage",
        "readMessageStorage",
        "Le/a/b0/q/z;",
        "c",
        "getPhoneNumberHelper",
        "setPhoneNumberHelper",
        "phoneNumberHelper",
        "Ls1/w/f;",
        "a",
        "Ls1/w/f;",
        "getUiCoroutineContext",
        "()Ls1/w/f;",
        "setUiCoroutineContext",
        "(Ls1/w/f;)V",
        "getUiCoroutineContext$annotations",
        "uiCoroutineContext",
        "<init>",
        "messaging-transport_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/i0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/w0/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.messaging.transport.TransportComponentProvider"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/a/k/s;

    invoke-interface {v0}, Le/a/a/k/s;->r()Le/a/a/k/r;

    move-result-object v0

    .line 3
    invoke-interface {v0, p0}, Le/a/a/k/r;->d(Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 1
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.RESPOND_VIA_MESSAGE"

    .line 3
    invoke-static {v3, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 4
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty data uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 8
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.intent.extra.SUBJECT"

    .line 9
    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "android.intent.extra.TEXT"

    if-eqz v6, :cond_3

    .line 10
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xa

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    :cond_3
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, ""

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_0

    :cond_5
    move v5, v6

    :goto_0
    if-eqz v5, :cond_6

    .line 15
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 16
    :cond_6
    iget-object v5, v0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->b:Lo3/a;

    const-string v7, "multiSimManager"

    const/4 v8, 0x0

    if-eqz v5, :cond_f

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/e4/p;

    invoke-interface {v5, v1}, Le/a/e4/p;->z(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "multiSimManager.get().ge\u2026dViaMessageIntent(intent)"

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "-1"

    .line 17
    invoke-static {v9, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 18
    iget-object v5, v0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->b:Lo3/a;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    const-string v7, "multiSimManager.get()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Le/a/e4/p;

    invoke-interface {v5}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v5

    const-string v7, "multiSimManager.get().defaultSimToken"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 19
    :cond_8
    :goto_1
    iget-object v7, v0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->c:Lo3/a;

    if-eqz v7, :cond_e

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/b0/q/z;

    invoke-static {v2, v7, v5}, Lcom/truecaller/data/entity/messaging/Participant;->c(Landroid/net/Uri;Le/a/b0/q/z;Ljava/lang/String;)[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    const-string v7, "Participant.buildFromDat\u2026erHelper.get(), simToken)"

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    array-length v7, v2

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    move v3, v6

    :goto_2
    if-eqz v3, :cond_a

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty participants list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 23
    :cond_a
    new-instance v3, Lcom/truecaller/messaging/data/types/Draft$b;

    invoke-direct {v3}, Lcom/truecaller/messaging/data/types/Draft$b;-><init>()V

    .line 24
    array-length v7, v2

    move v9, v6

    :goto_3
    if-ge v9, v7, :cond_b

    aget-object v10, v2, v9

    .line 25
    invoke-static {v10}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 26
    iget-object v11, v3, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 27
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    iput-object v4, v3, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 29
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v3

    const-string v4, "draftBuilder.build()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "inCall"

    .line 30
    invoke-virtual {v3, v5, v4}, Lcom/truecaller/messaging/data/types/Draft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v3

    const-string v4, "draft.buildMessage(simTo\u2026nalyticsContexts.IN_CALL)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v4, v0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->d:Lo3/a;

    if-eqz v4, :cond_d

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/k/t;

    invoke-interface {v4, v3, v6}, Le/a/a/k/t;->h(Lcom/truecaller/messaging/data/types/Message;Z)Le/a/r2/x;

    move-result-object v3

    new-instance v4, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$a;

    move/from16 v5, p3

    invoke-direct {v4, p0, v5}, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$a;-><init>(Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;I)V

    invoke-virtual {v3, v4}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    .line 32
    sget-object v9, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v10, v0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->a:Ls1/w/f;

    if-eqz v10, :cond_c

    const/4 v11, 0x0

    new-instance v12, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;

    invoke-direct {v12, p0, v2, v8}, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;-><init>(Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;[Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 33
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    :cond_c
    const-string v1, "uiCoroutineContext"

    .line 34
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_d
    const-string v1, "transportManager"

    .line 35
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_e
    const-string v1, "phoneNumberHelper"

    .line 36
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 37
    :cond_f
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8
.end method
