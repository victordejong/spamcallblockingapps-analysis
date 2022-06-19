.class public final Le/a/k/n/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/n/h/a;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/k/q/e;

.field public final d:Le/a/k/c/q;

.field public final e:Le/a/p5/u;

.field public final f:Le/a/p5/l;


# direct methods
.method public constructor <init>(Ls1/w/f;Ljavax/inject/Provider;Le/a/k/q/e;Le/a/k/c/q;Le/a/p5/u;Le/a/p5/l;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
            value = "PredefinedVideoFirebaseConfig"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/k/q/e;",
            "Le/a/k/c/q;",
            "Le/a/p5/u;",
            "Le/a/p5/l;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predefinedVideoConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exoPlayerUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gsonUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/n/h/d;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/k/n/h/d;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/k/n/h/d;->c:Le/a/k/q/e;

    iput-object p4, p0, Le/a/k/n/h/d;->d:Le/a/k/c/q;

    iput-object p5, p0, Le/a/k/n/h/d;->e:Le/a/p5/u;

    iput-object p6, p0, Le/a/k/n/h/d;->f:Le/a/p5/l;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/lang/String;Le/a/k/l/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lq3/a/x2/a1<",
            "Le/a/k/l/c;",
            ">;>;",
            "Ljava/lang/String;",
            "Le/a/k/l/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/x2/a1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/n/h/d$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/n/h/d$a;

    iget v1, v0, Le/a/k/n/h/d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/n/h/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/n/h/d$a;

    invoke-direct {v0, p0, p2}, Le/a/k/n/h/d$a;-><init>(Le/a/k/n/h/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/n/h/d$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/n/h/d$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/k/n/h/d$a;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iput-object p1, v0, Le/a/k/n/h/d$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/k/n/h/d$a;->e:I

    .line 2
    iget-object p2, p0, Le/a/k/n/h/d;->a:Ls1/w/f;

    new-instance v2, Le/a/k/n/h/c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/k/n/h/c;-><init>(Le/a/k/n/h/d;Ls1/w/d;)V

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 3
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 4
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v1

    .line 9
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
