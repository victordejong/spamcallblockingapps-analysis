.class public final Lw3/b/a/f0/w;
.super Lw3/b/a/f0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/f0/w$a;,
        Lw3/b/a/f0/w$b;,
        Lw3/b/a/f0/w$c;
    }
.end annotation


# instance fields
.field public final Q:Lw3/b/a/b;

.field public final R:Lw3/b/a/b;

.field public transient S:Lw3/b/a/f0/w;


# direct methods
.method public constructor <init>(Lw3/b/a/a;Lw3/b/a/b;Lw3/b/a/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lw3/b/a/f0/a;-><init>(Lw3/b/a/a;Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lw3/b/a/f0/w;->Q:Lw3/b/a/b;

    .line 3
    iput-object p3, p0, Lw3/b/a/f0/w;->R:Lw3/b/a/b;

    return-void
.end method

.method public static b0(Lw3/b/a/a;Lw3/b/a/x;Lw3/b/a/x;)Lw3/b/a/f0/w;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 1
    :cond_0
    check-cast p1, Lw3/b/a/b;

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    move-object v0, p2

    check-cast v0, Lw3/b/a/b;

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1, v0}, Lw3/b/a/e0/c;->i(Lw3/b/a/z;)Z

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
    new-instance p2, Lw3/b/a/f0/w;

    invoke-direct {p2, p0, p1, v0}, Lw3/b/a/f0/w;-><init>(Lw3/b/a/a;Lw3/b/a/b;Lw3/b/a/b;)V

    return-object p2

    .line 6
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a chronology"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public Q()Lw3/b/a/a;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    invoke-virtual {p0, v0}, Lw3/b/a/f0/w;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public R(Lw3/b/a/g;)Lw3/b/a/a;
    .locals 6

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lw3/b/a/f0/w;->S:Lw3/b/a/f0/w;

    if-eqz v1, :cond_2

    return-object v1

    .line 4
    :cond_2
    iget-object v1, p0, Lw3/b/a/f0/w;->Q:Lw3/b/a/b;

    if-eqz v1, :cond_3

    .line 5
    new-instance v2, Lw3/b/a/s;

    .line 6
    iget-wide v3, v1, Lw3/b/a/e0/e;->a:J

    .line 7
    invoke-virtual {v1}, Lw3/b/a/e0/c;->c()Lw3/b/a/g;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lw3/b/a/s;-><init>(JLw3/b/a/g;)V

    .line 8
    invoke-virtual {v2, p1}, Lw3/b/a/s;->y(Lw3/b/a/g;)V

    .line 9
    invoke-virtual {v2}, Lw3/b/a/e0/c;->o()Lw3/b/a/b;

    move-result-object v1

    .line 10
    :cond_3
    iget-object v2, p0, Lw3/b/a/f0/w;->R:Lw3/b/a/b;

    if-eqz v2, :cond_4

    .line 11
    new-instance v3, Lw3/b/a/s;

    .line 12
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 13
    invoke-virtual {v2}, Lw3/b/a/e0/c;->c()Lw3/b/a/g;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lw3/b/a/s;-><init>(JLw3/b/a/g;)V

    .line 14
    invoke-virtual {v3, p1}, Lw3/b/a/s;->y(Lw3/b/a/g;)V

    .line 15
    invoke-virtual {v3}, Lw3/b/a/e0/c;->o()Lw3/b/a/b;

    move-result-object v2

    .line 16
    :cond_4
    iget-object v3, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 17
    invoke-virtual {v3, p1}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lw3/b/a/f0/w;->b0(Lw3/b/a/a;Lw3/b/a/x;Lw3/b/a/x;)Lw3/b/a/f0/w;

    move-result-object v1

    if-ne p1, v0, :cond_5

    .line 18
    iput-object v1, p0, Lw3/b/a/f0/w;->S:Lw3/b/a/f0/w;

    :cond_5
    return-object v1
.end method

.method public W(Lw3/b/a/f0/a$a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Lw3/b/a/f0/a$a;->l:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->l:Lw3/b/a/j;

    .line 3
    iget-object v1, p1, Lw3/b/a/f0/a$a;->k:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->k:Lw3/b/a/j;

    .line 4
    iget-object v1, p1, Lw3/b/a/f0/a$a;->j:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->j:Lw3/b/a/j;

    .line 5
    iget-object v1, p1, Lw3/b/a/f0/a$a;->i:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->i:Lw3/b/a/j;

    .line 6
    iget-object v1, p1, Lw3/b/a/f0/a$a;->h:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->h:Lw3/b/a/j;

    .line 7
    iget-object v1, p1, Lw3/b/a/f0/a$a;->g:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->g:Lw3/b/a/j;

    .line 8
    iget-object v1, p1, Lw3/b/a/f0/a$a;->f:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->f:Lw3/b/a/j;

    .line 9
    iget-object v1, p1, Lw3/b/a/f0/a$a;->e:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->e:Lw3/b/a/j;

    .line 10
    iget-object v1, p1, Lw3/b/a/f0/a$a;->d:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->d:Lw3/b/a/j;

    .line 11
    iget-object v1, p1, Lw3/b/a/f0/a$a;->c:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->c:Lw3/b/a/j;

    .line 12
    iget-object v1, p1, Lw3/b/a/f0/a$a;->b:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->b:Lw3/b/a/j;

    .line 13
    iget-object v1, p1, Lw3/b/a/f0/a$a;->a:Lw3/b/a/j;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->a:Lw3/b/a/j;

    .line 14
    iget-object v1, p1, Lw3/b/a/f0/a$a;->E:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->E:Lw3/b/a/c;

    .line 15
    iget-object v1, p1, Lw3/b/a/f0/a$a;->F:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->F:Lw3/b/a/c;

    .line 16
    iget-object v1, p1, Lw3/b/a/f0/a$a;->G:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->G:Lw3/b/a/c;

    .line 17
    iget-object v1, p1, Lw3/b/a/f0/a$a;->H:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->H:Lw3/b/a/c;

    .line 18
    iget-object v1, p1, Lw3/b/a/f0/a$a;->I:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->I:Lw3/b/a/c;

    .line 19
    iget-object v1, p1, Lw3/b/a/f0/a$a;->x:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->x:Lw3/b/a/c;

    .line 20
    iget-object v1, p1, Lw3/b/a/f0/a$a;->y:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->y:Lw3/b/a/c;

    .line 21
    iget-object v1, p1, Lw3/b/a/f0/a$a;->z:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->z:Lw3/b/a/c;

    .line 22
    iget-object v1, p1, Lw3/b/a/f0/a$a;->D:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->D:Lw3/b/a/c;

    .line 23
    iget-object v1, p1, Lw3/b/a/f0/a$a;->A:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->A:Lw3/b/a/c;

    .line 24
    iget-object v1, p1, Lw3/b/a/f0/a$a;->B:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->B:Lw3/b/a/c;

    .line 25
    iget-object v1, p1, Lw3/b/a/f0/a$a;->C:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->C:Lw3/b/a/c;

    .line 26
    iget-object v1, p1, Lw3/b/a/f0/a$a;->m:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->m:Lw3/b/a/c;

    .line 27
    iget-object v1, p1, Lw3/b/a/f0/a$a;->n:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->n:Lw3/b/a/c;

    .line 28
    iget-object v1, p1, Lw3/b/a/f0/a$a;->o:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->o:Lw3/b/a/c;

    .line 29
    iget-object v1, p1, Lw3/b/a/f0/a$a;->p:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->p:Lw3/b/a/c;

    .line 30
    iget-object v1, p1, Lw3/b/a/f0/a$a;->q:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->q:Lw3/b/a/c;

    .line 31
    iget-object v1, p1, Lw3/b/a/f0/a$a;->r:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->r:Lw3/b/a/c;

    .line 32
    iget-object v1, p1, Lw3/b/a/f0/a$a;->s:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->s:Lw3/b/a/c;

    .line 33
    iget-object v1, p1, Lw3/b/a/f0/a$a;->u:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->u:Lw3/b/a/c;

    .line 34
    iget-object v1, p1, Lw3/b/a/f0/a$a;->t:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->t:Lw3/b/a/c;

    .line 35
    iget-object v1, p1, Lw3/b/a/f0/a$a;->v:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v1

    iput-object v1, p1, Lw3/b/a/f0/a$a;->v:Lw3/b/a/c;

    .line 36
    iget-object v1, p1, Lw3/b/a/f0/a$a;->w:Lw3/b/a/c;

    invoke-virtual {p0, v1, v0}, Lw3/b/a/f0/w;->Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;

    move-result-object v0

    iput-object v0, p1, Lw3/b/a/f0/a$a;->w:Lw3/b/a/c;

    return-void
.end method

.method public Y(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w;->Q:Lw3/b/a/b;

    if-eqz v0, :cond_1

    .line 2
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lw3/b/a/f0/w$c;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p3, p2}, Lw3/b/a/f0/w$c;-><init>(Lw3/b/a/f0/w;Ljava/lang/String;Z)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lw3/b/a/f0/w;->R:Lw3/b/a/b;

    if-eqz v0, :cond_3

    .line 5
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Lw3/b/a/f0/w$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p3, p2}, Lw3/b/a/f0/w$c;-><init>(Lw3/b/a/f0/w;Ljava/lang/String;Z)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final Z(Lw3/b/a/c;Ljava/util/HashMap;)Lw3/b/a/c;
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
    new-instance v6, Lw3/b/a/f0/w$a;

    invoke-virtual {p1}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v3

    invoke-virtual {p1}, Lw3/b/a/c;->v()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v4

    invoke-virtual {p1}, Lw3/b/a/c;->m()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lw3/b/a/f0/w;->a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/w$a;-><init>(Lw3/b/a/f0/w;Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/j;Lw3/b/a/j;)V

    .line 5
    invoke-virtual {p2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final a0(Lw3/b/a/j;Ljava/util/HashMap;)Lw3/b/a/j;
    .locals 1
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
    new-instance v0, Lw3/b/a/f0/w$b;

    invoke-direct {v0, p0, p1}, Lw3/b/a/f0/w$b;-><init>(Lw3/b/a/f0/w;Lw3/b/a/j;)V

    .line 5
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/f0/w;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lw3/b/a/f0/w;

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    iget-object v3, p1, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lw3/b/a/f0/w;->Q:Lw3/b/a/b;

    iget-object v3, p1, Lw3/b/a/f0/w;->Q:Lw3/b/a/b;

    .line 6
    invoke-static {v1, v3}, Ls1/a/a/a/v0/f/d;->J0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lw3/b/a/f0/w;->R:Lw3/b/a/b;

    iget-object p1, p1, Lw3/b/a/f0/w;->R:Lw3/b/a/b;

    .line 8
    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->J0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w;->Q:Lw3/b/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lw3/b/a/e0/c;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x12ea67c5

    add-int/2addr v0, v2

    .line 3
    iget-object v2, p0, Lw3/b/a/f0/w;->R:Lw3/b/a/b;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lw3/b/a/e0/c;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 6
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

    const-string p3, "resulting"

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

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

    const-string p3, "resulting"

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method

.method public r(JIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v1, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 3
    invoke-virtual/range {v1 .. v7}, Lw3/b/a/a;->r(JIIII)J

    move-result-wide p1

    const-string p3, "resulting"

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "LimitChronology["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 3
    invoke-virtual {v1}, Lw3/b/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lw3/b/a/f0/w;->Q:Lw3/b/a/b;

    const-string v3, "NoLimit"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Lw3/b/a/e0/a;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lw3/b/a/f0/w;->R:Lw3/b/a/b;

    if-nez v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lw3/b/a/e0/a;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/16 v1, 0x5d

    invoke-static {v0, v3, v1}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
