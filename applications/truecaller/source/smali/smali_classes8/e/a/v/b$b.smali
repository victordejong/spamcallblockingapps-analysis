.class public final Le/a/v/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/b;->Ij(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/data/entity/Contact;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.details_view.DetailsViewHostPresenter$loadAggregatedContact$4$1"
    f = "DetailsViewHostPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/v/b;

.field public final synthetic f:Ls1/w/d;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/v/b;Ls1/w/d;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Le/a/v/b$b;->e:Le/a/v/b;

    iput-object p3, p0, Le/a/v/b$b;->f:Ls1/w/d;

    iput-object p4, p0, Le/a/v/b$b;->g:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/v/b$b;

    iget-object v0, p0, Le/a/v/b$b;->e:Le/a/v/b;

    iget-object v1, p0, Le/a/v/b$b;->f:Ls1/w/d;

    iget-object v2, p0, Le/a/v/b$b;->g:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v1, v2}, Le/a/v/b$b;-><init>(Ls1/w/d;Le/a/v/b;Ls1/w/d;Ljava/lang/String;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/v/b$b;->e:Le/a/v/b;

    iget-object v0, p0, Le/a/v/b$b;->g:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/v/b;->h:Le/a/k3/j/b;

    .line 6
    invoke-virtual {p1, v0}, Le/a/k3/j/b;->j(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/v/b$b;->e:Le/a/v/b;

    .line 2
    iget-object p1, p1, Le/a/v/b;->h:Le/a/k3/j/b;

    .line 3
    iget-object v0, p0, Le/a/v/b$b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/a/k3/j/b;->j(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method
