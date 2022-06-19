.class public final Lw3/b/a/f0/x;
.super Lw3/b/a/f0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/f0/x$a;,
        Lw3/b/a/f0/x$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lw3/b/a/a;Lw3/b/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw3/b/a/f0/a;-><init>(Lw3/b/a/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static a0(Lw3/b/a/a;Lw3/b/a/g;)Lw3/b/a/f0/x;
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/f0/x;

    invoke-direct {v0, p0, p1}, Lw3/b/a/f0/x;-><init>(Lw3/b/a/a;Lw3/b/a/g;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DateTimeZone must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UTC chronology must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a chronology"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public Q()Lw3/b/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    return-object v0
.end method

.method public R(Lw3/b/a/g;)Lw3/b/a/a;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    return-object p1

    .line 5
    :cond_2
    new-instance v0, Lw3/b/a/f0/x;

    .line 6
    iget-object v1, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 7
    invoke-direct {v0, v1, p1}, Lw3/b/a/f0/x;-><init>(Lw3/b/a/a;Lw3/b/a/g;)V

    return-object v0
.end method

.method public W(Lw3/b/a/f0/a$a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Lw3/b/a/f0/a$a;->l:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->l:Lw3/b/a/j;

    .line 3
    iget-object v1, p1, Lw3/b/a/f0/a$a;->k:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->k:Lw3/b/a/j;

    .line 4
    iget-object v1, p1, Lw3/b/a/f0/a$a;->j:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->j:Lw3/b/a/j;

    .line 5
    iget-object v1, p1, Lw3/b/a/f0/a$a;->i:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->i:Lw3/b/a/j;

    .line 6
    iget-object v1, p1, Lw3/b/a/f0/a$a;->h:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->h:Lw3/b/a/j;

    .line 7
    iget-object v1, p1, Lw3/b/a/f0/a$a;->g:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->g:Lw3/b/a/j;

    .line 8
    iget-object v1, p1, Lw3/b/a/f0/a$a;->f:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->f:Lw3/b/a/j;

    .line 9
    iget-object v1, p1, Lw3/b/a/f0/a$a;->e:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->e:Lw3/b/a/j;

    .line 10
    iget-object v1, p1, Lw3/b/a/f0/a$a;->d:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->d:Lw3/b/a/j;

    .line 11
    iget-object v1, p1, Lw3/b/a/f0/a$a;->c:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->c:Lw3/b/a/j;

    .line 12
    iget-object v1, p1, Lw3/b/a/f0/a$a;->b:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->b:Lw3/b/a/j;

    .line 13
    iget-object v1, p1, Lw3/b/a/f0/a$a;->a:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->a:Lw3/b/a/j;

    .line 14
    iget-object v1, p1, Lw3/b/a/f0/a$a;->E:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->E:Lw3/b/a/c;

    .line 15
    iget-object v1, p1, Lw3/b/a/f0/a$a;->F:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->F:Lw3/b/a/c;

    .line 16
    iget-object v1, p1, Lw3/b/a/f0/a$a;->G:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->G:Lw3/b/a/c;

    .line 17
    iget-object v1, p1, Lw3/b/a/f0/a$a;->H:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->H:Lw3/b/a/c;

    .line 18
    iget-object v1, p1, Lw3/b/a/f0/a$a;->I:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->I:Lw3/b/a/c;

    .line 19
    iget-object v1, p1, Lw3/b/a/f0/a$a;->x:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->x:Lw3/b/a/c;

    .line 20
    iget-object v1, p1, Lw3/b/a/f0/a$a;->y:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->y:Lw3/b/a/c;

    .line 21
    iget-object v1, p1, Lw3/b/a/f0/a$a;->z:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->z:Lw3/b/a/c;

    .line 22
    iget-object v1, p1, Lw3/b/a/f0/a$a;->D:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->D:Lw3/b/a/c;

    .line 23
    iget-object v1, p1, Lw3/b/a/f0/a$a;->A:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->A:Lw3/b/a/c;

    .line 24
    iget-object v1, p1, Lw3/b/a/f0/a$a;->B:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->B:Lw3/b/a/c;

    .line 25
    iget-object v1, p1, Lw3/b/a/f0/a$a;->C:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->C:Lw3/b/a/c;

    .line 26
    iget-object v1, p1, Lw3/b/a/f0/a$a;->m:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->m:Lw3/b/a/c;

    .line 27
    iget-object v1, p1, Lw3/b/a/f0/a$a;->n:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->n:Lw3/b/a/c;

    .line 28
    iget-object v1, p1, Lw3/b/a/f0/a$a;->o:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->o:Lw3/b/a/c;

    .line 29
    iget-object v1, p1, Lw3/b/a/f0/a$a;->p:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->p:Lw3/b/a/c;

    .line 30
    iget-object v1, p1, Lw3/b/a/f0/a$a;->q:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->q:Lw3/b/a/c;

    .line 31
    iget-object v1, p1, Lw3/b/a/f0/a$a;->r:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->r:Lw3/b/a/c;

    .line 32
    iget-object v1, p1, Lw3/b/a/f0/a$a;->s:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->s:Lw3/b/a/c;

    .line 33
    iget-object v1, p1, Lw3/b/a/f0/a$a;->u:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->u:Lw3/b/a/c;

    .line 34
    iget-object v1, p1, Lw3/b/a/f0/a$a;->t:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->t:Lw3/b/a/c;

    .line 35
    iget-object v1, p1, Lw3/b/a/f0/a$a;->v:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->v:Lw3/b/a/c;

    .line 36
    iget-object v1, p1, Lw3/b/a/f0/a$a;->w:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/x;->Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v0

    iput-object v0, p1, Lw3/b/a/f0/a$a;->w:Lw3/b/a/c;

    return-void
.end method

.method public final Y(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/c;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lw3/b/a/c;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lw3/b/a/c;->y()Z

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

    check-cast p1, Lw3/b/a/c;

    return-object p1

    .line 4
    :cond_1
    new-instance v6, Lw3/b/a/f0/x$a;

    .line 5
    iget-object v0, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    .line 6
    move-object v2, v0

    check-cast v2, Lw3/b/a/g;

    .line 7
    invoke-virtual {p1}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v3

    invoke-virtual {p1}, Lw3/b/a/c;->v()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v4

    invoke-virtual {p1}, Lw3/b/a/c;->m()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lw3/b/a/f0/x;->Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/x$a;-><init>(Lw3/b/a/c;Lw3/b/a/g;Lw3/b/a/j;Lw3/b/a/j;Lw3/b/a/j;)V

    .line 8
    invoke-virtual {p2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final Z(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/j;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lw3/b/a/j;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lw3/b/a/j;->i()Z

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

    check-cast p1, Lw3/b/a/j;

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Lw3/b/a/f0/x$b;

    .line 5
    iget-object v1, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    .line 6
    check-cast v1, Lw3/b/a/g;

    .line 7
    invoke-direct {v0, p1, v1}, Lw3/b/a/f0/x$b;-><init>(Lw3/b/a/j;Lw3/b/a/g;)V

    .line 8
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final b0(J)J
    .locals 11

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    return-wide v2

    .line 1
    :cond_1
    iget-object v4, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    .line 2
    check-cast v4, Lw3/b/a/g;

    .line 3
    invoke-virtual {v4, p1, p2}, Lw3/b/a/g;->n(J)I

    move-result v5

    int-to-long v6, v5

    sub-long v6, p1, v6

    const-wide/32 v8, 0x240c8400

    cmp-long v8, p1, v8

    const-wide/16 v9, 0x0

    if-lez v8, :cond_2

    cmp-long v8, v6, v9

    if-gez v8, :cond_2

    return-wide v0

    :cond_2
    const-wide/32 v0, -0x240c8400

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    cmp-long v0, v6, v9

    if-lez v0, :cond_3

    return-wide v2

    .line 4
    :cond_3
    invoke-virtual {v4, v6, v7}, Lw3/b/a/g;->m(J)I

    move-result v0

    if-ne v5, v0, :cond_4

    return-wide v6

    .line 5
    :cond_4
    new-instance v0, Lw3/b/a/m;

    .line 6
    iget-object v1, v4, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 7
    invoke-direct {v0, p1, p2, v1}, Lw3/b/a/m;-><init>(JLjava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/f0/x;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lw3/b/a/f0/x;

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    iget-object v3, p1, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    .line 6
    check-cast v1, Lw3/b/a/g;

    .line 7
    iget-object p1, p1, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Lw3/b/a/g;

    .line 9
    invoke-virtual {v1, p1}, Lw3/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Lw3/b/a/g;

    .line 3
    invoke-virtual {v0}, Lw3/b/a/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    const v1, 0x4fba5

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    return v1
.end method

.method public p(IIII)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/a;->p(IIII)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/x;->b0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public q(IIIIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 2
    invoke-virtual/range {v0 .. v7}, Lw3/b/a/a;->q(IIIIIII)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/x;->b0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public r(JIIII)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 2
    iget-object v1, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    .line 3
    check-cast v1, Lw3/b/a/g;

    .line 4
    invoke-virtual {v1, p1, p2}, Lw3/b/a/g;->m(J)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lw3/b/a/a;->r(JIIII)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/x;->b0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public s()Lw3/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Lw3/b/a/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ZonedChronology["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    .line 5
    check-cast v1, Lw3/b/a/g;

    .line 6
    iget-object v1, v1, Lw3/b/a/g;->a:Ljava/lang/String;

    const/16 v2, 0x5d

    .line 7
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
