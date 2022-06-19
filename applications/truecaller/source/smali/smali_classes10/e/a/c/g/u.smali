.class public final Le/a/c/g/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/t;


# instance fields
.field public final a:Le/a/c/g/b0/c;

.field public final b:Le/a/c/g/n;


# direct methods
.method public constructor <init>(Le/a/c/g/b0/g;Le/a/c/g/y/n;Le/a/c/g/b0/e;Le/a/c/b/j;Le/a/c/g/n;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "multiClassProbCalculator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiClassMetadataRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiClassClassifierTrainer"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localeAwareStemmer"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Le/a/c/g/u;->b:Le/a/c/g/n;

    .line 2
    invoke-interface {p4}, Le/a/c/b/j;->k()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 3
    new-instance p4, Le/a/c/g/b;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0xc8

    const/4 v4, -0x1

    const/16 v5, 0xc8

    const/4 v6, 0x4

    const/16 v7, 0x32

    move-object v0, p4

    invoke-direct/range {v0 .. v7}, Le/a/c/g/b;-><init>(IIIIIII)V

    .line 4
    new-instance v4, Le/a/c/g/e0/a;

    invoke-direct {v4, p2}, Le/a/c/g/e0/a;-><init>(Le/a/c/g/y/n;)V

    .line 5
    new-instance p5, Le/a/c/g/b0/d;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/a/c/g/b0/d;-><init>(Le/a/c/g/b0/g;Le/a/c/g/y/n;Le/a/c/g/b0/e;Le/a/c/g/e0/a;Le/a/c/g/b;)V

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 6
    :goto_0
    iput-object p5, p0, Le/a/c/g/u;->a:Le/a/c/g/b0/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/g/u$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/g/u$a;

    iget v1, v0, Le/a/c/g/u$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/u$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/u$a;

    invoke-direct {v0, p0, p2}, Le/a/c/g/u$a;-><init>(Le/a/c/g/u;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/g/u$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/u$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

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
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    move p2, v4

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    return-object v3

    .line 5
    :cond_4
    iget-object p2, p0, Le/a/c/g/u;->b:Le/a/c/g/n;

    invoke-interface {p2, p1}, Le/a/c/g/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Le/a/c/g/u;->a:Le/a/c/g/b0/c;

    if-eqz p2, :cond_6

    iput v4, v0, Le/a/c/g/u$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/c/g/b0/c;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p2, Le/a/c/g/a0/e;

    if-eqz p2, :cond_6

    new-instance v3, Le/a/c/g/s;

    .line 7
    iget-object p1, p2, Le/a/c/g/a0/e;->a:Ljava/lang/String;

    .line 8
    invoke-direct {v3, p1}, Le/a/c/g/s;-><init>(Ljava/lang/String;)V

    :cond_6
    return-object v3
.end method
