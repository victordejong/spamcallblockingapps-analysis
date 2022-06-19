.class Lkotlin/b0/h;
.super Lkotlin/b0/g;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Iterator;)Lkotlin/b0/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lkotlin/b0/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$asSequence"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/b0/h$a;

    invoke-direct {v0, p0}, Lkotlin/b0/h$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lkotlin/b0/h;->b(Lkotlin/b0/d;)Lkotlin/b0/d;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlin/b0/d;)Lkotlin/b0/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/b0/d<",
            "+TT;>;)",
            "Lkotlin/b0/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$constrainOnce"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lkotlin/b0/a;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/b0/a;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/b0/a;

    invoke-direct {v0, p0}, Lkotlin/b0/a;-><init>(Lkotlin/b0/d;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
