.class public final Le/a/c/w/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/b0;


# instance fields
.field public final a:Le/a/c/a0/u;

.field public final b:Le/a/c/w/z;


# direct methods
.method public constructor <init>(Le/a/c/a0/u;Le/a/c/w/z;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "otpDataSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otpCache"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/d0;->a:Le/a/c/a0/u;

    iput-object p2, p0, Le/a/c/w/d0;->b:Le/a/c/w/z;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/w/d0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/w/d0$a;

    iget v1, v0, Le/a/c/w/d0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/d0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/d0$a;

    invoke-direct {v0, p0, p2}, Le/a/c/w/d0$a;-><init>(Le/a/c/w/d0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/w/d0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/d0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/c/w/d0$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/w/d0;

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
    iget-object p2, p0, Le/a/c/w/d0;->a:Le/a/c/a0/u;

    iput-object p0, v0, Le/a/c/w/d0$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/w/d0$a;->e:I

    check-cast p2, Le/a/c/a0/v;

    invoke-virtual {p2, p1, v0}, Le/a/c/a0/v;->b(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Ljava/util/Set;

    .line 6
    iget-object p1, p1, Le/a/c/w/d0;->b:Le/a/c/w/z;

    invoke-interface {p1, p2}, Le/a/c/w/z;->a(Ljava/util/Set;)V

    return-object p2
.end method
