.class public Le/f/a/n/o/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/g;
.implements Le/f/a/n/n/d$a;
.implements Le/f/a/n/o/g$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/o/g;",
        "Le/f/a/n/n/d$a<",
        "Ljava/lang/Object;",
        ">;",
        "Le/f/a/n/o/g$a;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/o/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/h<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Le/f/a/n/o/g$a;

.field public c:I

.field public d:Le/f/a/n/o/d;

.field public e:Ljava/lang/Object;

.field public volatile f:Le/f/a/n/p/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Le/f/a/n/o/e;


# direct methods
.method public constructor <init>(Le/f/a/n/o/h;Le/f/a/n/o/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/h<",
            "*>;",
            "Le/f/a/n/o/g$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    .line 3
    iput-object p2, p0, Le/f/a/n/o/a0;->b:Le/f/a/n/o/g$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 10

    .line 1
    iget-object v0, p0, Le/f/a/n/o/a0;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-object v1, p0, Le/f/a/n/o/a0;->e:Ljava/lang/Object;

    .line 3
    sget v2, Le/f/a/t/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 4
    :try_start_0
    iget-object v4, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    invoke-virtual {v4, v0}, Le/f/a/n/o/h;->e(Ljava/lang/Object;)Le/f/a/n/d;

    move-result-object v4

    .line 5
    new-instance v5, Le/f/a/n/o/f;

    iget-object v6, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    .line 6
    iget-object v6, v6, Le/f/a/n/o/h;->i:Le/f/a/n/i;

    .line 7
    invoke-direct {v5, v4, v0, v6}, Le/f/a/n/o/f;-><init>(Le/f/a/n/d;Ljava/lang/Object;Le/f/a/n/i;)V

    .line 8
    new-instance v6, Le/f/a/n/o/e;

    iget-object v7, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v7, v7, Le/f/a/n/p/n$a;->a:Le/f/a/n/f;

    iget-object v8, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    .line 9
    iget-object v9, v8, Le/f/a/n/o/h;->n:Le/f/a/n/f;

    .line 10
    invoke-direct {v6, v7, v9}, Le/f/a/n/o/e;-><init>(Le/f/a/n/f;Le/f/a/n/f;)V

    iput-object v6, p0, Le/f/a/n/o/a0;->g:Le/f/a/n/o/e;

    .line 11
    invoke-virtual {v8}, Le/f/a/n/o/h;->b()Le/f/a/n/o/c0/a;

    move-result-object v6

    iget-object v7, p0, Le/f/a/n/o/a0;->g:Le/f/a/n/o/e;

    invoke-interface {v6, v7, v5}, Le/f/a/n/o/c0/a;->a(Le/f/a/n/f;Le/f/a/n/o/c0/a$b;)V

    const-string v5, "SourceGenerator"

    const/4 v6, 0x2

    .line 12
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished encoding source to cache, key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Le/f/a/n/o/a0;->g:Le/f/a/n/o/e;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encoder: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v2, v3}, Le/f/a/t/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    iget-object v0, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v0, v0, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v0}, Le/f/a/n/n/d;->b()V

    .line 16
    new-instance v0, Le/f/a/n/o/d;

    iget-object v2, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v2, v2, Le/f/a/n/p/n$a;->a:Le/f/a/n/f;

    .line 17
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    invoke-direct {v0, v2, v3, p0}, Le/f/a/n/o/d;-><init>(Ljava/util/List;Le/f/a/n/o/h;Le/f/a/n/o/g$a;)V

    iput-object v0, p0, Le/f/a/n/o/a0;->d:Le/f/a/n/o/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    iget-object v1, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v1, v1, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v1}, Le/f/a/n/n/d;->b()V

    throw v0

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Le/f/a/n/o/a0;->d:Le/f/a/n/o/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Le/f/a/n/o/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 20
    :cond_2
    iput-object v1, p0, Le/f/a/n/o/a0;->d:Le/f/a/n/o/d;

    .line 21
    iput-object v1, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    const/4 v0, 0x0

    move v1, v0

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 22
    iget v3, p0, Le/f/a/n/o/a0;->c:I

    iget-object v4, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    invoke-virtual {v4}, Le/f/a/n/o/h;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    if-eqz v3, :cond_6

    .line 23
    iget-object v3, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    invoke-virtual {v3}, Le/f/a/n/o/h;->c()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Le/f/a/n/o/a0;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Le/f/a/n/o/a0;->c:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/f/a/n/p/n$a;

    iput-object v3, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    .line 24
    iget-object v3, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    .line 25
    iget-object v3, v3, Le/f/a/n/o/h;->p:Le/f/a/n/o/k;

    .line 26
    iget-object v4, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v4, v4, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v4}, Le/f/a/n/n/d;->c()Le/f/a/n/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/f/a/n/o/k;->c(Le/f/a/n/a;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    iget-object v4, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v4, v4, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    .line 27
    invoke-interface {v4}, Le/f/a/n/n/d;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/f/a/n/o/h;->g(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    :cond_5
    iget-object v1, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v1, v1, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    iget-object v3, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    .line 29
    iget-object v3, v3, Le/f/a/n/o/h;->o:Le/f/a/f;

    .line 30
    invoke-interface {v1, v3, p0}, Le/f/a/n/n/d;->d(Le/f/a/f;Le/f/a/n/n/d$a;)V

    move v1, v2

    goto :goto_1

    :cond_6
    return v1
.end method

.method public c(Le/f/a/n/f;Ljava/lang/Exception;Le/f/a/n/n/d;Le/f/a/n/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/f;",
            "Ljava/lang/Exception;",
            "Le/f/a/n/n/d<",
            "*>;",
            "Le/f/a/n/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Le/f/a/n/o/a0;->b:Le/f/a/n/o/g$a;

    iget-object v0, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v0, v0, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v0}, Le/f/a/n/n/d;->c()Le/f/a/n/a;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Le/f/a/n/o/g$a;->c(Le/f/a/n/f;Ljava/lang/Exception;Le/f/a/n/n/d;Le/f/a/n/a;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v0}, Le/f/a/n/n/d;->cancel()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/f/a/n/o/a0;->a:Le/f/a/n/o/h;

    .line 2
    iget-object v0, v0, Le/f/a/n/o/h;->p:Le/f/a/n/o/k;

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v1, v1, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v1}, Le/f/a/n/n/d;->c()Le/f/a/n/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/a/n/o/k;->c(Le/f/a/n/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Le/f/a/n/o/a0;->e:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Le/f/a/n/o/a0;->b:Le/f/a/n/o/g$a;

    invoke-interface {p1}, Le/f/a/n/o/g$a;->g()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/f/a/n/o/a0;->b:Le/f/a/n/o/g$a;

    iget-object v1, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v1, v1, Le/f/a/n/p/n$a;->a:Le/f/a/n/f;

    iget-object v2, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v3, v2, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    iget-object v2, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v2, v2, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    .line 7
    invoke-interface {v2}, Le/f/a/n/n/d;->c()Le/f/a/n/a;

    move-result-object v4

    iget-object v5, p0, Le/f/a/n/o/a0;->g:Le/f/a/n/o/e;

    move-object v2, p1

    .line 8
    invoke-interface/range {v0 .. v5}, Le/f/a/n/o/g$a;->h(Le/f/a/n/f;Ljava/lang/Object;Le/f/a/n/n/d;Le/f/a/n/a;Le/f/a/n/f;)V

    :goto_0
    return-void
.end method

.method public f(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/a/n/o/a0;->b:Le/f/a/n/o/g$a;

    iget-object v1, p0, Le/f/a/n/o/a0;->g:Le/f/a/n/o/e;

    iget-object v2, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v2, v2, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    iget-object v3, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object v3, v3, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v3}, Le/f/a/n/n/d;->c()Le/f/a/n/a;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Le/f/a/n/o/g$a;->c(Le/f/a/n/f;Ljava/lang/Exception;Le/f/a/n/n/d;Le/f/a/n/a;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public h(Le/f/a/n/f;Ljava/lang/Object;Le/f/a/n/n/d;Le/f/a/n/a;Le/f/a/n/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/f;",
            "Ljava/lang/Object;",
            "Le/f/a/n/n/d<",
            "*>;",
            "Le/f/a/n/a;",
            "Le/f/a/n/f;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/o/a0;->b:Le/f/a/n/o/g$a;

    iget-object p4, p0, Le/f/a/n/o/a0;->f:Le/f/a/n/p/n$a;

    iget-object p4, p4, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {p4}, Le/f/a/n/n/d;->c()Le/f/a/n/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Le/f/a/n/o/g$a;->h(Le/f/a/n/f;Ljava/lang/Object;Le/f/a/n/n/d;Le/f/a/n/a;Le/f/a/n/f;)V

    return-void
.end method
