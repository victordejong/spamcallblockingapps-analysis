.class public Le/a/i/b0/c/c/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/b0/c/c/b;->u(Ljava/lang/String;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
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

.field public final synthetic c:Le/a/i/b0/c/c/b;


# direct methods
.method public constructor <init>(Le/a/i/b0/c/c/b;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/b0/c/c/b$c;->c:Le/a/i/b0/c/c/b;

    iput-object p2, p0, Le/a/i/b0/c/c/b$c;->a:Ljava/util/List;

    iput-object p3, p0, Le/a/i/b0/c/c/b$c;->b:Ljava/lang/String;

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

    const-string v0, "\n"

    const-string v1, "            DELETE FROM ad_campaigns "

    const-string v2, "            WHERE phone_number = "

    const-string v3, "?"

    .line 1
    invoke-static {v0, v1, v0, v2, v3}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    const-string v3, "                  placement_name IN ("

    .line 2
    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->S0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Le/a/i/b0/c/c/b$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "            "

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Le/a/i/b0/c/c/b$c;->c:Le/a/i/b0/c/c/b;

    .line 10
    iget-object v1, v1, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    .line 11
    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 12
    iget-object v1, p0, Le/a/i/b0/c/c/b$c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 13
    invoke-interface {v0, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v0, v2, v1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Le/a/i/b0/c/c/b$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 16
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 17
    :cond_1
    invoke-interface {v0, v1, v3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iget-object v1, p0, Le/a/i/b0/c/c/b$c;->c:Le/a/i/b0/c/c/b;

    .line 19
    iget-object v1, v1, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    .line 20
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 21
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 22
    iget-object v1, p0, Le/a/i/b0/c/c/b$c;->c:Le/a/i/b0/c/c/b;

    .line 23
    iget-object v1, v1, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    .line 24
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v1, p0, Le/a/i/b0/c/c/b$c;->c:Le/a/i/b0/c/c/b;

    .line 26
    iget-object v1, v1, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    .line 27
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/i/b0/c/c/b$c;->c:Le/a/i/b0/c/c/b;

    .line 28
    iget-object v1, v1, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    .line 29
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 30
    throw v0
.end method
