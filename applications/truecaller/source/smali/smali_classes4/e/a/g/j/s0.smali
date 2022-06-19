.class public final Le/a/g/j/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/j/r0;


# instance fields
.field public final a:Le/a/k/h;


# direct methods
.method public constructor <init>(Le/a/k/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "videoCallerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/s0;->a:Le/a/k/h;

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/g/j/s0$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/g/j/s0$a;

    iget v1, v0, Le/a/g/j/s0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/g/j/s0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/g/j/s0$a;

    invoke-direct {v0, p0, p3}, Le/a/g/j/s0$a;-><init>(Le/a/g/j/s0;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/g/j/s0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/g/j/s0$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Le/a/g/j/s0$a;->i:Z

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-boolean p1, v0, Le/a/g/j/s0$a;->i:Z

    iget-object p2, v0, Le/a/g/j/s0$a;->h:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v2, v0, Le/a/g/j/s0$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/g/j/s0;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/g/j/s0;->a:Le/a/k/h;

    iput-object p0, v0, Le/a/g/j/s0$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/g/j/s0$a;->h:Ljava/lang/Object;

    iput-boolean p1, v0, Le/a/g/j/s0$a;->i:Z

    iput v4, v0, Le/a/g/j/s0$a;->e:I

    invoke-interface {p3, p1, p2, v0}, Le/a/k/h;->n(ZLjava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 5
    iget-object v2, v2, Le/a/g/j/s0;->a:Le/a/k/h;

    const/4 v5, 0x0

    iput-object v5, v0, Le/a/g/j/s0$a;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/g/j/s0$a;->h:Ljava/lang/Object;

    iput-boolean p3, v0, Le/a/g/j/s0$a;->i:Z

    iput v3, v0, Le/a/g/j/s0$a;->e:I

    invoke-interface {v2, p1, p2, v0}, Le/a/k/h;->O(ZLjava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move v6, p3

    move-object p3, p1

    move p1, v6

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 6
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
