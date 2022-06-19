.class public final Lkotlin/u/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/u/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlin/u/e;Lkotlin/u/g$c;)Lkotlin/u/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/u/g$b;",
            ">(",
            "Lkotlin/u/e;",
            "Lkotlin/u/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lkotlin/u/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lkotlin/u/b;

    invoke-interface {p0}, Lkotlin/u/g$b;->getKey()Lkotlin/u/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/u/b;->a(Lkotlin/u/g$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lkotlin/u/b;->b(Lkotlin/u/g$b;)Lkotlin/u/g$b;

    move-result-object p0

    instance-of p1, p0, Lkotlin/u/g$b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1

    .line 3
    :cond_2
    sget-object v0, Lkotlin/u/e;->c:Lkotlin/u/e$b;

    if-ne v0, p1, :cond_3

    const-string p1, "null cannot be cast to non-null type E"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    return-object p0
.end method

.method public static b(Lkotlin/u/e;Lkotlin/u/g$c;)Lkotlin/u/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/e;",
            "Lkotlin/u/g$c<",
            "*>;)",
            "Lkotlin/u/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lkotlin/u/b;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lkotlin/u/b;

    invoke-interface {p0}, Lkotlin/u/g$b;->getKey()Lkotlin/u/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/u/b;->a(Lkotlin/u/g$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lkotlin/u/b;->b(Lkotlin/u/g$b;)Lkotlin/u/g$b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, Lkotlin/u/h;->f:Lkotlin/u/h;

    :cond_0
    return-object p0

    .line 3
    :cond_1
    sget-object v0, Lkotlin/u/e;->c:Lkotlin/u/e$b;

    if-ne v0, p1, :cond_2

    sget-object p0, Lkotlin/u/h;->f:Lkotlin/u/h;

    :cond_2
    return-object p0
.end method
