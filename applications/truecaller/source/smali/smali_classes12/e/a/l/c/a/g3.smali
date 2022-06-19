.class public final Le/a/l/c/a/g3;
.super Le/a/l/c/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/e2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/l/c/a/f<",
        "Le/a/l/c/a/f2;",
        ">;",
        "Le/a/l/c/a/e2;"
    }
.end annotation


# instance fields
.field public final d:Le/a/l/c/a/d2;

.field public final e:Le/a/l/p2/v0;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r5/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/l/c/a/j2;


# direct methods
.method public constructor <init>(Le/a/l/c/a/d2;Le/a/l/p2/v0;Lo3/a;Le/a/l/c/a/j2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/c/a/d2;",
            "Le/a/l/p2/v0;",
            "Lo3/a<",
            "Le/a/r5/i0;",
            ">;",
            "Le/a/l/c/a/j2;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "router"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/l/c/a/f;-><init>(Le/a/l/c/a/l1;)V

    iput-object p1, p0, Le/a/l/c/a/g3;->d:Le/a/l/c/a/d2;

    iput-object p2, p0, Le/a/l/c/a/g3;->e:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/c/a/g3;->f:Lo3/a;

    iput-object p4, p0, Le/a/l/c/a/g3;->g:Le/a/l/c/a/j2;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/l/c/a/f2;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Le/a/l/c/a/f;->G(Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l/c/a/p;

    .line 5
    iget-object p2, p2, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 6
    instance-of v0, p2, Le/a/l/c/a/t$o;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Le/a/l/c/a/t$o;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean v0, p2, Le/a/l/c/a/t$o;->a:Z

    .line 8
    invoke-interface {p1, v0}, Le/a/l/c/a/f2;->n0(Z)V

    .line 9
    iget-object v0, p2, Le/a/l/c/a/t$o;->b:Ljava/lang/String;

    .line 10
    invoke-interface {p1, v0}, Le/a/l/c/a/f2;->setLabel(Ljava/lang/String;)V

    .line 11
    iget-object p2, p2, Le/a/l/c/a/t$o;->c:Ljava/lang/String;

    .line 12
    invoke-interface {p1, p2}, Le/a/l/c/a/f2;->c0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    const p1, 0x7f0a13a7

    int-to-long v0, p1

    return-wide v0
.end method

.method public m(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/p;

    .line 2
    iget-object p1, p1, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 3
    instance-of p1, p1, Le/a/l/c/a/t$o;

    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x115c4a99

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.INCOGNITO_SWITCH_ACTION"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/l/c/a/g3;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Le/a/l/c/a/g3;->d:Le/a/l/c/a/d2;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/l/c/a/g3;->f:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r5/i0;

    invoke-interface {p1}, Le/a/r5/i0;->h()Z

    move-result p1

    xor-int/2addr p1, v2

    .line 7
    iget-object v0, p0, Le/a/l/c/a/g3;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r5/i0;

    invoke-interface {v0, p1}, Le/a/r5/i0;->f(Z)V

    .line 8
    iget-object v0, p0, Le/a/l/c/a/g3;->d:Le/a/l/c/a/d2;

    invoke-interface {v0, p1}, Le/a/l/c/a/d2;->Oi(Z)V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/l/c/a/g3;->g:Le/a/l/c/a/j2;

    invoke-interface {p1}, Le/a/l/c/a/j2;->B4()V

    :goto_1
    return v2
.end method
