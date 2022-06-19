.class public final Lp3/a/n1/m1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$c;->a:Lp3/a/n1/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$c;->a:Lp3/a/n1/m1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/m1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/a/n1/m1$c;->a:Lp3/a/n1/m1;

    .line 5
    iget-object v1, v0, Lp3/a/n1/m1;->c0:Lp3/a/k1$c;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v1, Lp3/a/k1$c;->a:Lp3/a/k1$b;

    iget-boolean v2, v1, Lp3/a/k1$b;->c:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lp3/a/k1$b;->b:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    iget-boolean v0, v0, Lp3/a/n1/m1;->z:Z

    const-string v1, "name resolver must be started"

    .line 8
    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lp3/a/n1/m1$c;->a:Lp3/a/n1/m1;

    .line 10
    invoke-virtual {v0}, Lp3/a/n1/m1;->n()V

    .line 11
    :cond_2
    iget-object v0, p0, Lp3/a/n1/m1$c;->a:Lp3/a/n1/m1;

    .line 12
    iget-object v0, v0, Lp3/a/n1/m1;->D:Ljava/util/Set;

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/n1/a1;

    .line 14
    iget-object v2, v1, Lp3/a/n1/a1;->k:Lp3/a/k1;

    new-instance v3, Lp3/a/n1/c1;

    invoke-direct {v3, v1}, Lp3/a/n1/c1;-><init>(Lp3/a/n1/a1;)V

    .line 15
    iget-object v1, v2, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v4, "runnable is null"

    invoke-static {v3, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2}, Lp3/a/k1;->a()V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, p0, Lp3/a/n1/m1$c;->a:Lp3/a/n1/m1;

    .line 18
    iget-object v0, v0, Lp3/a/n1/m1;->G:Ljava/util/Set;

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/n1/z1;

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    throw v0
.end method
