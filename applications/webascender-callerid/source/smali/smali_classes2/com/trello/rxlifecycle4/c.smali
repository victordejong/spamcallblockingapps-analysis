.class public Lcom/trello/rxlifecycle4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Li/c/b0/b/v;)Lcom/trello/rxlifecycle4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/v<",
            "TR;>;)",
            "Lcom/trello/rxlifecycle4/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/trello/rxlifecycle4/b;

    invoke-direct {v0, p0}, Lcom/trello/rxlifecycle4/b;-><init>(Li/c/b0/b/v;)V

    return-object v0
.end method

.method public static b(Li/c/b0/b/v;Li/c/b0/d/o;)Lcom/trello/rxlifecycle4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/v<",
            "TR;>;",
            "Li/c/b0/d/o<",
            "TR;TR;>;)",
            "Lcom/trello/rxlifecycle4/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lifecycle == null"

    .line 1
    invoke-static {p0, v0}, Lcom/trello/rxlifecycle4/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "correspondingEvents == null"

    .line 2
    invoke-static {p1, v0}, Lcom/trello/rxlifecycle4/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Li/c/b0/b/v;->share()Li/c/b0/b/v;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/trello/rxlifecycle4/c;->c(Li/c/b0/b/v;Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p0

    invoke-static {p0}, Lcom/trello/rxlifecycle4/c;->a(Li/c/b0/b/v;)Lcom/trello/rxlifecycle4/b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Li/c/b0/b/v;Li/c/b0/d/o;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/v<",
            "TR;>;",
            "Li/c/b0/d/o<",
            "TR;TR;>;)",
            "Li/c/b0/b/v<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Li/c/b0/b/v;->take(J)Li/c/b0/b/v;

    move-result-object v2

    invoke-virtual {v2, p1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    invoke-virtual {p0, v0, v1}, Li/c/b0/b/v;->skip(J)Li/c/b0/b/v;

    move-result-object p0

    new-instance v0, Lcom/trello/rxlifecycle4/c$a;

    invoke-direct {v0}, Lcom/trello/rxlifecycle4/c$a;-><init>()V

    .line 3
    invoke-static {p1, p0, v0}, Li/c/b0/b/v;->combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p0

    sget-object p1, Lcom/trello/rxlifecycle4/a;->a:Li/c/b0/d/o;

    .line 4
    invoke-virtual {p0, p1}, Li/c/b0/b/v;->onErrorReturn(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p0

    sget-object p1, Lcom/trello/rxlifecycle4/a;->b:Li/c/b0/d/p;

    .line 5
    invoke-virtual {p0, p1}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method
