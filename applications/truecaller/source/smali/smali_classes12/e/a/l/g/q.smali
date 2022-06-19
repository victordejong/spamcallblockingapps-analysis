.class public final Le/a/l/g/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/g/q$a;,
        Le/a/l/g/q$b;,
        Le/a/l/g/q$c;
    }
.end annotation


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/a/l/g/q$d;->b:Le/a/l/g/q$d;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/l/g/q;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/r2/a<",
            "Le/a/l/g/q$b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Le/a/l/r2/a$b;->a:Le/a/l/r2/a$b;

    instance-of v1, p5, Le/a/l/g/q$e;

    if-eqz v1, :cond_0

    move-object v1, p5

    check-cast v1, Le/a/l/g/q$e;

    iget v2, v1, Le/a/l/g/q$e;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/l/g/q$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/l/g/q$e;

    invoke-direct {v1, p0, p5}, Le/a/l/g/q$e;-><init>(Le/a/l/g/q;Ls1/w/d;)V

    :goto_0
    iget-object p5, v1, Le/a/l/g/q$e;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/l/g/q$e;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    :try_start_0
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p5, p0, Le/a/l/g/q;->a:Ls1/g;

    invoke-interface {p5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Le/a/l/g/q$c;

    .line 5
    new-instance v3, Le/a/l/g/q$a;

    invoke-direct {v3, p1, p2, p3, p4}, Le/a/l/g/q$a;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput v4, v1, Le/a/l/g/q$e;->e:I

    invoke-interface {p5, v3, v1}, Le/a/l/g/q$c;->a(Le/a/l/g/q$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    check-cast p5, Le/a/l/g/q$b;

    new-instance p1, Le/a/l/r2/a$c;

    invoke-direct {p1, p5}, Le/a/l/r2/a$c;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 6
    instance-of p2, p1, Lx3/l;

    if-eqz p2, :cond_4

    new-instance v0, Le/a/l/r2/a$a;

    check-cast p1, Lx3/l;

    .line 7
    iget p1, p1, Lx3/l;->a:I

    .line 8
    invoke-direct {v0, p1}, Le/a/l/r2/a$a;-><init>(I)V

    goto :goto_2

    .line 9
    :cond_4
    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_5

    sget-object v0, Le/a/l/r2/a$d;->a:Le/a/l/r2/a$d;

    goto :goto_2

    .line 10
    :cond_5
    instance-of p1, p1, Ljava/io/IOException;

    :goto_2
    move-object p1, v0

    :goto_3
    return-object p1
.end method
