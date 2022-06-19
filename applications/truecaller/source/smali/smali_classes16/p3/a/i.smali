.class public Lp3/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/i$a;
    }
.end annotation


# direct methods
.method public static a(Lp3/a/d;Ljava/util/List;)Lp3/a/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/d;",
            "Ljava/util/List<",
            "+",
            "Lp3/a/g;",
            ">;)",
            "Lp3/a/d;"
        }
    .end annotation

    const-string v0, "channel"

    .line 1
    invoke-static {p0, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/g;

    .line 3
    new-instance v1, Lp3/a/i$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lp3/a/i$a;-><init>(Lp3/a/d;Lp3/a/g;Lp3/a/h;)V

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method
