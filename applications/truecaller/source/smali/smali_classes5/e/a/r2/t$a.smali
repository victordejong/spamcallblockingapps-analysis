.class public Le/a/r2/t$a;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Le/a/r2/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;",
        "Le/a/r2/w;"
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/n;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Le/a/r2/n;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Le/a/r2/n;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Le/a/r2/t$a;->a:Le/a/r2/n;

    .line 3
    iput-object p3, p0, Le/a/r2/t$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Le/a/r2/u;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/a/r2/u;

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/r2/t$a;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Le/a/r2/u;->d(Ljava/lang/Object;)Le/a/r2/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-interface {p1}, Le/a/r2/p;->a()Le/a/r2/d;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5
    iget-object v0, p0, Le/a/r2/t$a;->a:Le/a/r2/n;

    iget-object v2, p0, Le/a/r2/t$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v1}, Le/a/r2/n;->a(Ljava/lang/Object;Le/a/r2/u;Le/a/r2/d;)V

    const/4 p1, 0x0

    throw p1
.end method
