.class public Le/a/q/g/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/g/d;->b([Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:[Ljava/lang/Long;

.field public final synthetic b:Le/a/q/g/d;


# direct methods
.method public constructor <init>(Le/a/q/g/d;[Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/q/g/d$f;->b:Le/a/q/g/d;

    iput-object p2, p0, Le/a/q/g/d$f;->a:[Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        DELETE FROM contact_feedback "

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        WHERE _id NOT IN ("

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Le/a/q/g/d$f;->a:[Ljava/lang/Long;

    array-length v2, v2

    .line 7
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "        "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Le/a/q/g/d$f;->b:Le/a/q/g/d;

    .line 13
    iget-object v1, v1, Le/a/q/g/d;->a:Ln3/c0/q;

    .line 14
    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 15
    iget-object v1, p0, Le/a/q/g/d$f;->a:[Ljava/lang/Long;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    if-nez v5, :cond_0

    .line 16
    invoke-interface {v0, v4}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Le/a/q/g/d$f;->b:Le/a/q/g/d;

    .line 19
    iget-object v1, v1, Le/a/q/g/d;->a:Ln3/c0/q;

    .line 20
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 21
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 22
    iget-object v1, p0, Le/a/q/g/d$f;->b:Le/a/q/g/d;

    .line 23
    iget-object v1, v1, Le/a/q/g/d;->a:Ln3/c0/q;

    .line 24
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v1, p0, Le/a/q/g/d$f;->b:Le/a/q/g/d;

    .line 26
    iget-object v1, v1, Le/a/q/g/d;->a:Ln3/c0/q;

    .line 27
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/q/g/d$f;->b:Le/a/q/g/d;

    .line 28
    iget-object v1, v1, Le/a/q/g/d;->a:Ln3/c0/q;

    .line 29
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 30
    throw v0
.end method
