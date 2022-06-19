.class public Ln3/m0/c0/t/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/m0/c0/t/s;->a(Landroid/content/Context;Ljava/util/UUID;Ln3/m0/i;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/m0/c0/t/w/c;

.field public final synthetic b:Ljava/util/UUID;

.field public final synthetic c:Ln3/m0/i;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ln3/m0/c0/t/s;


# direct methods
.method public constructor <init>(Ln3/m0/c0/t/s;Ln3/m0/c0/t/w/c;Ljava/util/UUID;Ln3/m0/i;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/t/s$a;->e:Ln3/m0/c0/t/s;

    iput-object p2, p0, Ln3/m0/c0/t/s$a;->a:Ln3/m0/c0/t/w/c;

    iput-object p3, p0, Ln3/m0/c0/t/s$a;->b:Ljava/util/UUID;

    iput-object p4, p0, Ln3/m0/c0/t/s$a;->c:Ln3/m0/i;

    iput-object p5, p0, Ln3/m0/c0/t/s$a;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/m0/c0/t/s$a;->a:Ln3/m0/c0/t/w/c;

    .line 2
    iget-object v0, v0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Ln3/m0/c0/t/w/a$c;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/m0/c0/t/s$a;->b:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Ln3/m0/c0/t/s$a;->e:Ln3/m0/c0/t/s;

    iget-object v1, v1, Ln3/m0/c0/t/s;->c:Ln3/m0/c0/s/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {v1, v0}, Ln3/m0/c0/s/t;->h(Ljava/lang/String;)Ln3/m0/x$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ln3/m0/x$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Ln3/m0/c0/t/s$a;->e:Ln3/m0/c0/t/s;

    iget-object v1, v1, Ln3/m0/c0/t/s;->b:Ln3/m0/c0/r/a;

    iget-object v2, p0, Ln3/m0/c0/t/s$a;->c:Ln3/m0/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v1, Ln3/m0/c0/d;

    :try_start_2
    invoke-virtual {v1, v0, v2}, Ln3/m0/c0/d;->f(Ljava/lang/String;Ln3/m0/i;)V

    .line 8
    iget-object v1, p0, Ln3/m0/c0/t/s$a;->d:Landroid/content/Context;

    iget-object v2, p0, Ln3/m0/c0/t/s$a;->c:Ln3/m0/i;

    invoke-static {v1, v0, v2}, Ln3/m0/c0/r/c;->a(Landroid/content/Context;Ljava/lang/String;Ln3/m0/i;)Landroid/content/Intent;

    move-result-object v0

    .line 9
    iget-object v1, p0, Ln3/m0/c0/t/s$a;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/m0/c0/t/s$a;->a:Ln3/m0/c0/t/w/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/m0/c0/t/w/c;->i(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    iget-object v1, p0, Ln3/m0/c0/t/s$a;->a:Ln3/m0/c0/t/w/c;

    invoke-virtual {v1, v0}, Ln3/m0/c0/t/w/c;->j(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
