.class public final Le/a/a/n/j/i;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;
.implements Le/a/o2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/n/j/q;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/n/j/r;

.field public final c:Le/a/a/n/j/o;

.field public final d:Le/a/o5/b0;

.field public final e:Le/a/a/o/p;


# direct methods
.method public constructor <init>(Le/a/a/n/j/r;Le/a/a/n/j/o;Le/a/o5/b0;Le/a/a/o/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageUtils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/n/j/i;->b:Le/a/a/n/j/r;

    iput-object p2, p0, Le/a/a/n/j/i;->c:Le/a/a/n/j/o;

    iput-object p3, p0, Le/a/a/n/j/i;->d:Le/a/o5/b0;

    iput-object p4, p0, Le/a/a/n/j/i;->e:Le/a/a/o/p;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/a/n/j/q;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/n/j/i;->b:Le/a/a/n/j/r;

    invoke-interface {v0, p2}, Le/a/a/n/j/r;->zc(I)Le/a/a/g/l0/c;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 4
    iget-object v0, p0, Le/a/a/n/j/i;->b:Le/a/a/n/j/r;

    invoke-interface {v0}, Le/a/a/n/j/r;->If()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Le/a/a/n/j/i;->b:Le/a/a/n/j/r;

    invoke-interface {v2}, Le/a/a/n/j/r;->If()Ljava/util/Set;

    move-result-object v2

    .line 6
    iget-wide v3, p2, Le/a/a/g/l0/c;->f:J

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p1, v2}, Le/a/a/n/j/q;->b(Z)V

    .line 8
    iget-boolean v2, p2, Le/a/a/g/l0/c;->e:Z

    .line 9
    invoke-interface {p1, v2}, Le/a/a/n/j/q;->g(Z)V

    .line 10
    iget v2, p2, Le/a/a/g/l0/c;->i:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 11
    :goto_0
    invoke-interface {p1, v2}, Le/a/a/n/j/q;->h(Z)V

    if-nez v0, :cond_1

    .line 12
    iget v2, p2, Le/a/a/g/l0/c;->i:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 13
    :goto_1
    invoke-interface {p1, v2}, Le/a/a/n/j/q;->U0(Z)V

    if-nez v0, :cond_2

    .line 14
    invoke-static {p2}, Le/a/c/p/a;->j1(Le/a/a/g/l0/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-interface {p1, v0}, Le/a/a/n/j/q;->h3(Z)V

    .line 15
    iget-object v0, p2, Le/a/a/g/l0/c;->m:Landroid/net/Uri;

    .line 16
    iget v2, p2, Le/a/a/g/l0/c;->i:I

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 17
    invoke-static {v0}, Le/a/p5/s0/f;->n(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    :cond_3
    iget-object v0, p2, Le/a/a/g/l0/c;->h:Landroid/net/Uri;

    .line 19
    :cond_4
    invoke-interface {p1, v0}, Le/a/a/n/j/q;->C(Landroid/net/Uri;)V

    .line 20
    iget-object v0, p2, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    const-string v2, "contentType"

    .line 21
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "image/"

    .line 22
    invoke-static {v0, v4, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-interface {p1, v3}, Le/a/a/n/j/q;->C4(Z)V

    goto :goto_3

    .line 24
    :cond_5
    iget-object v0, p2, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    .line 25
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "video/"

    .line 26
    invoke-static {v0, v2, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-interface {p1, v1}, Le/a/a/n/j/q;->C4(Z)V

    .line 28
    iget-object v0, p0, Le/a/a/n/j/i;->d:Le/a/o5/b0;

    .line 29
    iget v1, p2, Le/a/a/g/l0/c;->l:I

    .line 30
    invoke-interface {v0, v1}, Le/a/o5/b0;->s(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/n/j/q;->A0(Ljava/lang/String;)V

    .line 31
    :cond_6
    :goto_3
    iget-wide v0, p2, Le/a/a/g/l0/c;->f:J

    .line 32
    invoke-interface {p1, v0, v1}, Le/a/a/n/j/q;->K3(J)V

    .line 33
    iget-object v0, p0, Le/a/a/n/j/i;->b:Le/a/a/n/j/r;

    invoke-interface {v0}, Le/a/a/n/j/r;->c8()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    iget-object v0, p0, Le/a/a/n/j/i;->e:Le/a/a/o/p;

    .line 35
    iget-wide v1, p2, Le/a/a/g/l0/c;->s:J

    .line 36
    invoke-interface {v0, v1, v2}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/a/n/j/q;->f0(Ljava/lang/String;)V

    .line 37
    :cond_7
    iget-object p2, p0, Le/a/a/n/j/i;->b:Le/a/a/n/j/r;

    invoke-interface {p2}, Le/a/a/n/j/r;->c8()Z

    move-result p2

    invoke-interface {p1, p2}, Le/a/a/n/j/q;->Q0(Z)V

    :cond_8
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/i;->b:Le/a/a/n/j/r;

    invoke-interface {v0}, Le/a/a/n/j/r;->ph()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/n/j/i;->b:Le/a/a/n/j/r;

    invoke-interface {v0, p1}, Le/a/a/n/j/r;->zc(I)Le/a/a/g/l0/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-wide v0, p1, Le/a/a/g/l0/c;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/n/j/i;->b:Le/a/a/n/j/r;

    .line 2
    iget v1, p1, Le/a/o2/h;->b:I

    .line 3
    invoke-interface {v0, v1}, Le/a/a/n/j/r;->zc(I)Le/a/a/g/l0/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x67eccfc0

    if-eq v2, v3, :cond_2

    const v3, -0x4e5b1355    # -4.7999342E-9f

    if-eq v2, v3, :cond_1

    const v3, -0x1d08576d

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "ItemEvent.ACTION_DOWNLOAD_CLICK"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/a/n/j/i;->c:Le/a/a/n/j/o;

    invoke-interface {p1, v0}, Le/a/a/n/j/o;->yg(Le/a/a/g/l0/c;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-string v2, "ItemEvent.LONG_CLICKED"

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/a/n/j/i;->c:Le/a/a/n/j/o;

    invoke-interface {p1, v0}, Le/a/a/n/j/o;->R9(Le/a/a/g/l0/c;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const-string v2, "ItemEvent.CLICKED"

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/a/n/j/i;->c:Le/a/a/n/j/o;

    invoke-interface {p1, v0}, Le/a/a/n/j/o;->o8(Le/a/a/g/l0/c;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method
