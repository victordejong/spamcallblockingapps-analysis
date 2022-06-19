.class public final Le/m/a/h/a/d/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/f0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/a/h/a/f/e;

.field public final c:Le/m/a/h/a/d/y;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Le/m/a/h/a/d/y;Le/m/a/h/a/f/e;Le/m/a/h/a/f/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/d/w;->a:Landroid/content/Context;

    iput-object p4, p0, Le/m/a/h/a/d/w;->b:Le/m/a/h/a/f/e;

    iput-object p3, p0, Le/m/a/h/a/d/w;->c:Le/m/a/h/a/d/y;

    iput-object p2, p0, Le/m/a/h/a/d/w;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Le/m/a/h/a/g/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Le/m/a/h/a/g/d0;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/a/h/a/f/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/m/a/h/a/d/w;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Le/m/a/h/a/d/v;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Le/m/a/h/a/d/v;-><init>(Le/m/a/h/a/d/w;Ljava/util/List;Le/m/a/h/a/g/d0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Ingestion should only be called in SplitCompat mode."

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
