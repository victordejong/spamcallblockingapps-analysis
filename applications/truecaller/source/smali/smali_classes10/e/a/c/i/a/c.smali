.class public final Le/a/c/i/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/a/b;


# instance fields
.field public final a:Le/a/c/a0/c;

.field public final b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/a0/c;Le/a/r2/f;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a0/c;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountInformationDataSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/a/c;->a:Le/a/c/a0/c;

    iput-object p2, p0, Le/a/c/i/a/c;->b:Le/a/r2/f;

    iput-object p3, p0, Le/a/c/i/a/c;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Le/a/c/i/a/c$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/a/c$a;

    iget v1, v0, Le/a/c/i/a/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/a/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/a/c$a;

    invoke-direct {v0, p0, p1}, Le/a/c/i/a/c$a;-><init>(Le/a/c/i/a/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/a/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/a/c$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    :try_start_1
    iget-object p1, p0, Le/a/c/i/a/c;->c:Ls1/w/f;

    new-instance v2, Le/a/c/i/a/c$b;

    invoke-direct {v2, p0, v3}, Le/a/c/i/a/c$b;-><init>(Le/a/c/i/a/c;Ls1/w/d;)V

    iput v4, v0, Le/a/c/i/a/c$a;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 6
    invoke-virtual {v0, p1, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 7
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
