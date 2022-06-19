.class public final Le/a/c/i/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/m/c/c;


# instance fields
.field public final a:Le/a/c/i/k/a;


# direct methods
.method public constructor <init>(Le/a/c/i/k/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "senderResolutionManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/k/c;->a:Le/a/c/i/k/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/b0/m/c/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/i/k/c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/k/c$a;

    iget v1, v0, Le/a/c/i/k/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/k/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/k/c$a;

    invoke-direct {v0, p0, p2}, Le/a/c/i/k/c$a;-><init>(Le/a/c/i/k/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/k/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/k/c$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/i/k/c;->a:Le/a/c/i/k/a;

    iput v3, v0, Le/a/c/i/k/c$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/c/i/k/a;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Le/a/c/h/j;

    if-eqz p2, :cond_4

    .line 6
    new-instance p1, Le/a/b0/m/c/b;

    .line 7
    iget-object v0, p2, Le/a/c/h/j;->a:Ljava/lang/String;

    .line 8
    iget-object v1, p2, Le/a/c/h/j;->b:Ljava/lang/String;

    .line 9
    iget-object p2, p2, Le/a/c/h/j;->c:Ljava/lang/String;

    .line 10
    invoke-direct {p1, v0, v1, p2}, Le/a/b0/m/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
