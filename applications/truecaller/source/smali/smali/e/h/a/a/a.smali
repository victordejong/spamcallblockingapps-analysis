.class public Le/h/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/h/a/a/e;",
        "Ljava/lang/Object<",
        "Lcom/huawei/hms/push/RemoteMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/h/a/c/s0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/h/a/c/s0/b<",
            "Lcom/huawei/hms/push/RemoteMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Le/h/a/a/c;

    invoke-direct {v0}, Le/h/a/a/c;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Le/h/a/a/a;->a:Le/h/a/c/s0/b;

    return-void
.end method

.method public constructor <init>(Le/h/a/c/s0/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/h/a/c/s0/b<",
            "Lcom/huawei/hms/push/RemoteMessage;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Le/h/a/a/a;->a:Le/h/a/c/s0/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/huawei/hms/push/RemoteMessage;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/a/a;->a:Le/h/a/c/s0/b;

    invoke-interface {v0, p2}, Le/h/a/c/s0/b;->a(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Le/h/a/c/w0/h$b;->a:Le/h/a/c/w0/h;

    sget-object v1, Le/h/a/c/w0/g$a;->g:Le/h/a/c/w0/g$a;

    invoke-virtual {v1}, Le/h/a/c/w0/g$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Le/h/a/c/w0/h;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    sget-object p1, Le/h/a/a/b;->a:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
