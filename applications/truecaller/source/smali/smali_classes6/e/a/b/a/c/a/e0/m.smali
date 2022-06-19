.class public final Le/a/b/a/c/a/e0/m;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/a0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/b/a/c/a/b0;",
        ">;",
        "Le/a/b/a/c/a/a0;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ls1/w/f;

.field public final f:Ls1/w/f;

.field public final g:Le/a/b0/p/d;

.field public final h:Le/a/g5/p;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b0/p/d;Le/a/g5/p;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/a/c/a/e0/m;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/b/a/c/a/e0/m;->f:Ls1/w/f;

    iput-object p3, p0, Le/a/b/a/c/a/e0/m;->g:Le/a/b0/p/d;

    iput-object p4, p0, Le/a/b/a/c/a/e0/m;->h:Le/a/g5/p;

    return-void
.end method


# virtual methods
.method public Qh(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/m;->h:Le/a/g5/p;

    invoke-interface {v0, p1, p2}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/b/a/c/a/b0;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Le/a/b/a/c/a/b0;->t3(Le/a/b0/p/c;)V

    :cond_0
    return-void
.end method

.method public ae(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    const/4 v2, 0x0

    const-string v3, "childTags"

    if-eqz v1, :cond_3

    .line 2
    iget-object p1, p0, Le/a/b/a/c/a/e0/m;->d:Ljava/util/List;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_3
    iget-object v1, p0, Le/a/b/a/c/a/e0/m;->d:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/b0/p/c;

    .line 6
    iget-object v4, v4, Le/a/b0/p/c;->b:Ljava/lang/String;

    const-string v5, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 7
    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v2

    :cond_6
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public mj(J)V
    .locals 6

    .line 1
    iget-object v1, p0, Le/a/b/a/c/a/e0/m;->e:Ls1/w/f;

    new-instance v3, Le/a/b/a/c/a/e0/m$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Le/a/b/a/c/a/e0/m$a;-><init>(Le/a/b/a/c/a/e0/m;JLs1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
