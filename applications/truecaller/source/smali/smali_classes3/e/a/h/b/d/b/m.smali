.class public final Le/a/h/b/d/b/m;
.super Le/a/h/b/d/b/i;
.source "SourceFile"


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "events"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/HistoryEvent;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Le/a/h/b/d/b/i;-><init>(Lcom/truecaller/data/entity/HistoryEvent;Ls1/z/c/f;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/HistoryEvent;

    .line 3
    invoke-virtual {p0, v1}, Le/a/h/b/d/b/i;->a(Lcom/truecaller/data/entity/HistoryEvent;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    sget-object v0, Le/a/h/b/d/b/m$a;->b:Le/a/h/b/d/b/m$a;

    invoke-static {p1, v0}, Ls1/e0/x;->p(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    invoke-static {p1}, Ls1/e0/x;->c(Ls1/e0/k;)I

    move-result p1

    iput p1, p0, Le/a/h/b/d/b/m;->d:I

    return-void
.end method
