.class public final Le/a/a/k/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/q1/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp3/a/q1/h<",
        "Lcom/truecaller/api/services/messenger/v1/events/Event;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/a/k/a/w1;


# direct methods
.method public constructor <init>(Le/a/a/k/a/w1;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/e;->a:Le/a/a/k/a/w1;

    return-void
.end method


# virtual methods
.method public W0(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/a/k/a/e;->d(ILjava/lang/Object;)V

    return-void
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/a/k/a/e;->d(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event;

    const-string v0, "event"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Le/a/a/k/a/e;->d(ILjava/lang/Object;)V

    return-void
.end method

.method public final d(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a/e;->a:Le/a/a/k/a/w1;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
