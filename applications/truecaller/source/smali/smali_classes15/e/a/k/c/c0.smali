.class public final Le/a/k/c/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/b0;


# instance fields
.field public final a:Le/a/k/c/r0;

.field public final b:Le/a/k/n/f/d;

.field public final c:Le/a/k/n/h/a;


# direct methods
.method public constructor <init>(Le/a/k/c/r0;Le/a/k/n/f/d;Le/a/k/n/h/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "videoCallerIdAvailability"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "incomingVideoRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predefinedVideosRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/c0;->a:Le/a/k/c/r0;

    iput-object p2, p0, Le/a/k/c/c0;->b:Le/a/k/n/f/d;

    iput-object p3, p0, Le/a/k/c/c0;->c:Le/a/k/n/h/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/k/l/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/l/b;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-virtual {p0}, Le/a/k/c/c0;->d()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/k/c/c0;->b:Le/a/k/n/f/d;

    check-cast v1, Le/a/k/n/f/f;

    .line 3
    iget-object v2, v1, Le/a/k/n/f/f;->b:Ls1/w/f;

    new-instance v3, Le/a/k/n/f/e;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p1, v4}, Le/a/k/n/f/e;-><init>(Le/a/k/n/f/f;Le/a/k/l/b;Ls1/w/d;)V

    invoke-static {v2, v3, p2}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/k/l/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/c/c0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/c/c0$a;

    iget v1, v0, Le/a/k/c/c0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/c0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/c0$a;

    invoke-direct {v0, p0, p2}, Le/a/k/c/c0$a;-><init>(Le/a/k/c/c0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/c/c0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/c0$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/k/c/c0$a;->h:Ljava/lang/Object;

    check-cast p1, Le/a/k/l/b;

    iget-object v0, v0, Le/a/k/c/c0$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/k/l/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/k/c/c0$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/k/c/c0;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/k/c/c0;->d()Z

    move-result p2

    if-nez p2, :cond_4

    return-object v5

    .line 5
    :cond_4
    iget-object p2, p0, Le/a/k/c/c0;->b:Le/a/k/n/f/d;

    iput-object p0, v0, Le/a/k/c/c0$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/k/c/c0$a;->e:I

    check-cast p2, Le/a/k/n/f/f;

    .line 6
    iget-object v2, p2, Le/a/k/n/f/f;->b:Ls1/w/f;

    new-instance v4, Le/a/k/n/f/g;

    invoke-direct {v4, p2, p1, v5}, Le/a/k/n/f/g;-><init>(Le/a/k/n/f/f;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v4, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, p0

    .line 7
    :goto_1
    check-cast p2, Le/a/k/l/b;

    if-eqz p2, :cond_a

    .line 8
    iget-object p1, p1, Le/a/k/c/c0;->c:Le/a/k/n/h/a;

    iput-object p2, v0, Le/a/k/c/c0$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/k/c/c0$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/c/c0$a;->e:I

    check-cast p1, Le/a/k/n/h/d;

    .line 9
    iget-object v2, p1, Le/a/k/n/h/d;->a:Ls1/w/f;

    new-instance v3, Le/a/k/n/h/c;

    invoke-direct {v3, p1, v5}, Le/a/k/n/h/c;-><init>(Le/a/k/n/h/d;Ls1/w/d;)V

    invoke-static {v2, v3, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 10
    :goto_2
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;

    invoke-virtual {v2}, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;->getId()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p1, Le/a/k/l/b;->a:Ljava/lang/String;

    .line 12
    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v5, v1

    :cond_8
    check-cast v5, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;

    if-eqz v5, :cond_9

    .line 15
    sget-object p2, Lcom/truecaller/videocallerid/data/VideoType;->PredefinedVideo:Lcom/truecaller/videocallerid/data/VideoType;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p2, p1, Le/a/k/l/b;->f:Lcom/truecaller/videocallerid/data/VideoType;

    :cond_9
    move-object v5, v0

    :cond_a
    return-object v5
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-virtual {p0}, Le/a/k/c/c0;->d()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/k/c/c0;->b:Le/a/k/n/f/d;

    check-cast v1, Le/a/k/n/f/f;

    .line 3
    iget-object v2, v1, Le/a/k/n/f/f;->b:Ls1/w/f;

    new-instance v3, Le/a/k/n/f/i;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p1, v4}, Le/a/k/n/f/i;-><init>(Le/a/k/n/f/f;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v3, p2}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/c/c0;->a:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isAvailable()Z

    move-result v0

    return v0
.end method
