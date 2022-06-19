.class public final Le/a/r/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/c/o;


# instance fields
.field public final a:Le/a/l/p2/c0;

.field public final b:Le/a/l/p2/r0;

.field public final c:Le/a/b0/o/a;

.field public final d:Le/a/s4/a;

.field public final e:Le/a/q2/d1/d;

.field public final f:Le/a/c0/h;

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/c0;Le/a/l/p2/r0;Le/a/b0/o/a;Le/a/s4/a;Le/a/q2/d1/d;Le/a/c0/h;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p7    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p8    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumDataPrefetcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/c/a;->a:Le/a/l/p2/c0;

    iput-object p2, p0, Le/a/r/c/a;->b:Le/a/l/p2/r0;

    iput-object p3, p0, Le/a/r/c/a;->c:Le/a/b0/o/a;

    iput-object p4, p0, Le/a/r/c/a;->d:Le/a/s4/a;

    iput-object p5, p0, Le/a/r/c/a;->e:Le/a/q2/d1/d;

    iput-object p6, p0, Le/a/r/c/a;->f:Le/a/c0/h;

    iput-object p7, p0, Le/a/r/c/a;->g:Ls1/w/f;

    iput-object p8, p0, Le/a/r/c/a;->h:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/c/a$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/c/a$c;

    iget v1, v0, Le/a/r/c/a$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/c/a$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/c/a$c;

    invoke-direct {v0, p0, p1}, Le/a/r/c/a$c;-><init>(Le/a/r/c/a;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/c/a$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/c/a$c;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v2, v0, Le/a/r/c/a$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/r/c/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/r/c/a$c;->g:Ljava/lang/Object;

    iput v6, v0, Le/a/r/c/a$c;->e:I

    .line 5
    iget-object p1, p0, Le/a/r/c/a;->h:Ls1/w/f;

    new-instance v2, Le/a/r/c/p;

    invoke-direct {v2, v7}, Le/a/r/c/p;-><init>(Ls1/w/d;)V

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 6
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7
    iget-object v8, v2, Le/a/r/c/a;->c:Le/a/b0/o/a;

    const-string v9, "core_isReturningUser"

    invoke-interface {v8, v9, p1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_6

    .line 8
    iget-object p1, v2, Le/a/r/c/a;->a:Le/a/l/p2/c0;

    sget-object v2, Le/a/r/c/a$a;->c:Le/a/r/c/a$a;

    iput-object v7, v0, Le/a/r/c/a$c;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/r/c/a$c;->e:I

    invoke-interface {p1, v2, v0}, Le/a/l/p2/c0;->c(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 9
    :cond_6
    iget-object p1, v2, Le/a/r/c/a;->f:Le/a/c0/h;

    .line 10
    iget-object p1, p1, Le/a/c0/h;->g:Le/a/c0/c;

    .line 11
    invoke-static {p1, v6, v7, v5, v7}, Le/a/c0/f;->e(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    .line 12
    iget-object p1, v2, Le/a/r/c/a;->f:Le/a/c0/h;

    .line 13
    iget-object p1, p1, Le/a/c0/h;->g:Le/a/c0/c;

    .line 14
    invoke-virtual {p1}, Le/a/c0/c;->g()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, v2, Le/a/r/c/a;->a:Le/a/l/p2/c0;

    sget-object v2, Le/a/r/c/a$a;->d:Le/a/r/c/a$a;

    iput-object v7, v0, Le/a/r/c/a$c;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/r/c/a$c;->e:I

    invoke-interface {p1, v2, v0}, Le/a/l/p2/c0;->c(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 16
    :cond_7
    iget-object p1, v2, Le/a/r/c/a;->b:Le/a/l/p2/r0;

    iput-object v7, v0, Le/a/r/c/a$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/r/c/a$c;->e:I

    invoke-interface {p1, v0}, Le/a/l/p2/r0;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 17
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/r/c/a;->g:Ls1/w/f;

    new-instance v4, Le/a/r/c/a$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/r/c/a$b;-><init>(Le/a/r/c/a;Ljava/lang/Runnable;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
