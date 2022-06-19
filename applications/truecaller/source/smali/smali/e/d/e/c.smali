.class public Le/d/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/d/e/o;

.field public final synthetic b:Le/d/e/d;


# direct methods
.method public constructor <init>(Le/d/e/d;Le/d/e/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/d/e/c;->b:Le/d/e/d;

    iput-object p2, p0, Le/d/e/c;->a:Le/d/e/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/d/e/c;->b:Le/d/e/d;

    .line 2
    iget-object v0, v0, Le/d/e/d;->b:Ljava/util/concurrent/BlockingQueue;

    .line 3
    iget-object v1, p0, Le/d/e/c;->a:Le/d/e/o;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
