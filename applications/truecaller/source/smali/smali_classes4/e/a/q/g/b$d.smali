.class public Le/a/q/g/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/g/b;->c(Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/a/q/g/b;


# direct methods
.method public constructor <init>(Le/a/q/g/b;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/q/g/b$d;->c:Le/a/q/g/b;

    iput-object p2, p0, Le/a/q/g/b$d;->a:Ljava/util/List;

    iput-object p3, p0, Le/a/q/g/b$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "            UPDATE comment_feedback_table SET sync_state="

    const-string v2, "?"

    const-string v3, "            WHERE _id in ("

    .line 1
    invoke-static {v0, v1, v2, v0, v3}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Le/a/q/g/b$d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 3
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "            "

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/q/g/b$d;->c:Le/a/q/g/b;

    .line 9
    iget-object v1, v1, Le/a/q/g/b;->a:Ln3/c0/q;

    .line 10
    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 11
    iget-object v1, p0, Le/a/q/g/b$d;->b:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 12
    invoke-interface {v0, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v0, v2, v1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    .line 14
    iget-object v2, p0, Le/a/q/g/b$d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_1

    .line 15
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Ln3/e0/a/d;->l0(IJ)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    :cond_2
    iget-object v1, p0, Le/a/q/g/b$d;->c:Le/a/q/g/b;

    .line 18
    iget-object v1, v1, Le/a/q/g/b;->a:Ln3/c0/q;

    .line 19
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 20
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 21
    iget-object v1, p0, Le/a/q/g/b$d;->c:Le/a/q/g/b;

    .line 22
    iget-object v1, v1, Le/a/q/g/b;->a:Ln3/c0/q;

    .line 23
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v1, p0, Le/a/q/g/b$d;->c:Le/a/q/g/b;

    .line 25
    iget-object v1, v1, Le/a/q/g/b;->a:Ln3/c0/q;

    .line 26
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/q/g/b$d;->c:Le/a/q/g/b;

    .line 27
    iget-object v1, v1, Le/a/q/g/b;->a:Ln3/c0/q;

    .line 28
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 29
    throw v0
.end method
