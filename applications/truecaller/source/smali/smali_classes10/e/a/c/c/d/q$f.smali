.class public Le/a/c/c/d/q$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/q;->h(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Le/a/c/c/d/q;


# direct methods
.method public constructor <init>(Le/a/c/c/d/q;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/q$f;->b:Le/a/c/c/d/q;

    iput-object p2, p0, Le/a/c/c/d/q$f;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/q$f;->b:Le/a/c/c/d/q;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/q;->a:Ln3/c0/q;

    .line 3
    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/q$f;->b:Le/a/c/c/d/q;

    .line 5
    iget-object v0, v0, Le/a/c/c/d/q;->c:Ln3/c0/k;

    .line 6
    iget-object v1, p0, Le/a/c/c/d/q$f;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ln3/c0/k;->insert(Ljava/lang/Iterable;)V

    .line 7
    iget-object v0, p0, Le/a/c/c/d/q$f;->b:Le/a/c/c/d/q;

    .line 8
    iget-object v0, v0, Le/a/c/c/d/q;->a:Ln3/c0/q;

    .line 9
    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 10
    sget-object v0, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v1, p0, Le/a/c/c/d/q$f;->b:Le/a/c/c/d/q;

    .line 12
    iget-object v1, v1, Le/a/c/c/d/q;->a:Ln3/c0/q;

    .line 13
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/c/c/d/q$f;->b:Le/a/c/c/d/q;

    .line 14
    iget-object v1, v1, Le/a/c/c/d/q;->a:Ln3/c0/q;

    .line 15
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 16
    throw v0
.end method
