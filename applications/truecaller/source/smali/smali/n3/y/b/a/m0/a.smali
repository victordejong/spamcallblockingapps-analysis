.class public Ln3/y/b/a/m0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/f0$b;
.implements Ln3/y/b/a/s0/d;
.implements Ln3/y/b/a/n0/n;
.implements Ln3/y/b/a/y0/o;
.implements Ln3/y/b/a/t0/c0;
.implements Ln3/y/b/a/w0/d$a;
.implements Ln3/y/b/a/y0/g;
.implements Ln3/y/b/a/n0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/m0/a$a;,
        Ln3/y/b/a/m0/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ln3/y/b/a/m0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ln3/y/b/a/x0/a;

.field public final c:Ln3/y/b/a/l0$c;

.field public final d:Ln3/y/b/a/m0/a$b;

.field public e:Ln3/y/b/a/f0;


# direct methods
.method public constructor <init>(Ln3/y/b/a/x0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/m0/a;->b:Ln3/y/b/a/x0/a;

    .line 3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    new-instance p1, Ln3/y/b/a/m0/a$b;

    invoke-direct {p1}, Ln3/y/b/a/m0/a$b;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 5
    new-instance p1, Ln3/y/b/a/l0$c;

    invoke-direct {p1}, Ln3/y/b/a/l0$c;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/m0/a;->c:Ln3/y/b/a/l0$c;

    return-void
.end method


# virtual methods
.method public final A(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$c;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/m0/a;->E(ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v0, p1, p3}, Ln3/y/b/a/m0/b;->f(Ln3/y/b/a/m0/b$a;Ln3/y/b/a/t0/c0$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final A0()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 2
    iget-boolean v1, v0, Ln3/y/b/a/m0/a$b;->h:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Ln3/y/b/a/m0/a$b;->h:Z

    .line 4
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->d:Ln3/y/b/a/m0/a$a;

    iput-object v1, v0, Ln3/y/b/a/m0/a$b;->e:Ln3/y/b/a/m0/a$a;

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 6
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 7
    invoke-interface {v2, v0}, Ln3/y/b/a/m0/b;->e(Ln3/y/b/a/m0/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B(Ln3/y/b/a/l0;ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln3/y/b/a/l0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v5, p3

    .line 2
    iget-object p3, p0, Ln3/y/b/a/m0/a;->b:Ln3/y/b/a/x0/a;

    invoke-interface {p3}, Ln3/y/b/a/x0/a;->a()J

    move-result-wide v1

    .line 3
    iget-object p3, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    .line 4
    invoke-interface {p3}, Ln3/y/b/a/f0;->getCurrentTimeline()Ln3/y/b/a/l0;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    invoke-interface {p3}, Ln3/y/b/a/f0;->getCurrentWindowIndex()I

    move-result p3

    if-ne p2, p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v3

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 5
    invoke-virtual {v5}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    .line 6
    iget-object p3, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    .line 7
    invoke-interface {p3}, Ln3/y/b/a/f0;->getCurrentAdGroupIndex()I

    move-result p3

    iget v4, v5, Ln3/y/b/a/t0/t$a;->b:I

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    .line 8
    invoke-interface {p3}, Ln3/y/b/a/f0;->getCurrentAdIndexInAdGroup()I

    move-result p3

    iget v4, v5, Ln3/y/b/a/t0/t$a;->c:I

    if-ne p3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_6

    .line 9
    iget-object p3, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    invoke-interface {p3}, Ln3/y/b/a/f0;->getCurrentPosition()J

    move-result-wide v3

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 10
    iget-object p3, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    invoke-interface {p3}, Ln3/y/b/a/f0;->getContentPosition()J

    move-result-wide v3

    :goto_2
    move-wide v6, v3

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p1}, Ln3/y/b/a/l0;->p()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    iget-object p3, p0, Ln3/y/b/a/m0/a;->c:Ln3/y/b/a/l0$c;

    .line 12
    invoke-virtual {p1, p2, p3, v6, v7}, Ln3/y/b/a/l0;->n(ILn3/y/b/a/l0$c;J)Ln3/y/b/a/l0$c;

    move-result-object p3

    .line 13
    iget-wide v3, p3, Ln3/y/b/a/l0$c;->i:J

    invoke-static {v3, v4}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v3

    goto :goto_2

    .line 14
    :cond_6
    :goto_3
    new-instance p3, Ln3/y/b/a/m0/b$a;

    iget-object v0, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    .line 15
    invoke-interface {v0}, Ln3/y/b/a/f0;->getCurrentPosition()J

    move-result-wide v8

    iget-object v0, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    .line 16
    invoke-interface {v0}, Ln3/y/b/a/f0;->getTotalBufferedDuration()J

    move-result-wide v10

    move-object v0, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v11}, Ln3/y/b/a/m0/b$a;-><init>(JLn3/y/b/a/l0;ILn3/y/b/a/t0/t$a;JJJ)V

    return-object p3
.end method

.method public final C(Ln3/y/b/a/m0/a$a;)Ln3/y/b/a/m0/b$a;
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_6

    .line 3
    iget-object p1, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    invoke-interface {p1}, Ln3/y/b/a/f0;->getCurrentWindowIndex()I

    move-result p1

    .line 4
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    .line 5
    :goto_0
    iget-object v5, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 6
    iget-object v5, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/y/b/a/m0/a$a;

    .line 7
    iget-object v6, v0, Ln3/y/b/a/m0/a$b;->g:Ln3/y/b/a/l0;

    iget-object v7, v5, Ln3/y/b/a/m0/a$a;->a:Ln3/y/b/a/t0/t$a;

    iget-object v7, v7, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 8
    iget-object v7, v0, Ln3/y/b/a/m0/a$b;->g:Ln3/y/b/a/l0;

    iget-object v8, v0, Ln3/y/b/a/m0/a$b;->c:Ln3/y/b/a/l0$b;

    .line 9
    invoke-virtual {v7, v6, v8}, Ln3/y/b/a/l0;->f(ILn3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object v6

    iget v6, v6, Ln3/y/b/a/l0$b;->c:I

    if-ne v6, p1, :cond_1

    if-eqz v4, :cond_0

    move-object v4, v2

    goto :goto_1

    :cond_0
    move-object v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v4, :cond_5

    .line 10
    iget-object v0, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    invoke-interface {v0}, Ln3/y/b/a/f0;->getCurrentTimeline()Ln3/y/b/a/l0;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ln3/y/b/a/l0;->o()I

    move-result v3

    if-ge p1, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    sget-object v0, Ln3/y/b/a/l0;->a:Ln3/y/b/a/l0;

    .line 13
    :goto_2
    invoke-virtual {p0, v0, p1, v2}, Ln3/y/b/a/m0/a;->B(Ln3/y/b/a/l0;ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    return-object p1

    :cond_5
    move-object p1, v4

    .line 14
    :cond_6
    iget-object v0, p1, Ln3/y/b/a/m0/a$a;->b:Ln3/y/b/a/l0;

    iget v1, p1, Ln3/y/b/a/m0/a$a;->c:I

    iget-object p1, p1, Ln3/y/b/a/m0/a$a;->a:Ln3/y/b/a/t0/t$a;

    invoke-virtual {p0, v0, v1, p1}, Ln3/y/b/a/m0/a;->B(Ln3/y/b/a/l0;ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final D()Ln3/y/b/a/m0/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/m0/a$b;->e:Ln3/y/b/a/m0/a$a;

    .line 3
    invoke-virtual {p0, v0}, Ln3/y/b/a/m0/a;->C(Ln3/y/b/a/m0/a$a;)Ln3/y/b/a/m0/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final E(ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;
    .locals 2

    .line 1
    sget-object v0, Ln3/y/b/a/l0;->a:Ln3/y/b/a/l0;

    iget-object v1, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 3
    iget-object v1, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 4
    iget-object v1, v1, Ln3/y/b/a/m0/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/m0/a$a;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Ln3/y/b/a/m0/a;->C(Ln3/y/b/a/m0/a$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Ln3/y/b/a/m0/a;->B(Ln3/y/b/a/l0;ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    :goto_0
    return-object p1

    .line 7
    :cond_1
    iget-object p2, p0, Ln3/y/b/a/m0/a;->e:Ln3/y/b/a/f0;

    invoke-interface {p2}, Ln3/y/b/a/f0;->getCurrentTimeline()Ln3/y/b/a/l0;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ln3/y/b/a/l0;->o()I

    move-result v1

    if-ge p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    move-object v0, p2

    :cond_3
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, v0, p1, p2}, Ln3/y/b/a/m0/a;->B(Ln3/y/b/a/l0;ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final F()Ln3/y/b/a/m0/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->g:Ln3/y/b/a/l0;

    invoke-virtual {v1}, Ln3/y/b/a/l0;->p()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Ln3/y/b/a/m0/a$b;->h:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/a$a;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0, v0}, Ln3/y/b/a/m0/a;->C(Ln3/y/b/a/m0/a$a;)Ln3/y/b/a/m0/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final G()Ln3/y/b/a/m0/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/m0/a$b;->f:Ln3/y/b/a/m0/a$a;

    .line 3
    invoke-virtual {p0, v0}, Ln3/y/b/a/m0/a;->C(Ln3/y/b/a/m0/a$a;)Ln3/y/b/a/m0/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final G5(ZI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1, p2}, Ln3/y/b/a/m0/b;->C(Ln3/y/b/a/m0/b$a;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final H5(Ln3/y/b/a/l0;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/a$a;

    invoke-virtual {v0, v2, p1}, Ln3/y/b/a/m0/a$b;->a(Ln3/y/b/a/m0/a$a;Ln3/y/b/a/l0;)Ln3/y/b/a/m0/a$a;

    move-result-object v2

    .line 5
    iget-object v3, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v3, v0, Ln3/y/b/a/m0/a$b;->b:Ljava/util/HashMap;

    iget-object v4, v2, Ln3/y/b/a/m0/a$a;->a:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->f:Ln3/y/b/a/m0/a$a;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0, v1, p1}, Ln3/y/b/a/m0/a$b;->a(Ln3/y/b/a/m0/a$a;Ln3/y/b/a/l0;)Ln3/y/b/a/m0/a$a;

    move-result-object v1

    iput-object v1, v0, Ln3/y/b/a/m0/a$b;->f:Ln3/y/b/a/m0/a$a;

    .line 9
    :cond_1
    iput-object p1, v0, Ln3/y/b/a/m0/a$b;->g:Ln3/y/b/a/l0;

    .line 10
    iget-object p1, v0, Ln3/y/b/a/m0/a$b;->d:Ln3/y/b/a/m0/a$a;

    iput-object p1, v0, Ln3/y/b/a/m0/a$b;->e:Ln3/y/b/a/m0/a$a;

    .line 11
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object p1

    .line 12
    iget-object v0, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/m0/b;

    .line 13
    invoke-interface {v1, p1, p2}, Ln3/y/b/a/m0/b;->w(Ln3/y/b/a/m0/b$a;I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final I5(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/f;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1, p2}, Ln3/y/b/a/m0/b;->n(Ln3/y/b/a/m0/b$a;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final J5(Ln3/y/b/a/e0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1}, Ln3/y/b/a/m0/b;->v(Ln3/y/b/a/m0/b$a;Ln3/y/b/a/e0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final K5(Ln3/y/b/a/f;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->D()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1}, Ln3/y/b/a/m0/b;->u(Ln3/y/b/a/m0/b$a;Ln3/y/b/a/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IIIF)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object v6

    .line 2
    iget-object v0, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Ln3/y/b/a/m0/b;->m(Ln3/y/b/a/m0/b$a;IIIF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1}, Ln3/y/b/a/m0/b;->k(Ln3/y/b/a/m0/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object p2

    .line 2
    iget-object p3, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    const/4 v2, 0x1

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Ln3/y/b/a/m0/b;->c(Ln3/y/b/a/m0/b$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(IJ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->D()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1, p2, p3}, Ln3/y/b/a/m0/b;->p(Ln3/y/b/a/m0/b$a;IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object p2

    .line 2
    iget-object p3, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    const/4 v2, 0x2

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Ln3/y/b/a/m0/b;->c(Ln3/y/b/a/m0/b$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/Surface;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1}, Ln3/y/b/a/m0/b;->D(Ln3/y/b/a/m0/b$a;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(IJJ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object v7

    .line 2
    iget-object v0, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 3
    invoke-interface/range {v0 .. v6}, Ln3/y/b/a/m0/b;->s(Ln3/y/b/a/m0/b$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h5(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->d:Ln3/y/b/a/m0/a$a;

    iput-object v1, v0, Ln3/y/b/a/m0/a$b;->e:Ln3/y/b/a/m0/a$a;

    .line 3
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 5
    invoke-interface {v2, v0, p1}, Ln3/y/b/a/m0/b;->b(Ln3/y/b/a/m0/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1, p2}, Ln3/y/b/a/m0/b;->i(Ln3/y/b/a/m0/b$a;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1}, Ln3/y/b/a/m0/b;->o(Ln3/y/b/a/m0/b$a;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/a$a;

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Ln3/y/b/a/m0/a;->C(Ln3/y/b/a/m0/a$a;)Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/m0/b;

    move-object v2, v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 6
    invoke-interface/range {v1 .. v7}, Ln3/y/b/a/m0/b;->j(Ln3/y/b/a/m0/b$a;IJJ)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final l(ILn3/y/b/a/t0/t$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->g:Ln3/y/b/a/l0;

    iget-object v2, p2, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3
    :goto_0
    new-instance v4, Ln3/y/b/a/m0/a$a;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->g:Ln3/y/b/a/l0;

    goto :goto_1

    :cond_1
    sget-object v1, Ln3/y/b/a/l0;->a:Ln3/y/b/a/l0;

    :goto_1
    invoke-direct {v4, p2, v1, p1}, Ln3/y/b/a/m0/a$a;-><init>(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/l0;I)V

    .line 5
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/m0/a$a;

    iput-object v1, v0, Ln3/y/b/a/m0/a$b;->d:Ln3/y/b/a/m0/a$a;

    .line 8
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->g:Ln3/y/b/a/l0;

    invoke-virtual {v1}, Ln3/y/b/a/l0;->p()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->d:Ln3/y/b/a/m0/a$a;

    iput-object v1, v0, Ln3/y/b/a/m0/a$b;->e:Ln3/y/b/a/m0/a$a;

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/m0/a;->E(ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    .line 11
    iget-object p2, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    .line 12
    invoke-interface {v0, p1}, Ln3/y/b/a/m0/b;->d(Ln3/y/b/a/m0/b$a;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final m(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/m0/a;->E(ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v0, p1, p3, p4}, Ln3/y/b/a/m0/b;->B(Ln3/y/b/a/m0/b$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(Landroidx/media2/exoplayer/external/Format;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    const/4 v3, 0x2

    .line 3
    invoke-interface {v2, v0, v3, p1}, Ln3/y/b/a/m0/b;->q(Ln3/y/b/a/m0/b$a;ILandroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(Ln3/y/b/a/o0/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    const/4 v3, 0x1

    .line 3
    invoke-interface {v2, v0, v3, p1}, Ln3/y/b/a/m0/b;->E(Ln3/y/b/a/m0/b$a;ILn3/y/b/a/o0/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(Ln3/y/b/a/n0/c;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1}, Ln3/y/b/a/m0/b;->h(Ln3/y/b/a/m0/b$a;Ln3/y/b/a/n0/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Landroidx/media2/exoplayer/external/Format;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->G()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    const/4 v3, 0x1

    .line 3
    invoke-interface {v2, v0, v3, p1}, Ln3/y/b/a/m0/b;->q(Ln3/y/b/a/m0/b$a;ILandroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(ILn3/y/b/a/t0/t$a;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/m0/a;->E(ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 3
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/m0/a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v3, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->f:Ln3/y/b/a/m0/a$a;

    if-eqz v1, :cond_2

    iget-object v1, v1, Ln3/y/b/a/m0/a$a;->a:Ln3/y/b/a/t0/t$a;

    invoke-virtual {p2, v1}, Ln3/y/b/a/t0/t$a;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p2, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/y/b/a/m0/a$a;

    :goto_0
    iput-object p2, v0, Ln3/y/b/a/m0/a$b;->f:Ln3/y/b/a/m0/a$a;

    .line 7
    :cond_2
    iget-object p2, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 8
    iget-object p2, v0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/y/b/a/m0/a$a;

    iput-object p2, v0, Ln3/y/b/a/m0/a$b;->d:Ln3/y/b/a/m0/a$a;

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    .line 9
    iget-object p2, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    .line 10
    invoke-interface {v0, p1}, Ln3/y/b/a/m0/b;->z(Ln3/y/b/a/m0/b$a;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final s(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/m0/a;->E(ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v0, p1, p3, p4}, Ln3/y/b/a/m0/b;->x(Ln3/y/b/a/m0/b$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/m0/a;->E(ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v0, p1, p3, p4}, Ln3/y/b/a/m0/b;->r(Ln3/y/b/a/m0/b$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u(Ln3/y/b/a/o0/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->D()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    const/4 v3, 0x2

    .line 3
    invoke-interface {v2, v0, v3, p1}, Ln3/y/b/a/m0/b;->y(Ln3/y/b/a/m0/b$a;ILn3/y/b/a/o0/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v(Ln3/y/b/a/o0/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    const/4 v3, 0x2

    .line 3
    invoke-interface {v2, v0, v3, p1}, Ln3/y/b/a/m0/b;->E(Ln3/y/b/a/m0/b$a;ILn3/y/b/a/o0/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;Ljava/io/IOException;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/m0/a;->E(ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 3
    invoke-interface/range {v0 .. v5}, Ln3/y/b/a/m0/b;->l(Ln3/y/b/a/m0/b$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;Ljava/io/IOException;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w1(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1}, Ln3/y/b/a/m0/b;->A(Ln3/y/b/a/m0/b$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->F()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    .line 3
    invoke-interface {v2, v0, p1}, Ln3/y/b/a/m0/b;->t(Ln3/y/b/a/m0/b$a;Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y(Ln3/y/b/a/o0/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/m0/a;->D()Ln3/y/b/a/m0/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/m0/b;

    const/4 v3, 0x1

    .line 3
    invoke-interface {v2, v0, v3, p1}, Ln3/y/b/a/m0/b;->y(Ln3/y/b/a/m0/b$a;ILn3/y/b/a/o0/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(ILn3/y/b/a/t0/t$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/m0/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/m0/a$a;

    iput-object v1, v0, Ln3/y/b/a/m0/a$b;->f:Ln3/y/b/a/m0/a$a;

    .line 3
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/m0/a;->E(ILn3/y/b/a/t0/t$a;)Ln3/y/b/a/m0/b$a;

    move-result-object p1

    .line 4
    iget-object p2, p0, Ln3/y/b/a/m0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/m0/b;

    .line 5
    invoke-interface {v0, p1}, Ln3/y/b/a/m0/b;->g(Ln3/y/b/a/m0/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
