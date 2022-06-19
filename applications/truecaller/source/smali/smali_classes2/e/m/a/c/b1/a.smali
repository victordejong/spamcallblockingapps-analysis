.class public Le/m/a/c/b1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/q0$b;
.implements Le/m/a/c/i1/e;
.implements Le/m/a/c/c1/m;
.implements Le/m/a/c/r1/s;
.implements Le/m/a/c/l1/q;
.implements Le/m/a/c/p1/f$a;
.implements Le/m/a/c/r1/r;
.implements Le/m/a/c/c1/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/b1/a$a;,
        Le/m/a/c/b1/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Le/m/a/c/b1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/m/a/c/q1/f;

.field public final c:Le/m/a/c/y0$c;

.field public final d:Le/m/a/c/b1/a$b;

.field public e:Le/m/a/c/q0;


# direct methods
.method public constructor <init>(Le/m/a/c/q1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/b1/a;->b:Le/m/a/c/q1/f;

    .line 3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    new-instance p1, Le/m/a/c/b1/a$b;

    invoke-direct {p1}, Le/m/a/c/b1/a$b;-><init>()V

    iput-object p1, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 5
    new-instance p1, Le/m/a/c/y0$c;

    invoke-direct {p1}, Le/m/a/c/y0$c;-><init>()V

    iput-object p1, p0, Le/m/a/c/b1/a;->c:Le/m/a/c/y0$c;

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 2
    iget-boolean v1, v0, Le/m/a/c/b1/a$b;->h:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/m/a/c/b1/a$b;->h:Z

    .line 4
    iget-object v1, v0, Le/m/a/c/b1/a$b;->d:Le/m/a/c/b1/a$a;

    iput-object v1, v0, Le/m/a/c/b1/a$b;->e:Le/m/a/c/b1/a$a;

    .line 5
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 6
    iget-object v0, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/b1/b;

    .line 7
    invoke-interface {v1}, Le/m/a/c/b1/b;->A0()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G5(ZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {p2}, Le/m/a/c/b1/b;->m()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final N7(Le/m/a/c/y0;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p2, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p2, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/b1/a$a;

    invoke-virtual {p2, v1, p1}, Le/m/a/c/b1/a$b;->a(Le/m/a/c/b1/a$a;Le/m/a/c/y0;)Le/m/a/c/b1/a$a;

    move-result-object v1

    .line 5
    iget-object v2, p2, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p2, Le/m/a/c/b1/a$b;->b:Ljava/util/HashMap;

    iget-object v3, v1, Le/m/a/c/b1/a$a;->a:Le/m/a/c/l1/p$a;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p2, Le/m/a/c/b1/a$b;->f:Le/m/a/c/b1/a$a;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2, v0, p1}, Le/m/a/c/b1/a$b;->a(Le/m/a/c/b1/a$a;Le/m/a/c/y0;)Le/m/a/c/b1/a$a;

    move-result-object v0

    iput-object v0, p2, Le/m/a/c/b1/a$b;->f:Le/m/a/c/b1/a$a;

    .line 9
    :cond_1
    iput-object p1, p2, Le/m/a/c/b1/a$b;->g:Le/m/a/c/y0;

    .line 10
    iget-object p1, p2, Le/m/a/c/b1/a$b;->d:Le/m/a/c/b1/a$a;

    iput-object p1, p2, Le/m/a/c/b1/a$b;->e:Le/m/a/c/b1/a$a;

    .line 11
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 12
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/b;

    .line 13
    invoke-interface {p2}, Le/m/a/c/b1/b;->E()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public synthetic Pi(Le/m/a/c/y0;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/m/a/c/r0;->l(Le/m/a/c/q0$b;Le/m/a/c/y0;Ljava/lang/Object;I)V

    return-void
.end method

.method public final S8(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->B()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Xl(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Zl(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->y()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IIIF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {p2}, Le/m/a/c/b1/b;->H()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->o()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {p2}, Le/m/a/c/b1/b;->q()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->u()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {p2}, Le/m/a/c/b1/b;->k()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {p2}, Le/m/a/c/b1/b;->q()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final fs(Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {p2}, Le/m/a/c/b1/b;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(IJJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {p2}, Le/m/a/c/b1/b;->u()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h5(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 2
    iget-object v0, p1, Le/m/a/c/b1/a$b;->d:Le/m/a/c/b1/a$a;

    iput-object v0, p1, Le/m/a/c/b1/a$b;->e:Le/m/a/c/b1/a$a;

    .line 3
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 4
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 5
    invoke-interface {v0}, Le/m/a/c/b1/b;->G()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hy(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->A()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {p2}, Le/m/a/c/b1/b;->t()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->x()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Le/m/a/c/c1/i;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->r()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(Le/m/a/c/e1/d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->w()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->z()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(Le/m/a/c/e1/d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->u()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(Le/m/a/c/e1/d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->u()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Le/m/a/c/e1/d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->w()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->x()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final rs(Le/m/a/c/o0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->F()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(Le/m/a/c/y0;ILe/m/a/c/l1/p$a;)Le/m/a/c/b1/b$a;
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/a/c/y0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v5, p3

    .line 2
    iget-object p3, p0, Le/m/a/c/b1/a;->b:Le/m/a/c/q1/f;

    invoke-interface {p3}, Le/m/a/c/q1/f;->a()J

    move-result-wide v1

    .line 3
    iget-object p3, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    .line 4
    invoke-interface {p3}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    invoke-interface {p3}, Le/m/a/c/q0;->getCurrentWindowIndex()I

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
    invoke-virtual {v5}, Le/m/a/c/l1/p$a;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    .line 6
    iget-object p3, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    .line 7
    invoke-interface {p3}, Le/m/a/c/q0;->getCurrentAdGroupIndex()I

    move-result p3

    iget v4, v5, Le/m/a/c/l1/p$a;->b:I

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    .line 8
    invoke-interface {p3}, Le/m/a/c/q0;->getCurrentAdIndexInAdGroup()I

    move-result p3

    iget v4, v5, Le/m/a/c/l1/p$a;->c:I

    if-ne p3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_6

    .line 9
    iget-object p3, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    invoke-interface {p3}, Le/m/a/c/q0;->getCurrentPosition()J

    move-result-wide v3

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 10
    iget-object p3, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    invoke-interface {p3}, Le/m/a/c/q0;->getContentPosition()J

    move-result-wide v3

    :goto_2
    move-wide v6, v3

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p1}, Le/m/a/c/y0;->p()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    iget-object p3, p0, Le/m/a/c/b1/a;->c:Le/m/a/c/y0$c;

    .line 12
    invoke-virtual {p1, p2, p3, v6, v7}, Le/m/a/c/y0;->n(ILe/m/a/c/y0$c;J)Le/m/a/c/y0$c;

    move-result-object p3

    .line 13
    iget-wide v3, p3, Le/m/a/c/y0$c;->i:J

    invoke-static {v3, v4}, Le/m/a/c/v;->b(J)J

    move-result-wide v3

    goto :goto_2

    .line 14
    :cond_6
    :goto_3
    new-instance p3, Le/m/a/c/b1/b$a;

    iget-object v0, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    .line 15
    invoke-interface {v0}, Le/m/a/c/q0;->getCurrentPosition()J

    move-result-wide v8

    iget-object v0, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    .line 16
    invoke-interface {v0}, Le/m/a/c/q0;->getTotalBufferedDuration()J

    move-result-wide v10

    move-object v0, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v11}, Le/m/a/c/b1/b$a;-><init>(JLe/m/a/c/y0;ILe/m/a/c/l1/p$a;JJJ)V

    return-object p3
.end method

.method public final t(Le/m/a/c/b1/a$a;)Le/m/a/c/b1/b$a;
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_6

    .line 3
    iget-object p1, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    invoke-interface {p1}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result p1

    .line 4
    iget-object v0, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    .line 5
    :goto_0
    iget-object v5, v0, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 6
    iget-object v5, v0, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/c/b1/a$a;

    .line 7
    iget-object v6, v0, Le/m/a/c/b1/a$b;->g:Le/m/a/c/y0;

    iget-object v7, v5, Le/m/a/c/b1/a$a;->a:Le/m/a/c/l1/p$a;

    iget-object v7, v7, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 8
    iget-object v7, v0, Le/m/a/c/b1/a$b;->g:Le/m/a/c/y0;

    iget-object v8, v0, Le/m/a/c/b1/a$b;->c:Le/m/a/c/y0$b;

    .line 9
    invoke-virtual {v7, v6, v8}, Le/m/a/c/y0;->f(ILe/m/a/c/y0$b;)Le/m/a/c/y0$b;

    move-result-object v6

    iget v6, v6, Le/m/a/c/y0$b;->b:I

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
    iget-object v0, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    invoke-interface {v0}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Le/m/a/c/y0;->o()I

    move-result v3

    if-ge p1, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    sget-object v0, Le/m/a/c/y0;->a:Le/m/a/c/y0;

    :goto_2
    invoke-virtual {p0, v0, p1, v2}, Le/m/a/c/b1/a;->s(Le/m/a/c/y0;ILe/m/a/c/l1/p$a;)Le/m/a/c/b1/b$a;

    move-result-object p1

    return-object p1

    :cond_5
    move-object p1, v4

    .line 13
    :cond_6
    iget-object v0, p1, Le/m/a/c/b1/a$a;->b:Le/m/a/c/y0;

    iget v1, p1, Le/m/a/c/b1/a$a;->c:I

    iget-object p1, p1, Le/m/a/c/b1/a$a;->a:Le/m/a/c/l1/p$a;

    invoke-virtual {p0, v0, v1, p1}, Le/m/a/c/b1/a;->s(Le/m/a/c/y0;ILe/m/a/c/l1/p$a;)Le/m/a/c/b1/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final tf(Le/m/a/c/b0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->u()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->n()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()Le/m/a/c/b1/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 2
    iget-object v0, v0, Le/m/a/c/b1/a$b;->e:Le/m/a/c/b1/a$a;

    .line 3
    invoke-virtual {p0, v0}, Le/m/a/c/b1/a;->t(Le/m/a/c/b1/a$a;)Le/m/a/c/b1/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final v(ILe/m/a/c/l1/p$a;)Le/m/a/c/b1/b$a;
    .locals 2

    .line 1
    sget-object v0, Le/m/a/c/y0;->a:Le/m/a/c/y0;

    iget-object v1, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 3
    iget-object v1, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 4
    iget-object v1, v1, Le/m/a/c/b1/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/b1/a$a;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Le/m/a/c/b1/a;->t(Le/m/a/c/b1/a$a;)Le/m/a/c/b1/b$a;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Le/m/a/c/b1/a;->s(Le/m/a/c/y0;ILe/m/a/c/l1/p$a;)Le/m/a/c/b1/b$a;

    move-result-object p1

    :goto_0
    return-object p1

    .line 7
    :cond_1
    iget-object p2, p0, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    invoke-interface {p2}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Le/m/a/c/y0;->o()I

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
    invoke-virtual {p0, v0, p1, p2}, Le/m/a/c/b1/a;->s(Le/m/a/c/y0;ILe/m/a/c/l1/p$a;)Le/m/a/c/b1/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final w()Le/m/a/c/b1/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 2
    iget-object v1, v0, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Le/m/a/c/b1/a$b;->g:Le/m/a/c/y0;

    invoke-virtual {v1}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Le/m/a/c/b1/a$b;->h:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/a$a;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0, v0}, Le/m/a/c/b1/a;->t(Le/m/a/c/b1/a$a;)Le/m/a/c/b1/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final w1(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 3
    invoke-interface {v0}, Le/m/a/c/b1/b;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x()Le/m/a/c/b1/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 2
    iget-object v0, v0, Le/m/a/c/b1/a$b;->f:Le/m/a/c/b1/a$a;

    .line 3
    invoke-virtual {p0, v0}, Le/m/a/c/b1/a;->t(Le/m/a/c/b1/a$a;)Le/m/a/c/b1/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final y(ILe/m/a/c/l1/p$a;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/a/c/b1/a;->v(ILe/m/a/c/l1/p$a;)Le/m/a/c/b1/b$a;

    .line 2
    iget-object p1, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 3
    iget-object v0, p1, Le/m/a/c/b1/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/a$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p1, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p1, Le/m/a/c/b1/a$b;->f:Le/m/a/c/b1/a$a;

    if-eqz v0, :cond_2

    iget-object v0, v0, Le/m/a/c/b1/a$a;->a:Le/m/a/c/l1/p$a;

    invoke-virtual {p2, v0}, Le/m/a/c/l1/p$a;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p1, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p2, p1, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/a$a;

    :goto_0
    iput-object p2, p1, Le/m/a/c/b1/a$b;->f:Le/m/a/c/b1/a$a;

    .line 7
    :cond_2
    iget-object p2, p1, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 8
    iget-object p2, p1, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/a$a;

    iput-object p2, p1, Le/m/a/c/b1/a$b;->d:Le/m/a/c/b1/a$a;

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 9
    iget-object p1, p0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/b1/b;

    .line 10
    invoke-interface {p2}, Le/m/a/c/b1/b;->v()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 2
    iget-object v1, v1, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/b1/a$a;

    .line 5
    iget v2, v1, Le/m/a/c/b1/a$a;->c:I

    iget-object v1, v1, Le/m/a/c/b1/a$a;->a:Le/m/a/c/l1/p$a;

    invoke-virtual {p0, v2, v1}, Le/m/a/c/b1/a;->y(ILe/m/a/c/l1/p$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
