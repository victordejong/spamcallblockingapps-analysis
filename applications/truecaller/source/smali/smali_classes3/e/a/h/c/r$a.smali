.class public final Le/a/h/c/r$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/c/r;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/h/c/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.speeddial.SpeedDialPresenter$fetchSpeedDialAndResolveContact$1$1"
    f = "SpeedDialPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/h/c/r;


# direct methods
.method public constructor <init>(Le/a/h/c/r;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/c/r$a;->e:Le/a/h/c/r;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/c/r$a;

    iget-object v0, p0, Le/a/h/c/r$a;->e:Le/a/h/c/r;

    invoke-direct {p1, v0, p2}, Le/a/h/c/r$a;-><init>(Le/a/h/c/r;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/h/c/r$a;->e:Le/a/h/c/r;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/h/c/r;->j:Le/a/h/c/s;

    .line 6
    iget-object p2, p2, Le/a/h/c/s;->f:Le/a/h/c/t;

    .line 7
    iget v0, p1, Le/a/h/c/r;->k:I

    invoke-interface {p2, v0}, Le/a/h/c/t;->get(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    iget-object v0, p1, Le/a/h/c/r;->j:Le/a/h/c/s;

    .line 9
    iget-object v0, v0, Le/a/h/c/s;->h:Le/a/k3/j/g;

    .line 10
    invoke-interface {v0, p2}, Le/a/k3/j/g;->c(Ljava/lang/String;)Ls1/k;

    move-result-object v0

    .line 11
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 12
    check-cast v1, Lcom/truecaller/data/entity/Contact;

    .line 13
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 14
    check-cast v0, Lcom/truecaller/data/entity/Number;

    .line 15
    new-instance v2, Le/a/h/c/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Le/a/h/c/r;->j:Le/a/h/c/s;

    .line 16
    iget-object p1, p1, Le/a/h/c/s;->g:Le/a/k3/l/f;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    .line 17
    invoke-interface {p1, v0}, Le/a/k3/l/f;->a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v0

    :goto_0
    invoke-direct {v2, p2, v0, v1}, Le/a/h/c/h;-><init>(Ljava/lang/String;Lcom/truecaller/data/entity/Number;Lcom/truecaller/data/entity/Contact;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/h/c/r$a;->e:Le/a/h/c/r;

    iget-object v0, p1, Le/a/h/c/r;->j:Le/a/h/c/s;

    .line 3
    iget-object v0, v0, Le/a/h/c/s;->f:Le/a/h/c/t;

    .line 4
    iget p1, p1, Le/a/h/c/r;->k:I

    invoke-interface {v0, p1}, Le/a/h/c/t;->get(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Le/a/h/c/r$a;->e:Le/a/h/c/r;

    iget-object v0, v0, Le/a/h/c/r;->j:Le/a/h/c/s;

    .line 6
    iget-object v0, v0, Le/a/h/c/s;->h:Le/a/k3/j/g;

    .line 7
    invoke-interface {v0, p1}, Le/a/k3/j/g;->c(Ljava/lang/String;)Ls1/k;

    move-result-object v0

    .line 8
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast v1, Lcom/truecaller/data/entity/Contact;

    .line 10
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    check-cast v0, Lcom/truecaller/data/entity/Number;

    .line 12
    new-instance v2, Le/a/h/c/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/h/c/r$a;->e:Le/a/h/c/r;

    iget-object v0, v0, Le/a/h/c/r;->j:Le/a/h/c/s;

    .line 13
    iget-object v0, v0, Le/a/h/c/s;->g:Le/a/k3/l/f;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 14
    invoke-interface {v0, v3}, Le/a/k3/l/f;->a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v0

    :goto_0
    invoke-direct {v2, p1, v0, v1}, Le/a/h/c/h;-><init>(Ljava/lang/String;Lcom/truecaller/data/entity/Number;Lcom/truecaller/data/entity/Contact;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method
