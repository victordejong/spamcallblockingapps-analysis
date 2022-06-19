.class public Le/a/k/n/e/f$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/n/e/f;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
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

.field public final synthetic b:Le/a/k/n/e/f;


# direct methods
.method public constructor <init>(Le/a/k/n/e/f;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k/n/e/f$h;->b:Le/a/k/n/e/f;

    iput-object p2, p0, Le/a/k/n/e/f$h;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "DELETE FROM hidden_contact WHERE number IN ("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/k/n/e/f$h;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/a/k/n/e/f$h;->b:Le/a/k/n/e/f;

    .line 7
    iget-object v1, v1, Le/a/k/n/e/f;->a:Ln3/c0/q;

    .line 8
    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 9
    iget-object v1, p0, Le/a/k/n/e/f$h;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 10
    invoke-interface {v0, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v0, v2, v3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Le/a/k/n/e/f$h;->b:Le/a/k/n/e/f;

    .line 13
    iget-object v1, v1, Le/a/k/n/e/f;->a:Ln3/c0/q;

    .line 14
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 15
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 16
    iget-object v0, p0, Le/a/k/n/e/f$h;->b:Le/a/k/n/e/f;

    .line 17
    iget-object v0, v0, Le/a/k/n/e/f;->a:Ln3/c0/q;

    .line 18
    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 19
    sget-object v0, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v1, p0, Le/a/k/n/e/f$h;->b:Le/a/k/n/e/f;

    .line 21
    iget-object v1, v1, Le/a/k/n/e/f;->a:Ln3/c0/q;

    .line 22
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/k/n/e/f$h;->b:Le/a/k/n/e/f;

    .line 23
    iget-object v1, v1, Le/a/k/n/e/f;->a:Ln3/c0/q;

    .line 24
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 25
    throw v0
.end method
