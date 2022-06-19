.class public final Lp3/a/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lp3/a/q$b;

.field public final c:Lp3/a/q;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lp3/a/q$b;Lp3/a/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/q$d;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lp3/a/q$d;->b:Lp3/a/q$b;

    .line 4
    iput-object p3, p0, Lp3/a/q$d;->c:Lp3/a/q;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/q$d;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Lp3/a/q;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Exception notifying context listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/q$d;->b:Lp3/a/q$b;

    iget-object v1, p0, Lp3/a/q$d;->c:Lp3/a/q;

    invoke-interface {v0, v1}, Lp3/a/q$b;->a(Lp3/a/q;)V

    return-void
.end method
