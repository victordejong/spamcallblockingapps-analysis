.class public final Lorg/joda/time/y/y;
.super Lorg/joda/time/y/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/y/y$a;,
        Lorg/joda/time/y/y$b;
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/joda/time/a;Lorg/joda/time/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/a;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    return-void
.end method

.method private W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;
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
    new-instance v6, Lorg/joda/time/y/y$a;

    invoke-virtual {p0}, Lorg/joda/time/y/y;->o()Lorg/joda/time/f;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v3

    invoke-virtual {p1}, Lorg/joda/time/c;->w()Lorg/joda/time/h;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v4

    invoke-virtual {p1}, Lorg/joda/time/c;->m()Lorg/joda/time/h;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/y$a;-><init>(Lorg/joda/time/c;Lorg/joda/time/f;Lorg/joda/time/h;Lorg/joda/time/h;Lorg/joda/time/h;)V

    .line 5
    invoke-virtual {p2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_2
    :goto_0
    return-object p1
.end method

.method private X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;
    .locals 2
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
    new-instance v0, Lorg/joda/time/y/y$b;

    invoke-virtual {p0}, Lorg/joda/time/y/y;->o()Lorg/joda/time/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/joda/time/y/y$b;-><init>(Lorg/joda/time/h;Lorg/joda/time/f;)V

    .line 5
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static Y(Lorg/joda/time/a;Lorg/joda/time/f;)Lorg/joda/time/y/y;
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a;->M()Lorg/joda/time/a;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lorg/joda/time/y/y;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/y/y;-><init>(Lorg/joda/time/a;Lorg/joda/time/f;)V

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

.method private Z(J)J
    .locals 13

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
    invoke-virtual {p0}, Lorg/joda/time/y/y;->o()Lorg/joda/time/f;

    move-result-object v4

    .line 2
    invoke-virtual {v4, p1, p2}, Lorg/joda/time/f;->t(J)I

    move-result v5

    int-to-long v6, v5

    sub-long v6, p1, v6

    const-wide/32 v8, 0x240c8400

    const-wide/16 v10, 0x0

    cmp-long v12, p1, v8

    if-lez v12, :cond_2

    cmp-long v8, v6, v10

    if-gez v8, :cond_2

    return-wide v0

    :cond_2
    const-wide/32 v0, -0x240c8400

    cmp-long v8, p1, v0

    if-gez v8, :cond_3

    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    return-wide v2

    .line 3
    :cond_3
    invoke-virtual {v4, v6, v7}, Lorg/joda/time/f;->s(J)I

    move-result v0

    if-ne v5, v0, :cond_4

    return-wide v6

    .line 4
    :cond_4
    new-instance v0, Lorg/joda/time/IllegalInstantException;

    invoke-virtual {v4}, Lorg/joda/time/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/IllegalInstantException;-><init>(JLjava/lang/String;)V

    throw v0
.end method

.method static a0(Lorg/joda/time/h;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/h;->m()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public M()Lorg/joda/time/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v0

    return-object v0
.end method

.method public N(Lorg/joda/time/f;)Lorg/joda/time/a;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lorg/joda/time/f;->k()Lorg/joda/time/f;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/y/a;->U()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    if-ne p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    new-instance v0, Lorg/joda/time/y/y;

    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/joda/time/y/y;-><init>(Lorg/joda/time/a;Lorg/joda/time/f;)V

    return-object v0
.end method

.method protected S(Lorg/joda/time/y/a$a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Lorg/joda/time/y/a$a;->l:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->l:Lorg/joda/time/h;

    .line 3
    iget-object v1, p1, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    .line 4
    iget-object v1, p1, Lorg/joda/time/y/a$a;->j:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->j:Lorg/joda/time/h;

    .line 5
    iget-object v1, p1, Lorg/joda/time/y/a$a;->i:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->i:Lorg/joda/time/h;

    .line 6
    iget-object v1, p1, Lorg/joda/time/y/a$a;->h:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->h:Lorg/joda/time/h;

    .line 7
    iget-object v1, p1, Lorg/joda/time/y/a$a;->g:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->g:Lorg/joda/time/h;

    .line 8
    iget-object v1, p1, Lorg/joda/time/y/a$a;->f:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->f:Lorg/joda/time/h;

    .line 9
    iget-object v1, p1, Lorg/joda/time/y/a$a;->e:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->e:Lorg/joda/time/h;

    .line 10
    iget-object v1, p1, Lorg/joda/time/y/a$a;->d:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->d:Lorg/joda/time/h;

    .line 11
    iget-object v1, p1, Lorg/joda/time/y/a$a;->c:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->c:Lorg/joda/time/h;

    .line 12
    iget-object v1, p1, Lorg/joda/time/y/a$a;->b:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->b:Lorg/joda/time/h;

    .line 13
    iget-object v1, p1, Lorg/joda/time/y/a$a;->a:Lorg/joda/time/h;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->X(Lorg/joda/time/h;Ljava/util/HashMap;)Lorg/joda/time/h;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->a:Lorg/joda/time/h;

    .line 14
    iget-object v1, p1, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    .line 15
    iget-object v1, p1, Lorg/joda/time/y/a$a;->F:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->F:Lorg/joda/time/c;

    .line 16
    iget-object v1, p1, Lorg/joda/time/y/a$a;->G:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->G:Lorg/joda/time/c;

    .line 17
    iget-object v1, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    .line 18
    iget-object v1, p1, Lorg/joda/time/y/a$a;->I:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->I:Lorg/joda/time/c;

    .line 19
    iget-object v1, p1, Lorg/joda/time/y/a$a;->x:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->x:Lorg/joda/time/c;

    .line 20
    iget-object v1, p1, Lorg/joda/time/y/a$a;->y:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->y:Lorg/joda/time/c;

    .line 21
    iget-object v1, p1, Lorg/joda/time/y/a$a;->z:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->z:Lorg/joda/time/c;

    .line 22
    iget-object v1, p1, Lorg/joda/time/y/a$a;->D:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->D:Lorg/joda/time/c;

    .line 23
    iget-object v1, p1, Lorg/joda/time/y/a$a;->A:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->A:Lorg/joda/time/c;

    .line 24
    iget-object v1, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    .line 25
    iget-object v1, p1, Lorg/joda/time/y/a$a;->C:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->C:Lorg/joda/time/c;

    .line 26
    iget-object v1, p1, Lorg/joda/time/y/a$a;->m:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->m:Lorg/joda/time/c;

    .line 27
    iget-object v1, p1, Lorg/joda/time/y/a$a;->n:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->n:Lorg/joda/time/c;

    .line 28
    iget-object v1, p1, Lorg/joda/time/y/a$a;->o:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->o:Lorg/joda/time/c;

    .line 29
    iget-object v1, p1, Lorg/joda/time/y/a$a;->p:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->p:Lorg/joda/time/c;

    .line 30
    iget-object v1, p1, Lorg/joda/time/y/a$a;->q:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->q:Lorg/joda/time/c;

    .line 31
    iget-object v1, p1, Lorg/joda/time/y/a$a;->r:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->r:Lorg/joda/time/c;

    .line 32
    iget-object v1, p1, Lorg/joda/time/y/a$a;->s:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->s:Lorg/joda/time/c;

    .line 33
    iget-object v1, p1, Lorg/joda/time/y/a$a;->u:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->u:Lorg/joda/time/c;

    .line 34
    iget-object v1, p1, Lorg/joda/time/y/a$a;->t:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->t:Lorg/joda/time/c;

    .line 35
    iget-object v1, p1, Lorg/joda/time/y/a$a;->v:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v1

    iput-object v1, p1, Lorg/joda/time/y/a$a;->v:Lorg/joda/time/c;

    .line 36
    iget-object v1, p1, Lorg/joda/time/y/a$a;->w:Lorg/joda/time/c;

    invoke-direct {p0, v1, v0}, Lorg/joda/time/y/y;->W(Lorg/joda/time/c;Ljava/util/HashMap;)Lorg/joda/time/c;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/y/a$a;->w:Lorg/joda/time/c;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/y/y;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/joda/time/y/y;

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/y/y;->o()Lorg/joda/time/f;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/y/y;->o()Lorg/joda/time/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/joda/time/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/y;->o()Lorg/joda/time/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/f;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    const v1, 0x4fba5

    add-int/2addr v0, v1

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

    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y;->Z(J)J

    move-result-wide p1

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

    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y;->Z(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public o()Lorg/joda/time/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->U()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZonedChronology["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/y/y;->o()Lorg/joda/time/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
