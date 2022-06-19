.class public abstract Lcom/facebook/internal/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/m0$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001:\u0001+B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000bJ\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0006\u0010\u001c\u001a\u00020\u0019J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0004J\u0018\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010&\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020\u001bH$J\u0008\u0010(\u001a\u00020\u0019H\u0002J\u0010\u0010)\u001a\u00020\u00192\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0006\u0010*\u001a\u00020\u0015R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/facebook/internal/PlatformServiceClient;",
        "Landroid/content/ServiceConnection;",
        "context",
        "Landroid/content/Context;",
        "requestMessage",
        "",
        "replyMessage",
        "protocolVersion",
        "applicationId",
        "",
        "nonce",
        "(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)V",
        "getContext",
        "()Landroid/content/Context;",
        "handler",
        "Landroid/os/Handler;",
        "listener",
        "Lcom/facebook/internal/PlatformServiceClient$CompletedListener;",
        "getNonce",
        "()Ljava/lang/String;",
        "running",
        "",
        "sender",
        "Landroid/os/Messenger;",
        "callback",
        "",
        "result",
        "Landroid/os/Bundle;",
        "cancel",
        "handleMessage",
        "message",
        "Landroid/os/Message;",
        "onServiceConnected",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "populateRequestBundle",
        "data",
        "sendMessage",
        "setCompletedListener",
        "start",
        "CompletedListener",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public c:Lcom/facebook/internal/m0$b;

.field public d:Z

.field public e:Landroid/os/Messenger;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationId"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/facebook/internal/m0;->a:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/facebook/internal/m0;->f:I

    .line 5
    iput p3, p0, Lcom/facebook/internal/m0;->g:I

    .line 6
    iput-object p5, p0, Lcom/facebook/internal/m0;->h:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/facebook/internal/m0;->i:I

    .line 8
    iput-object p6, p0, Lcom/facebook/internal/m0;->j:Ljava/lang/String;

    .line 9
    new-instance p1, Lcom/facebook/internal/m0$a;

    invoke-direct {p1, p0}, Lcom/facebook/internal/m0$a;-><init>(Lcom/facebook/internal/m0;)V

    .line 10
    iput-object p1, p0, Lcom/facebook/internal/m0;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/facebook/internal/m0;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/internal/m0;->d:Z

    .line 3
    iget-object v1, p0, Lcom/facebook/internal/m0;->c:Lcom/facebook/internal/m0$b;

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    check-cast v1, Lcom/facebook/login/b;

    .line 5
    iget-object v2, v1, Lcom/facebook/login/b;->a:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v1, v1, Lcom/facebook/login/b;->b:Lcom/facebook/login/LoginClient$Request;

    const-string v3, "this$0"

    .line 6
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$request"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "request"

    .line 7
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v4, v2, Lcom/facebook/login/GetTokenLoginMethodHandler;->c:Lcom/facebook/login/o;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iput-object v5, v4, Lcom/facebook/internal/m0;->c:Lcom/facebook/internal/m0$b;

    .line 10
    :goto_0
    iput-object v5, v2, Lcom/facebook/login/GetTokenLoginMethodHandler;->c:Lcom/facebook/login/o;

    .line 11
    invoke-virtual {v2}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v4

    .line 12
    iget-object v4, v4, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Lcom/facebook/login/LoginClient$a;->b()V

    :goto_1
    if-eqz p1, :cond_12

    const-string v4, "com.facebook.platform.extra.PERMISSIONS"

    .line 13
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v4, Ls1/u/s;->a:Ls1/u/s;

    .line 14
    :cond_4
    iget-object v5, v1, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    if-nez v5, :cond_5

    .line 15
    sget-object v5, Ls1/u/u;->a:Ls1/u/u;

    :cond_5
    const-string v6, "com.facebook.platform.extra.ID_TOKEN"

    .line 16
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "openid"

    .line 17
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    move v6, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v6, v8

    :goto_3
    if-eqz v6, :cond_8

    .line 18
    invoke-virtual {v2}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->i()V

    goto/16 :goto_6

    .line 19
    :cond_8
    invoke-interface {v4, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 20
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "result"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.facebook.platform.extra.USER_ID"

    .line 21
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    move v0, v8

    :cond_a
    if-eqz v0, :cond_d

    .line 23
    invoke-virtual {v2}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-interface {v0}, Lcom/facebook/login/LoginClient$a;->a()V

    :goto_4
    const-string v0, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 26
    new-instance v3, Lcom/facebook/login/p;

    invoke-direct {v3, p1, v2, v1}, Lcom/facebook/login/p;-><init>(Landroid/os/Bundle;Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 27
    invoke-static {v0, v3}, Lcom/facebook/internal/q0;->q(Ljava/lang/String;Lcom/facebook/internal/q0$a;)V

    goto :goto_6

    .line 28
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_d
    invoke-virtual {v2, v1, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    goto :goto_6

    .line 30
    :cond_e
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 31
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 33
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 34
    :cond_10
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v8

    if-eqz v0, :cond_11

    const-string v0, ","

    .line 35
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "new_permissions"

    .line 36
    invoke-virtual {v2, v3, v0}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    const-string v0, "<set-?>"

    .line 37
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, v1, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    .line 39
    :cond_12
    invoke-virtual {v2}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->i()V

    :goto_6
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/facebook/internal/m0;->e:Landroid/os/Messenger;

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/facebook/internal/m0;->h:Ljava/lang/String;

    const-string v0, "com.facebook.platform.extra.APPLICATION_ID"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/facebook/internal/m0;->j:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v0, "com.facebook.platform.extra.NONCE"

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p2, "data"

    .line 6
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lcom/facebook/internal/m0;->f:I

    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    .line 8
    iget v1, p0, Lcom/facebook/internal/m0;->i:I

    iput v1, p2, Landroid/os/Message;->arg1:I

    .line 9
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 10
    new-instance p1, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/facebook/internal/m0;->b:Landroid/os/Handler;

    invoke-direct {p1, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/facebook/internal/m0;->e:Landroid/os/Messenger;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    invoke-virtual {p0, v0}, Lcom/facebook/internal/m0;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/m0;->e:Landroid/os/Messenger;

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/m0;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {p0, p1}, Lcom/facebook/internal/m0;->a(Landroid/os/Bundle;)V

    return-void
.end method
