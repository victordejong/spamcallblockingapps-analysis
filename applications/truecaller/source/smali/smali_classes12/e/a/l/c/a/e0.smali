.class public final Le/a/l/c/a/e0;
.super Le/a/l/c/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/c1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/l/c/a/f<",
        "Le/a/l/c/a/d1;",
        ">;",
        "Le/a/l/c/a/c1;"
    }
.end annotation


# instance fields
.field public final d:Le/a/l/c/a/j2;


# direct methods
.method public constructor <init>(Le/a/l/c/a/l1;Le/a/l/c/a/j2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "router"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/l/c/a/f;-><init>(Le/a/l/c/a/l1;)V

    iput-object p2, p0, Le/a/l/c/a/e0;->d:Le/a/l/c/a/j2;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/l/c/a/d1;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l/c/a/p;

    .line 4
    iget-object p2, p2, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 5
    instance-of v0, p2, Le/a/l/c/a/t$c;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Le/a/l/c/a/t$c;

    if-eqz p2, :cond_2

    .line 6
    iget-boolean v0, p2, Le/a/l/c/a/t$c;->b:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p1}, Le/a/l/c/a/d1;->L()V

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p2, Le/a/l/c/a/t$c;->c:I

    .line 9
    invoke-interface {p1, v0}, Le/a/l/c/a/d1;->l0(I)V

    .line 10
    :goto_0
    iget v0, p2, Le/a/l/c/a/t$c;->d:I

    .line 11
    invoke-interface {p1, v0}, Le/a/l/c/a/d1;->Q3(I)V

    .line 12
    iget-object v0, p2, Le/a/l/c/a/t$c;->e:Le/a/l/c/a/x2;

    .line 13
    invoke-interface {p1, v0}, Le/a/l/c/a/d1;->U(Le/a/l/c/a/x2;)V

    .line 14
    iget-object v0, p2, Le/a/l/c/a/t$c;->f:Le/a/l/c/a/x2;

    .line 15
    invoke-interface {p1, v0}, Le/a/l/c/a/d1;->I(Le/a/l/c/a/x2;)V

    .line 16
    iget-object v0, p2, Le/a/l/c/a/t$c;->g:Le/a/l/c/a/a0;

    .line 17
    invoke-interface {p1, v0}, Le/a/l/c/a/d1;->w2(Le/a/l/c/a/a0;)V

    .line 18
    iget-object p2, p2, Le/a/l/c/a/t$c;->h:Le/a/l/c/a/a0;

    .line 19
    invoke-interface {p1, p2}, Le/a/l/c/a/d1;->S2(Le/a/l/c/a/a0;)V

    :cond_2
    return-void
.end method

.method public getItemId(I)J
    .locals 2

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
    instance-of p1, p1, Le/a/l/c/a/t$c;

    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Le/a/l/c/a/z;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/l/c/a/z;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Le/a/l/c/a/e0;->d:Le/a/l/c/a/j2;

    invoke-interface {v0, p1}, Le/a/l/c/a/j2;->Hd(Le/a/l/c/a/z;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
