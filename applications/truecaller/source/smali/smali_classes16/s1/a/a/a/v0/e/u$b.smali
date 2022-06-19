.class public final Ls1/a/a/a/v0/e/u$b;
.super Ls1/a/a/a/v0/h/h$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$c<",
        "Ls1/a/a/a/v0/e/u;",
        "Ls1/a/a/a/v0/e/u$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Ls1/a/a/a/v0/e/q;

.field public h:I

.field public i:Ls1/a/a/a/v0/e/q;

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$c;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/e/u$b;->g:Ls1/a/a/a/v0/e/q;

    .line 4
    iput-object v0, p0, Ls1/a/a/a/v0/e/u$b;->i:Ls1/a/a/a/v0/e/q;

    return-void
.end method


# virtual methods
.method public bridge synthetic I(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/u$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/u$b;

    return-object p0
.end method

.method public bridge synthetic b(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/u$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/u$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/u$b;->g()Ls1/a/a/a/v0/e/u;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/u;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/h/v;

    invoke-direct {v0}, Ls1/a/a/a/v0/h/v;-><init>()V

    .line 4
    throw v0
.end method

.method public c()Ls1/a/a/a/v0/h/h$b;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/u$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/u$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/u$b;->g()Ls1/a/a/a/v0/e/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/u$b;->h(Ls1/a/a/a/v0/e/u;)Ls1/a/a/a/v0/e/u$b;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/u$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/u$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/u$b;->g()Ls1/a/a/a/v0/e/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/u$b;->h(Ls1/a/a/a/v0/e/u;)Ls1/a/a/a/v0/e/u$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/u;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/u$b;->h(Ls1/a/a/a/v0/e/u;)Ls1/a/a/a/v0/e/u$b;

    return-object p0
.end method

.method public g()Ls1/a/a/a/v0/e/u;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/u;-><init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ls1/a/a/a/v0/e/u$b;->e:I

    .line 4
    iput v2, v0, Ls1/a/a/a/v0/e/u;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Ls1/a/a/a/v0/e/u$b;->f:I

    .line 6
    iput v2, v0, Ls1/a/a/a/v0/e/u;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Ls1/a/a/a/v0/e/u$b;->g:Ls1/a/a/a/v0/e/q;

    .line 8
    iput-object v2, v0, Ls1/a/a/a/v0/e/u;->f:Ls1/a/a/a/v0/e/q;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget v2, p0, Ls1/a/a/a/v0/e/u$b;->h:I

    .line 10
    iput v2, v0, Ls1/a/a/a/v0/e/u;->g:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget-object v2, p0, Ls1/a/a/a/v0/e/u$b;->i:Ls1/a/a/a/v0/e/q;

    .line 12
    iput-object v2, v0, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 13
    :cond_5
    iget v1, p0, Ls1/a/a/a/v0/e/u$b;->j:I

    .line 14
    iput v1, v0, Ls1/a/a/a/v0/e/u;->i:I

    .line 15
    iput v3, v0, Ls1/a/a/a/v0/e/u;->c:I

    return-object v0
.end method

.method public h(Ls1/a/a/a/v0/e/u;)Ls1/a/a/a/v0/e/u$b;
    .locals 6

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/u;->l:Ls1/a/a/a/v0/e/u;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/u;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget v1, p1, Ls1/a/a/a/v0/e/u;->d:I

    .line 4
    iget v4, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    or-int/2addr v4, v3

    iput v4, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    .line 5
    iput v1, p0, Ls1/a/a/a/v0/e/u$b;->e:I

    :cond_2
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 6
    iget v0, p1, Ls1/a/a/a/v0/e/u;->e:I

    .line 7
    iget v4, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    or-int/2addr v1, v4

    iput v1, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/u$b;->f:I

    .line 9
    :cond_4
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/u;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p1, Ls1/a/a/a/v0/e/u;->f:Ls1/a/a/a/v0/e/q;

    .line 11
    iget v1, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Ls1/a/a/a/v0/e/u$b;->g:Ls1/a/a/a/v0/e/q;

    .line 12
    sget-object v5, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    if-eq v1, v5, :cond_5

    .line 13
    invoke-static {v1, v0}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/u$b;->g:Ls1/a/a/a/v0/e/q;

    goto :goto_2

    .line 14
    :cond_5
    iput-object v0, p0, Ls1/a/a/a/v0/e/u$b;->g:Ls1/a/a/a/v0/e/q;

    .line 15
    :goto_2
    iget v0, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    .line 16
    :cond_6
    iget v0, p1, Ls1/a/a/a/v0/e/u;->c:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    if-eqz v0, :cond_8

    .line 17
    iget v0, p1, Ls1/a/a/a/v0/e/u;->g:I

    .line 18
    iget v4, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    or-int/2addr v1, v4

    iput v1, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    .line 19
    iput v0, p0, Ls1/a/a/a/v0/e/u$b;->h:I

    .line 20
    :cond_8
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/u;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    iget-object v0, p1, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    .line 22
    iget v1, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Ls1/a/a/a/v0/e/u$b;->i:Ls1/a/a/a/v0/e/q;

    .line 23
    sget-object v5, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    if-eq v1, v5, :cond_9

    .line 24
    invoke-static {v1, v0}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/u$b;->i:Ls1/a/a/a/v0/e/q;

    goto :goto_4

    .line 25
    :cond_9
    iput-object v0, p0, Ls1/a/a/a/v0/e/u$b;->i:Ls1/a/a/a/v0/e/q;

    .line 26
    :goto_4
    iget v0, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    .line 27
    :cond_a
    iget v0, p1, Ls1/a/a/a/v0/e/u;->c:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    move v2, v3

    :cond_b
    if-eqz v2, :cond_c

    .line 28
    iget v0, p1, Ls1/a/a/a/v0/e/u;->i:I

    .line 29
    iget v2, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Ls1/a/a/a/v0/e/u$b;->d:I

    .line 30
    iput v0, p0, Ls1/a/a/a/v0/e/u$b;->j:I

    .line 31
    :cond_c
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$c;->f(Ls1/a/a/a/v0/h/h$d;)V

    .line 32
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 33
    iget-object p1, p1, Ls1/a/a/a/v0/e/u;->b:Ls1/a/a/a/v0/h/c;

    .line 34
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 35
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/u$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/u;->m:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/u;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/u$b;->h(Ls1/a/a/a/v0/e/u;)Ls1/a/a/a/v0/e/u$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    iget-object p2, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 4
    check-cast p2, Ls1/a/a/a/v0/e/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/u$b;->h(Ls1/a/a/a/v0/e/u;)Ls1/a/a/a/v0/e/u$b;

    :cond_1
    throw p1
.end method
