.class public final Ls1/a/a/a/v0/e/a0/a$d$b;
.super Ls1/a/a/a/v0/h/h$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/a0/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$b<",
        "Ls1/a/a/a/v0/e/a0/a$d;",
        "Ls1/a/a/a/v0/e/a0/a$d$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ls1/a/a/a/v0/e/a0/a$b;

.field public d:Ls1/a/a/a/v0/e/a0/a$c;

.field public e:Ls1/a/a/a/v0/e/a0/a$c;

.field public f:Ls1/a/a/a/v0/e/a0/a$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$b;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/e/a0/a$b;->g:Ls1/a/a/a/v0/e/a0/a$b;

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->c:Ls1/a/a/a/v0/e/a0/a$b;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/e/a0/a$c;->g:Ls1/a/a/a/v0/e/a0/a$c;

    .line 5
    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->d:Ls1/a/a/a/v0/e/a0/a$c;

    .line 6
    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->e:Ls1/a/a/a/v0/e/a0/a$c;

    .line 7
    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->f:Ls1/a/a/a/v0/e/a0/a$c;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/a0/a$d$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/a0/a$d$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/a0/a$d$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/a0/a$d$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/a$d$b;->f()Ls1/a/a/a/v0/e/a0/a$d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/a0/a$d;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$d$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$d$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/a$d$b;->f()Ls1/a/a/a/v0/e/a0/a$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/a0/a$d$b;->g(Ls1/a/a/a/v0/e/a0/a$d;)Ls1/a/a/a/v0/e/a0/a$d$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$d$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/a0/a$d$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/a$d$b;->f()Ls1/a/a/a/v0/e/a0/a$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/a0/a$d$b;->g(Ls1/a/a/a/v0/e/a0/a$d;)Ls1/a/a/a/v0/e/a0/a$d$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/a0/a$d;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/a0/a$d$b;->g(Ls1/a/a/a/v0/e/a0/a$d;)Ls1/a/a/a/v0/e/a0/a$d$b;

    return-object p0
.end method

