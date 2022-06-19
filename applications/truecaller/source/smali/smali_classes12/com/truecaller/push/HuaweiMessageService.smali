.class public final Lcom/truecaller/push/HuaweiMessageService;
.super Lcom/huawei/hms/push/HmsMessageService;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/push/HuaweiMessageService;",
        "Lcom/huawei/hms/push/HmsMessageService;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "Lcom/huawei/hms/push/RemoteMessage;",
        "message",
        "onMessageReceived",
        "(Lcom/huawei/hms/push/RemoteMessage;)V",
        "",
        "token",
        "onNewToken",
        "(Ljava/lang/String;)V",
        "Le/a/o4/e;",
        "b",
        "Le/a/o4/e;",
        "getPushIdManager",
        "()Le/a/o4/e;",
        "setPushIdManager",
        "(Le/a/o4/e;)V",
        "pushIdManager",
        "Le/a/o4/b;",
        "c",
        "Le/a/o4/b;",
        "getPushIdHandler",
        "()Le/a/o4/b;",
        "setPushIdHandler",
        "(Le/a/o4/b;)V",
        "pushIdHandler",
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
.field public b:Le/a/o4/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/o4/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/push/HmsMessageService;-><init>()V

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

    invoke-interface {v0, p0}, Le/a/k2;->u(Lcom/truecaller/push/HuaweiMessageService;)V

    return-void
.end method

.method public onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    .line 2
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 3
    new-instance v4, Lcom/truecaller/push/HuaweiMessageService$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/truecaller/push/HuaweiMessageService$a;-><init>(Lcom/truecaller/push/HuaweiMessageService;Lcom/huawei/hms/push/RemoteMessage;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/truecaller/push/HuaweiMessageService;->b:Le/a/o4/e;

    if-eqz v0, :cond_0

    new-instance v1, Le/a/o4/d;

    sget-object v2, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-direct {v1, p1, v2}, Le/a/o4/d;-><init>(Ljava/lang/String;Le/a/d4/e;)V

    invoke-interface {v0, v1}, Le/a/o4/e;->c(Le/a/o4/d;)V

    goto :goto_0

    :cond_0
    const-string p1, "pushIdManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
