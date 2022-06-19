.class public final Le/a/g/a/m$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/m;->fk(ZLcom/truecaller/data/entity/Contact;Ljava/lang/String;)V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.acs.ui.AfterCallBasePresenter$onBlockActionChanged$1"
    f = "AfterCallBasePresenter.kt"
    l = {
        0x480
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/g/a/m;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/g/a/m;ZLjava/lang/String;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/m$f;->g:Le/a/g/a/m;

    iput-boolean p2, p0, Le/a/g/a/m$f;->h:Z

    iput-object p3, p0, Le/a/g/a/m$f;->i:Ljava/lang/String;

    iput-object p4, p0, Le/a/g/a/m$f;->j:Lcom/truecaller/data/entity/Contact;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/g/a/m$f;

    iget-object v1, p0, Le/a/g/a/m$f;->g:Le/a/g/a/m;

    iget-boolean v2, p0, Le/a/g/a/m$f;->h:Z

    iget-object v3, p0, Le/a/g/a/m$f;->i:Ljava/lang/String;

    iget-object v4, p0, Le/a/g/a/m$f;->j:Lcom/truecaller/data/entity/Contact;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/g/a/m$f;-><init>(Le/a/g/a/m;ZLjava/lang/String;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/g/a/m$f;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/g/a/m$f;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/m$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/a/m$f;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/g/a/m$f;->e:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/m;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Le/a/g/a/m$f;->h:Z

    if-eqz p1, :cond_7

    .line 5
    iget-object p1, p0, Le/a/g/a/m$f;->g:Le/a/g/a/m;

    .line 6
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/h;

    if-eqz v1, :cond_7

    .line 7
    iget-object p1, p1, Le/a/g/a/m;->s0:Le/a/e0/b;

    .line 8
    iget-object v3, p0, Le/a/g/a/m$f;->i:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_5

    iget-object v3, p0, Le/a/g/a/m$f;->j:Lcom/truecaller/data/entity/Contact;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v4

    goto :goto_2

    :cond_5
    iget-object v3, p0, Le/a/g/a/m$f;->i:Ljava/lang/String;

    .line 9
    :goto_2
    iget-object v5, p0, Le/a/g/a/m$f;->j:Lcom/truecaller/data/entity/Contact;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v4

    .line 10
    :cond_6
    iget-object v5, p0, Le/a/g/a/m$f;->g:Le/a/g/a/m;

    invoke-virtual {v5}, Le/a/g/a/m;->Nj()Lcom/truecaller/blocking/FilterMatch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result v5

    .line 11
    invoke-interface {v1, p1, v3, v4, v5}, Le/a/g/a/h;->op(Le/a/e0/b;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    :cond_7
    iget-object p1, p0, Le/a/g/a/m$f;->g:Le/a/g/a/m;

    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    iput-object p1, p0, Le/a/g/a/m$f;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/g/a/m$f;->f:I

    invoke-virtual {p1, v1, p0}, Le/a/g/a/m;->Lj(Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    return-object v0

    :cond_8
    move-object v0, p1

    move-object p1, v1

    :goto_3
    check-cast p1, Lcom/truecaller/blocking/FilterMatch;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, v0, Le/a/g/a/m;->f:Lcom/truecaller/blocking/FilterMatch;

    .line 15
    iget-object p1, p0, Le/a/g/a/m$f;->g:Le/a/g/a/m;

    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_9

    .line 17
    iget-object v0, p0, Le/a/g/a/m$f;->g:Le/a/g/a/m;

    .line 18
    invoke-virtual {v0, p1}, Le/a/g/a/m;->Mk(Lcom/truecaller/data/entity/Contact;)Lq3/a/p1;

    .line 19
    :cond_9
    iget-object p1, p0, Le/a/g/a/m$f;->g:Le/a/g/a/m;

    .line 20
    invoke-virtual {p1}, Le/a/g/a/m;->Lk()Lq3/a/p1;

    .line 21
    iget-object p1, p0, Le/a/g/a/m$f;->g:Le/a/g/a/m;

    invoke-virtual {p1}, Le/a/g/a/m;->Hk()V

    .line 22
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