.method public f()Ls1/a/a/a/v0/e/a0/a$d;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/a0/a$d;-><init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a0/a$a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->c:Ls1/a/a/a/v0/e/a0/a$b;

    .line 4
    iput-object v2, v0, Ls1/a/a/a/v0/e/a0/a$d;->c:Ls1/a/a/a/v0/e/a0/a$b;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget-object v2, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->d:Ls1/a/a/a/v0/e/a0/a$c;

    .line 6
    iput-object v2, v0, Ls1/a/a/a/v0/e/a0/a$d;->d:Ls1/a/a/a/v0/e/a0/a$c;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->e:Ls1/a/a/a/v0/e/a0/a$c;

    .line 8
    iput-object v2, v0, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->f:Ls1/a/a/a/v0/e/a0/a$c;

    .line 10
    iput-object v1, v0, Ls1/a/a/a/v0/e/a0/a$d;->f:Ls1/a/a/a/v0/e/a0/a$c;

    .line 11
    iput v3, v0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/e/a0/a$d;)Ls1/a/a/a/v0/e/a0/a$d$b;
    .locals 5

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/a0/a$d;->i:Ls1/a/a/a/v0/e/a0/a$d;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p1, Ls1/a/a/a/v0/e/a0/a$d;->c:Ls1/a/a/a/v0/e/a0/a$b;

    .line 4
    iget v3, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->c:Ls1/a/a/a/v0/e/a0/a$b;

    .line 5
    sget-object v4, Ls1/a/a/a/v0/e/a0/a$b;->g:Ls1/a/a/a/v0/e/a0/a$b;

    if-eq v3, v4, :cond_2

    .line 6
    new-instance v4, Ls1/a/a/a/v0/e/a0/a$b$b;

    invoke-direct {v4}, Ls1/a/a/a/v0/e/a0/a$b$b;-><init>()V

    .line 7
    invoke-virtual {v4, v3}, Ls1/a/a/a/v0/e/a0/a$b$b;->g(Ls1/a/a/a/v0/e/a0/a$b;)Ls1/a/a/a/v0/e/a0/a$b$b;

    .line 8
    invoke-virtual {v4, v0}, Ls1/a/a/a/v0/e/a0/a$b$b;->g(Ls1/a/a/a/v0/e/a0/a$b;)Ls1/a/a/a/v0/e/a0/a$b$b;

    invoke-virtual {v4}, Ls1/a/a/a/v0/e/a0/a$b$b;->f()Ls1/a/a/a/v0/e/a0/a$b;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->c:Ls1/a/a/a/v0/e/a0/a$b;

    goto :goto_1

    .line 9
    :cond_2
    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->c:Ls1/a/a/a/v0/e/a0/a$b;

    .line 10
    :goto_1
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    .line 11
    :cond_3
    iget v0, p1, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    .line 12
    iget-object v0, p1, Ls1/a/a/a/v0/e/a0/a$d;->d:Ls1/a/a/a/v0/e/a0/a$c;

    .line 13
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->d:Ls1/a/a/a/v0/e/a0/a$c;

    .line 14
    sget-object v2, Ls1/a/a/a/v0/e/a0/a$c;->g:Ls1/a/a/a/v0/e/a0/a$c;

    if-eq v1, v2, :cond_5

    .line 15
    invoke-static {v1}, Ls1/a/a/a/v0/e/a0/a$c;->f(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/e/a0/a$c$b;->g(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    invoke-virtual {v1}, Ls1/a/a/a/v0/e/a0/a$c$b;->f()Ls1/a/a/a/v0/e/a0/a$c;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->d:Ls1/a/a/a/v0/e/a0/a$c;

    goto :goto_3

    .line 16
    :cond_5
    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->d:Ls1/a/a/a/v0/e/a0/a$c;

    .line 17
    :goto_3
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    .line 18
    :cond_6
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/a0/a$d;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    iget-object v0, p1, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    .line 20
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->e:Ls1/a/a/a/v0/e/a0/a$c;

    .line 21
    sget-object v3, Ls1/a/a/a/v0/e/a0/a$c;->g:Ls1/a/a/a/v0/e/a0/a$c;

    if-eq v1, v3, :cond_7

    .line 22
    invoke-static {v1}, Ls1/a/a/a/v0/e/a0/a$c;->f(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/e/a0/a$c$b;->g(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    invoke-virtual {v1}, Ls1/a/a/a/v0/e/a0/a$c$b;->f()Ls1/a/a/a/v0/e/a0/a$c;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->e:Ls1/a/a/a/v0/e/a0/a$c;

    goto :goto_4

    .line 23
    :cond_7
    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->e:Ls1/a/a/a/v0/e/a0/a$c;

    .line 24
    :goto_4
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    or-int/2addr v0, v2

    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    .line 25
    :cond_8
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/a0/a$d;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    iget-object v0, p1, Ls1/a/a/a/v0/e/a0/a$d;->f:Ls1/a/a/a/v0/e/a0/a$c;

    .line 27
    iget v1, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->f:Ls1/a/a/a/v0/e/a0/a$c;

    .line 28
    sget-object v3, Ls1/a/a/a/v0/e/a0/a$c;->g:Ls1/a/a/a/v0/e/a0/a$c;

    if-eq v1, v3, :cond_9

    .line 29
    invoke-static {v1}, Ls1/a/a/a/v0/e/a0/a$c;->f(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/e/a0/a$c$b;->g(Ls1/a/a/a/v0/e/a0/a$c;)Ls1/a/a/a/v0/e/a0/a$c$b;

    invoke-virtual {v1}, Ls1/a/a/a/v0/e/a0/a$c$b;->f()Ls1/a/a/a/v0/e/a0/a$c;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->f:Ls1/a/a/a/v0/e/a0/a$c;

    goto :goto_5

    .line 30
    :cond_9
    iput-object v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->f:Ls1/a/a/a/v0/e/a0/a$c;

    .line 31
    :goto_5
    iget v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    or-int/2addr v0, v2

    iput v0, p0, Ls1/a/a/a/v0/e/a0/a$d$b;->b:I

    .line 32
    :cond_a
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 33
    iget-object p1, p1, Ls1/a/a/a/v0/e/a0/a$d;->a:Ls1/a/a/a/v0/h/c;

    .line 34
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 35
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/a0/a$d$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/a0/a$d;->j:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/a0/a$d;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/a0/a$d$b;->g(Ls1/a/a/a/v0/e/a0/a$d;)Ls1/a/a/a/v0/e/a0/a$d$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/a0/a$d;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/a0/a$d$b;->g(Ls1/a/a/a/v0/e/a0/a$d;)Ls1/a/a/a/v0/e/a0/a$d$b;

    :cond_1
    throw p1
.end method
