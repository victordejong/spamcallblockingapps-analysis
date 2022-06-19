.class public final Lorg/joda/time/y/x;
.super Lorg/joda/time/y/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/y/x$a;,
        Lorg/joda/time/y/x$b;,
        Lorg/joda/time/y/x$c;
    }
.end annotation


# instance fields
.field final R:Lorg/joda/time/b;

.field final S:Lorg/joda/time/b;

.field private transient T:Lorg/joda/time/y/x;


# direct methods
.method private constructor <init>(Lorg/joda/time/a;Lorg/joda/time/b;Lorg/joda/time/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/joda/time/y/a;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lorg/joda/time/y/x;->R:Lorg/joda/time/b;

    .line 3
    iput-object p3, p0, Lorg/joda/time/y/x;->S:Lorg/joda/time/b;

    return-void
.end method

.method private X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/c;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/joda/time/c;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lorg/joda/time/c;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/joda/time/c;

    return-object p1

    .line 4
    :cond_1
    new-instance v6, Lorg/joda/time/y/x$a;

    invoke-virtual {p1}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v3

    invoke-virtual {p1}, Lorg/joda/time/c;->w()Lorg/joda/time/h;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v4

    invoke-virtual {p1}, Lorg/joda/time/c;->m()Lorg/joda/time/h;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/x$a;-><init>(Lorg/joda/time/y/x;Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/h;Lorg/joda/time/h;)V

    .line 5
    invoke-virtual {p2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_2
    :goto_0
    return-object p1
.end method

.method private Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/h;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/joda/time/h;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lorg/joda/time/h;->p()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/joda/time/h;

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Lorg/joda/time/y/x$b;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/y/x$b;-><init>(Lorg/joda/time/y/x;Lorg/joda/time/h;)V

    .line 5
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static Z(Lorg/joda/time/a;Lorg/joda/time/p;Lorg/joda/time/p;)Lorg/joda/time/y/x;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/p;->l()Lorg/joda/time/b;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {p2}, Lorg/joda/time/p;->l()Lorg/joda/time/b;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {p1, v0}, Lorg/joda/time/r;->A(Lorg/joda/time/r;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The lower limit must be come before than the upper limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    :goto_2
    new-instance p2, Lorg/joda/time/y/x;

    invoke-direct {p2, p0, p1, v0}, Lorg/joda/time/y/x;-><init>(Lorg/joda/time/a;Lorg/joda/time/b;Lorg/joda/time/b;)V

    return-object p2

    .line 6
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a chronology"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public M()Lorg/joda/time/a;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    invoke-virtual {p0, v0}, Lorg/joda/time/y/x;->N(Lorg/joda/time/f;)Lorg/joda/time/a;

    move-result-object v0

    return-object v0
.end method

.method public N(Lorg/joda/time/f;)Lorg/joda/time/a;
    .locals 4

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lorg/joda/time/f;->k()Lorg/joda/time/f;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/y/a;->o()Lorg/joda/time/f;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lorg/joda/time/y/x;->T:Lorg/joda/time/y/x;

    if-eqz v1, :cond_2

    return-object v1

    .line 4
    :cond_2
    iget-object v1, p0, Lorg/joda/time/y/x;->R:Lorg/joda/time/b;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Lorg/joda/time/x/b;->m()Lorg/joda/time/n;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Lorg/joda/time/n;->x(Lorg/joda/time/f;)V

    .line 7
    invoke-virtual {v1}, Lorg/joda/time/x/b;->l()Lorg/joda/time/b;

    move-result-object v1

    .line 8
    :cond_3
    iget-object v2, p0, Lorg/joda/time/y/x;->S:Lorg/joda/time/b;

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2}, Lorg/joda/time/x/b;->m()Lorg/joda/time/n;

    move-result-object v2

    .line 10
    invoke-virtual {v2, p1}, Lorg/joda/time/n;->x(Lorg/joda/time/f;)V

    .line 11
    invoke-virtual {v2}, Lorg/joda/time/x/b;->l()Lorg/joda/time/b;

    move-result-object v2

    .line 12
    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/joda/time/a;->N(Lorg/joda/time/f;)Lorg/joda/time/a;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lorg/joda/time/y/x;->Z(Lorg/joda/time/a;Lorg/joda/time/p;Lorg/joda/time/p;)Lorg/joda/time/y/x;

    move-result-object v1

    if-ne p1, v0, :cond_5

    .line 13
    iput-object v1, p0, Lorg/joda/time/y/x;->T:Lorg/joda/time/y/x;

    :cond_5
    return-object v1
.end method

.method protected S(Lorg/joda/time/y/a$a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Lorg/joda/time/y/a$a;->l:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->l:Lorg/joda/time/h;

    .line 3
    iget-object v1, p1, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    .line 4
    iget-object v1, p1, Lorg/joda/time/y/a$a;->j:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->j:Lorg/joda/time/h;

    .line 5
    iget-object v1, p1, Lorg/joda/time/y/a$a;->i:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->i:Lorg/joda/time/h;

    .line 6
    iget-object v1, p1, Lorg/joda/time/y/a$a;->h:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->h:Lorg/joda/time/h;

    .line 7
    iget-object v1, p1, Lorg/joda/time/y/a$a;->g:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->g:Lorg/joda/time/h;

    .line 8
    iget-object v1, p1, Lorg/joda/time/y/a$a;->f:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->f:Lorg/joda/time/h;

    .line 9
    iget-object v1, p1, Lorg/joda/time/y/a$a;->e:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->e:Lorg/joda/time/h;

    .line 10
    iget-object v1, p1, Lorg/joda/time/y/a$a;->d:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->d:Lorg/joda/time/h;

    .line 11
    iget-object v1, p1, Lorg/joda/time/y/a$a;->c:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->c:Lorg/joda/time/h;

    .line 12
    iget-object v1, p1, Lorg/joda/time/y/a$a;->b:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->b:Lorg/joda/time/h;

    .line 13
    iget-object v1, p1, Lorg/joda/time/y/a$a;->a:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->Y(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->a:Lorg/joda/time/h;

    .line 14
    iget-object v1, p1, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    .line 15
    iget-object v1, p1, Lorg/joda/time/y/a$a;->F:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->F:Lorg/joda/time/c;

    .line 16
    iget-object v1, p1, Lorg/joda/time/y/a$a;->G:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->G:Lorg/joda/time/c;

    .line 17
    iget-object v1, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    .line 18
    iget-object v1, p1, Lorg/joda/time/y/a$a;->I:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->I:Lorg/joda/time/c;

    .line 19
    iget-object v1, p1, Lorg/joda/time/y/a$a;->x:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->x:Lorg/joda/time/c;

    .line 20
    iget-object v1, p1, Lorg/joda/time/y/a$a;->y:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->y:Lorg/joda/time/c;

    .line 21
    iget-object v1, p1, Lorg/joda/time/y/a$a;->z:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->z:Lorg/joda/time/c;

    .line 22
    iget-object v1, p1, Lorg/joda/time/y/a$a;->D:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->D:Lorg/joda/time/c;

    .line 23
    iget-object v1, p1, Lorg/joda/time/y/a$a;->A:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->A:Lorg/joda/time/c;

    .line 24
    iget-object v1, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    .line 25
    iget-object v1, p1, Lorg/joda/time/y/a$a;->C:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->C:Lorg/joda/time/c;

    .line 26
    iget-object v1, p1, Lorg/joda/time/y/a$a;->m:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->m:Lorg/joda/time/c;

    .line 27
    iget-object v1, p1, Lorg/joda/time/y/a$a;->n:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->n:Lorg/joda/time/c;

    .line 28
    iget-object v1, p1, Lorg/joda/time/y/a$a;->o:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->o:Lorg/joda/time/c;

    .line 29
    iget-object v1, p1, Lorg/joda/time/y/a$a;->p:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->p:Lorg/joda/time/c;

    .line 30
    iget-object v1, p1, Lorg/joda/time/y/a$a;->q:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->q:Lorg/joda/time/c;

    .line 31
    iget-object v1, p1, Lorg/joda/time/y/a$a;->r:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->r:Lorg/joda/time/c;

    .line 32
    iget-object v1, p1, Lorg/joda/time/y/a$a;->s:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->s:Lorg/joda/time/c;

    .line 33
    iget-object v1, p1, Lorg/joda/time/y/a$a;->u:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->u:Lorg/joda/time/c;

    .line 34
    iget-object v1, p1, Lorg/joda/time/y/a$a;->t:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->t:Lorg/joda/time/c;

    .line 35
    iget-object v1, p1, Lorg/joda/time/y/a$a;->v:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->v:Lorg/joda/time/c;

    .line 36
    iget-object v1, p1, Lorg/joda/time/y/a$a;->w:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/x;->X(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/y/a$a;->w:Lorg/joda/time/c;

    return-void
.end method

.method W(JLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/x;->R:Lorg/joda/time/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/joda/time/x/d;->e()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lorg/joda/time/y/x$c;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p3, p2}, Lorg/joda/time/y/x$c;-><init>(Lorg/joda/time/y/x;Ljava/lang/String;Z)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/joda/time/y/x;->S:Lorg/joda/time/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/joda/time/x/d;->e()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p1, Lorg/joda/time/y/x$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p3, p2}, Lorg/joda/time/y/x$c;-><init>(Lorg/joda/time/y/x;Ljava/lang/String;Z)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public a0()Lorg/joda/time/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/x;->R:Lorg/joda/time/b;

    return-object v0
.end method

.method public b0()Lorg/joda/time/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/x;->S:Lorg/joda/time/b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/y/x;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/joda/time/y/x;

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/y/x;->a0()Lorg/joda/time/b;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/y/x;->a0()Lorg/joda/time/b;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/joda/time/a0/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/y/x;->b0()Lorg/joda/time/b;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/y/x;->b0()Lorg/joda/time/b;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/joda/time/a0/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/x;->a0()Lorg/joda/time/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/y/x;->a0()Lorg/joda/time/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/x/b;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v2, 0x12ea67c5

    add-int/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/y/x;->b0()Lorg/joda/time/b;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/y/x;->b0()Lorg/joda/time/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/x/b;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public m(IIII)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/a;->m(IIII)J

    move-result-wide p1

    const-string p3, "resulting"

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/y/x;->W(JLjava/lang/String;)V

    return-wide p1
.end method

.method public n(IIIIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/a;->n(IIIIIII)J

    move-result-wide p1

    const-string p3, "resulting"

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/y/x;->W(JLjava/lang/String;)V

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LimitChronology["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/y/x;->a0()Lorg/joda/time/b;

    move-result-object v2

    const-string v3, "NoLimit"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/y/x;->a0()Lorg/joda/time/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/x/a;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/y/x;->b0()Lorg/joda/time/b;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/y/x;->b0()Lorg/joda/time/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/x/a;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
