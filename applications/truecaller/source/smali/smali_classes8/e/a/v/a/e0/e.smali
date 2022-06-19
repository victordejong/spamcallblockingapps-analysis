.class public final Le/a/v/a/e0/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.details_view.ui.header.DetailsHeaderPresenter$maybeShowTimezone$1"
    f = "DetailsHeaderPresenter.kt"
    l = {
        0x94
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/v/a/e0/c;

.field public final synthetic g:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/v/a/e0/c;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/e0/e;->f:Le/a/v/a/e0/c;

    iput-object p2, p0, Le/a/v/a/e0/e;->g:Lcom/truecaller/data/entity/Contact;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/v/a/e0/e;

    iget-object v0, p0, Le/a/v/a/e0/e;->f:Le/a/v/a/e0/c;

    iget-object v1, p0, Le/a/v/a/e0/e;->g:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/a/e0/e;-><init>(Le/a/v/a/e0/c;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/e0/e;

    iget-object v0, p0, Le/a/v/a/e0/e;->f:Le/a/v/a/e0/c;

    iget-object v1, p0, Le/a/v/a/e0/e;->g:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/a/e0/e;-><init>(Le/a/v/a/e0/c;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/a/e0/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/v/a/e0/e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Le/a/v/a/e0/e;->f:Le/a/v/a/e0/c;

    .line 5
    iget-object p1, p1, Le/a/v/a/e0/c;->p:Le/a/k5/a;

    .line 6
    iget-object v2, p0, Le/a/v/a/e0/e;->g:Lcom/truecaller/data/entity/Contact;

    iput v3, p0, Le/a/v/a/e0/e;->e:I

    invoke-interface {p1, v2, p0}, Le/a/k5/a;->a(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/v/a/e0/e;->f:Le/a/v/a/e0/c;

    .line 7
    iget-object p1, p1, Le/a/v/a/e0/c;->p:Le/a/k5/a;

    .line 8
    iget-object v2, p0, Le/a/v/a/e0/e;->g:Lcom/truecaller/data/entity/Contact;

    invoke-interface {p1, v2}, Le/a/k5/a;->b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_5

    .line 9
    iget-object v2, p0, Le/a/v/a/e0/e;->f:Le/a/v/a/e0/c;

    .line 10
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/e0/b;

    if-eqz v2, :cond_4

    .line 11
    invoke-interface {v2, p1}, Le/a/v/a/e0/b;->C1(Ljava/lang/String;)V

    move-object v1, v0

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Le/a/v/a/e0/e;->f:Le/a/v/a/e0/c;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/e0/b;

    if-eqz p1, :cond_6

    .line 13
    invoke-interface {p1}, Le/a/v/a/e0/b;->z()V

    :cond_6
    :goto_2
    return-object v0
.end method
