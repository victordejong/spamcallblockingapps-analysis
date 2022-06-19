.class public final Le/a/v/a/b0/c$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/b0/c$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/data/entity/HistoryEvent;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.details_view.ui.callhistory.CallHistoryExpandedPresenter$loadCallHistory$1$1$historyEvents$1"
    f = "CallHistoryExpandedPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/v/a/b0/c$b;


# direct methods
.method public constructor <init>(Le/a/v/a/b0/c$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/b0/c$b$a;->e:Le/a/v/a/b0/c$b;

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

    new-instance p1, Le/a/v/a/b0/c$b$a;

    iget-object v0, p0, Le/a/v/a/b0/c$b$a;->e:Le/a/v/a/b0/c$b;

    invoke-direct {p1, v0, p2}, Le/a/v/a/b0/c$b$a;-><init>(Le/a/v/a/b0/c$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/v/a/b0/c$b$a;->e:Le/a/v/a/b0/c$b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p2}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p1, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 7
    iget-object p2, p2, Le/a/v/a/b0/c;->i:Le/a/v/p/a;

    .line 8
    iget-object p1, p1, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    .line 9
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 10
    invoke-interface {p2, p1, v1}, Le/a/v/p/a;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p1, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 12
    iget-object p1, p1, Le/a/v/a/b0/c;->i:Le/a/v/p/a;

    .line 13
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 14
    invoke-interface {p1, p2, v1}, Le/a/v/p/a;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/v/a/b0/c$b$a;->e:Le/a/v/a/b0/c$b;

    iget-object p1, p1, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/v/a/b0/c$b$a;->e:Le/a/v/a/b0/c$b;

    iget-object v1, p1, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 4
    iget-object v1, v1, Le/a/v/a/b0/c;->i:Le/a/v/p/a;

    .line 5
    iget-object p1, p1, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    .line 6
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 7
    invoke-interface {v1, p1, v2}, Le/a/v/p/a;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/v/a/b0/c$b$a;->e:Le/a/v/a/b0/c$b;

    iget-object p1, p1, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Le/a/v/a/b0/c$b$a;->e:Le/a/v/a/b0/c$b;

    iget-object v1, v1, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 9
    iget-object v1, v1, Le/a/v/a/b0/c;->i:Le/a/v/p/a;

    .line 10
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 11
    invoke-interface {v1, p1, v2}, Le/a/v/p/a;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
