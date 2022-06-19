.class public final Le/a/i/d0/c0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/c0/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/i/d0/c0/d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/d0/c0/f;

.field public final synthetic b:Le/a/i/d0/c0/d;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/i/d0/c0/f;Le/a/i/d0/c0/d;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/d0/c0/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/i/d0/c0/e;->a:Le/a/i/d0/c0/f;

    iput-object p2, p0, Le/a/i/d0/c0/e;->b:Le/a/i/d0/c0/d;

    iput-object p3, p0, Le/a/i/d0/c0/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/i/d0/c0/d;)Le/a/i/d0/c0/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/d0/c0/d<",
            "TK;TV;>;)",
            "Le/a/i/d0/c0/d<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/m/d/y/n;->v(Le/a/i/d0/c0/d;Le/a/i/d0/c0/d;)Le/a/i/d0/c0/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ls1/w/d<",
            "-TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/d0/c0/e$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/d0/c0/e$a;

    iget v1, v0, Le/a/i/d0/c0/e$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/c0/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/c0/e$a;

    invoke-direct {v0, p0, p2}, Le/a/i/d0/c0/e$a;-><init>(Le/a/i/d0/c0/e;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/d0/c0/e$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/c0/e$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/i/d0/c0/e$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/i/d0/c0/e;

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

    iget-object p2, p0, Le/a/i/d0/c0/e;->b:Le/a/i/d0/c0/d;

    iput-object p0, v0, Le/a/i/d0/c0/e$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/i/d0/c0/e$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/i/d0/c0/d;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    if-eqz p2, :cond_4

    .line 4
    iget-object v0, p1, Le/a/i/d0/c0/e;->a:Le/a/i/d0/c0/f;

    .line 5
    iget-object v1, v0, Le/a/i/d0/c0/f;->a:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 6
    iget-object p1, p1, Le/a/i/d0/c0/e;->c:Ljava/lang/String;

    .line 7
    iput-object p1, v0, Le/a/i/d0/c0/f;->a:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :cond_5
    :goto_2
    return-object p2
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/d0/c0/e;->b:Le/a/i/d0/c0/d;

    invoke-interface {v0, p1, p2, p3}, Le/a/i/d0/c0/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
