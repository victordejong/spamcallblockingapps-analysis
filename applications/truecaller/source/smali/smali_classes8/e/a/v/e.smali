.class public final Le/a/v/e;
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
        "Lcom/truecaller/data/entity/Contact;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.details_view.DetailsViewHostPresenter$loadAggregatedContact$2"
    f = "DetailsViewHostPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/v/b;

.field public final synthetic f:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/v/b;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/e;->e:Le/a/v/b;

    iput-object p2, p0, Le/a/v/e;->f:Lcom/truecaller/data/entity/Contact;

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

    new-instance p1, Le/a/v/e;

    iget-object v0, p0, Le/a/v/e;->e:Le/a/v/b;

    iget-object v1, p0, Le/a/v/e;->f:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/e;-><init>(Le/a/v/b;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/v/e;->e:Le/a/v/b;

    iget-object v0, p0, Le/a/v/e;->f:Lcom/truecaller/data/entity/Contact;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/v/b;->h:Le/a/k3/j/b;

    .line 6
    invoke-virtual {p1, v0}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/v/e;->e:Le/a/v/b;

    .line 2
    iget-object p1, p1, Le/a/v/b;->h:Le/a/k3/j/b;

    .line 3
    iget-object v0, p0, Le/a/v/e;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1, v0}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method
