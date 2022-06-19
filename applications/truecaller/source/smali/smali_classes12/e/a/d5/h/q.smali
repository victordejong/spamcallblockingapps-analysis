.class public abstract Le/a/d5/h/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/b;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Le/m/e/k;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/d5/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/u3/i;

.field public final f:Ljava/lang/String;

.field public final g:Le/a/b0/q/l0;

.field public final h:Le/a/z4/d;

.field public final i:Le/a/o5/b0;


# direct methods
.method public constructor <init>(Le/a/u3/i;Ljava/lang/String;Le/a/b0/q/l0;Le/a/z4/d;Le/a/o5/b0;)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeStampKey"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/h/q;->e:Le/a/u3/i;

    iput-object p2, p0, Le/a/d5/h/q;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/d5/h/q;->g:Le/a/b0/q/l0;

    iput-object p4, p0, Le/a/d5/h/q;->h:Le/a/z4/d;

    iput-object p5, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/d5/h/q;->a:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/a/d5/h/q;->b:I

    .line 4
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/d5/h/q;->c:Le/m/e/k;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string p2, "Collections.emptyList()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/d5/h/q;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic m(Le/a/d5/h/q;JZILjava/lang/Object;)Le/a/d5/h/c;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/a/d5/h/q;->l(JZ)Le/a/d5/h/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1

    const-string v0, "fromActivity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/l4/k;->o(Landroid/app/Activity;)Landroid/content/Intent;

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d5/h/q;->h:Le/a/z4/d;

    iget-object v1, p0, Le/a/d5/h/q;->f:Ljava/lang/String;

    iget-object v2, p0, Le/a/d5/h/q;->g:Le/a/b0/q/l0;

    invoke-virtual {v2}, Le/a/b0/q/l0;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Le/a/d5/h/q;->h:Le/a/z4/d;

    iget-object v1, p0, Le/a/d5/h/q;->g:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    const-string v3, "promo_popup_last_shown_timestamp"

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/d5/h/q;->h:Le/a/z4/d;

    iget-object v0, p0, Le/a/d5/h/q;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2
    iget-object p1, p0, Le/a/d5/h/q;->h:Le/a/z4/d;

    const-string v0, "promo_popup_last_shown_timestamp"

    invoke-interface {p1, v0, v1, v2}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1, v0, v1}, Lw3/b/a/b;-><init>(J)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object p1

    const-string v0, "DateTime(lastPromoShownTime).plusDays(2)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lw3/b/a/e0/c;->g()Z

    move-result p1

    const-string v0, "shouldShow:: "

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Le/a/d5/b;->b()Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in cooloff : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isEligible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/d5/h/q;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Le/a/d5/h/q;->k(J)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/a/d5/h/q;->u()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Le/a/d5/h/q;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p0}, Le/a/d5/h/q;->r()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0, v3, v4}, Le/a/d5/h/q;->j(J)Z

    move-result p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Le/a/d5/h/q;->n()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Le/a/d5/h/q;->q()I

    move-result p1

    invoke-virtual {p0}, Le/a/d5/h/q;->n()I

    move-result v1

    if-le p1, v1, :cond_2

    invoke-virtual {p0, v3, v4}, Le/a/d5/h/q;->i(J)Z

    move-result p1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, v3, v4}, Le/a/d5/h/q;->j(J)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0}, Le/a/d5/h/q;->t()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0, v3, v4}, Le/a/d5/h/q;->i(J)Z

    move-result p1

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p0, v3, v4}, Le/a/d5/h/q;->j(J)Z

    move-result p1

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 15
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final i(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    iget-object v1, p0, Le/a/d5/h/q;->g:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/o5/b0;->r(J)I

    move-result v0

    iget-object v1, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    invoke-interface {v1, p1, p2}, Le/a/o5/b0;->r(J)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    iget-object v1, p0, Le/a/d5/h/q;->g:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/o5/b0;->m(J)I

    move-result v0

    iget-object v1, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    invoke-interface {v1, p1, p2}, Le/a/o5/b0;->m(J)I

    move-result p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final j(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/a/d5/h/q;->k(J)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public final k(J)Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/d5/h/q;->g:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Le/a/d5/h/q;->m(Le/a/d5/h/q;JZILjava/lang/Object;)Le/a/d5/h/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v1}, Le/a/d5/h/q;->l(JZ)Le/a/d5/h/c;

    move-result-object v2

    .line 3
    sget-object v3, Le/a/d5/h/r;->a:Le/a/d5/h/c;

    .line 4
    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v3, v0, Le/a/d5/h/c;->a:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, v2, Le/a/d5/h/c;->a:I

    .line 6
    invoke-virtual {p0}, Le/a/d5/h/q;->o()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d5/h/c;

    .line 7
    iget v4, v4, Le/a/d5/h/c;->a:I

    if-ne v3, v4, :cond_2

    .line 8
    iget-object v0, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    iget-object v2, p0, Le/a/d5/h/q;->g:Le/a/b0/q/l0;

    invoke-virtual {v2}, Le/a/b0/q/l0;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Le/a/o5/b0;->r(J)I

    move-result v0

    .line 9
    iget-object v2, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    invoke-interface {v2, p1, p2}, Le/a/o5/b0;->r(J)I

    move-result p1

    sub-int/2addr v0, p1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    iget-object v2, p0, Le/a/d5/h/q;->g:Le/a/b0/q/l0;

    invoke-virtual {v2}, Le/a/b0/q/l0;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Le/a/o5/b0;->r(J)I

    move-result v0

    iget-object v2, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    invoke-interface {v2, p1, p2}, Le/a/o5/b0;->r(J)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 13
    iget-object v0, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    iget-object v2, p0, Le/a/d5/h/q;->g:Le/a/b0/q/l0;

    invoke-virtual {v2}, Le/a/b0/q/l0;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Le/a/o5/b0;->m(J)I

    move-result v0

    iget-object v2, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    invoke-interface {v2, p1, p2}, Le/a/o5/b0;->m(J)I

    move-result p1

    if-eq v0, p1, :cond_1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v5
.end method

.method public final l(JZ)Le/a/d5/h/c;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/d5/h/q;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Le/a/d5/h/r;->a:Le/a/d5/h/c;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/d5/h/q;->i:Le/a/o5/b0;

    invoke-interface {v0, p1, p2}, Le/a/o5/b0;->c(J)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_5

    .line 4
    invoke-virtual {p0}, Le/a/d5/h/q;->s()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Le/a/d5/h/q;->v()Z

    move-result p3

    if-nez p3, :cond_5

    .line 5
    invoke-virtual {p0}, Le/a/d5/h/q;->o()Ljava/util/List;

    move-result-object p3

    .line 6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p3, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    .line 7
    :cond_1
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    .line 9
    move-object v3, v2

    check-cast v3, Le/a/d5/h/c;

    .line 10
    iget v3, v3, Le/a/d5/h/c;->a:I

    if-ne v3, p1, :cond_2

    move v3, p2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    if-eqz v3, :cond_1

    move-object v1, v2

    .line 11
    :cond_3
    check-cast v1, Le/a/d5/h/c;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    sget-object v1, Le/a/d5/h/r;->a:Le/a/d5/h/c;

    :goto_1
    return-object v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Le/a/d5/h/q;->o()Ljava/util/List;

    move-result-object p3

    .line 14
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p3, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    .line 15
    :cond_6
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    .line 17
    move-object v3, v2

    check-cast v3, Le/a/d5/h/c;

    .line 18
    iget v3, v3, Le/a/d5/h/c;->a:I

    if-gt v3, p1, :cond_7

    move v3, p2

    goto :goto_2

    :cond_7
    move v3, v0

    :goto_2
    if-eqz v3, :cond_6

    move-object v1, v2

    .line 19
    :cond_8
    check-cast v1, Le/a/d5/h/c;

    if-eqz v1, :cond_9

    goto :goto_3

    .line 20
    :cond_9
    invoke-virtual {p0}, Le/a/d5/h/q;->o()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d5/h/c;

    const/4 p2, -0x1

    .line 21
    iget-object p3, p1, Le/a/d5/h/c;->b:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/a/d5/h/c;

    invoke-direct {v1, p2, p3}, Le/a/d5/h/c;-><init>(ILjava/lang/String;)V

    :goto_3
    return-object v1
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/d5/h/q;->b:I

    return v0
.end method

.method public final o()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/d5/h/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d5/h/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/d5/h/q;->e:Le/a/u3/i;

    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 2
    :cond_1
    :try_start_0
    iget-object v0, p0, Le/a/d5/h/q;->c:Le/m/e/k;

    iget-object v1, p0, Le/a/d5/h/q;->e:Le/a/u3/i;

    invoke-interface {v1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le/a/d5/h/q$a;

    invoke-direct {v2}, Le/a/d5/h/q$a;-><init>()V

    invoke-virtual {v2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gson.fromJson(feature.fi\u2026ing, String>>>() {}.type)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/util/Map;

    .line 7
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 10
    check-cast v5, Ljava/util/Map$Entry;

    .line 11
    new-instance v6, Le/a/d5/h/c;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Le/a/d5/h/c;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d5/h/c;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v1}, Ls1/u/i;->E0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le/a/d5/h/q;->d:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 14
    :catch_0
    iget-object v0, p0, Le/a/d5/h/q;->d:Ljava/util/List;

    :goto_3
    return-object v0

    .line 15
    :cond_4
    :goto_4
    iget-object v0, p0, Le/a/d5/h/q;->d:Ljava/util/List;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/d5/h/q;->g:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Le/a/d5/h/q;->m(Le/a/d5/h/q;JZILjava/lang/Object;)Le/a/d5/h/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/d5/h/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public abstract u()Z
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d5/h/q;->a:Z

    return v0
.end method
