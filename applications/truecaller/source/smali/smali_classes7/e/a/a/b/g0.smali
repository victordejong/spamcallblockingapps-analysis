.class public final Le/a/a/b/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/b/f0;


# instance fields
.field public final a:Le/a/o5/f0;

.field public final b:Le/a/a/e/m;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/a/e/m;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxCleaner"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/b/g0;->a:Le/a/o5/f0;

    iput-object p2, p0, Le/a/a/b/g0;->b:Le/a/a/e/m;

    iput-object p3, p0, Le/a/a/b/g0;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/a/m/d1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/b/g0;->a:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Le/a/a/m/d1$p;->b:Le/a/a/m/d1$p;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/b/g0;->c:Ls1/w/f;

    new-instance v1, Le/a/a/b/h0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/a/b/h0;-><init>(Le/a/a/b/g0;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final synthetic b(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/a/m/d1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/a/b/g0$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/a/b/g0$a;

    iget v1, v0, Le/a/a/b/g0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/b/g0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/b/g0$a;

    invoke-direct {v0, p0, p1}, Le/a/a/b/g0$a;-><init>(Le/a/a/b/g0;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/a/b/g0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/b/g0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/b/g0;->b:Le/a/a/e/m;

    iput v3, v0, Le/a/a/b/g0$a;->e:I

    invoke-interface {p1, v0}, Le/a/a/e/m;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    sget-object p1, Le/a/a/m/d1$k;->b:Le/a/a/m/d1$k;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
