.class public Le/a/i/e/h/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/e/h/b/b;

.field public final synthetic b:Le/a/i/e/h/a/f;


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/f;Le/a/i/e/h/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/e/h/a/g;->b:Le/a/i/e/h/a/f;

    iput-object p2, p0, Le/a/i/e/h/a/g;->a:Le/a/i/e/h/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/h/a/g;->b:Le/a/i/e/h/a/f;

    .line 2
    iget-object v0, v0, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    .line 3
    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Le/a/i/e/h/a/g;->b:Le/a/i/e/h/a/f;

    .line 5
    iget-object v0, v0, Le/a/i/e/h/a/f;->b:Ln3/c0/k;

    .line 6
    iget-object v1, p0, Le/a/i/e/h/a/g;->a:Le/a/i/e/h/b/b;

    invoke-virtual {v0, v1}, Ln3/c0/k;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Le/a/i/e/h/a/g;->b:Le/a/i/e/h/a/f;

    .line 8
    iget-object v2, v2, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    .line 9
    invoke-virtual {v2}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v1, p0, Le/a/i/e/h/a/g;->b:Le/a/i/e/h/a/f;

    .line 12
    iget-object v1, v1, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    .line 13
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/i/e/h/a/g;->b:Le/a/i/e/h/a/f;

    .line 14
    iget-object v1, v1, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    .line 15
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 16
    throw v0
.end method
