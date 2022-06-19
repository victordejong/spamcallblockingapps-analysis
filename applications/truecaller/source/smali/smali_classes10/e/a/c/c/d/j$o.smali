.class public Le/a/c/c/d/j$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/j;->e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Le/a/c/c/d/j;


# direct methods
.method public constructor <init>(Le/a/c/c/d/j;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/j$o;->b:Le/a/c/c/d/j;

    iput-object p2, p0, Le/a/c/c/d/j$o;->a:Ljava/util/List;

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
    iget-object v0, p0, Le/a/c/c/d/j$o;->b:Le/a/c/c/d/j;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/j;->a:Ln3/c0/q;

    .line 3
    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/j$o;->b:Le/a/c/c/d/j;

    .line 5
    iget-object v0, v0, Le/a/c/c/d/j;->b:Ln3/c0/k;

    .line 6
    iget-object v1, p0, Le/a/c/c/d/j$o;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ln3/c0/k;->insertAndReturnIdsArrayBox(Ljava/util/Collection;)[Ljava/lang/Long;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/a/c/c/d/j$o;->b:Le/a/c/c/d/j;

    .line 8
    iget-object v1, v1, Le/a/c/c/d/j;->a:Ln3/c0/q;

    .line 9
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v1, p0, Le/a/c/c/d/j$o;->b:Le/a/c/c/d/j;

    .line 11
    iget-object v1, v1, Le/a/c/c/d/j;->a:Ln3/c0/q;

    .line 12
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/c/c/d/j$o;->b:Le/a/c/c/d/j;

    .line 13
    iget-object v1, v1, Le/a/c/c/d/j;->a:Ln3/c0/q;

    .line 14
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 15
    throw v0
.end method
