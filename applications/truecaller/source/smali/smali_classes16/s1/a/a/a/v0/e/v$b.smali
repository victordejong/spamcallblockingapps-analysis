.class public final Ls1/a/a/a/v0/e/v$b;
.super Ls1/a/a/a/v0/h/h$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$b<",
        "Ls1/a/a/a/v0/e/v;",
        "Ls1/a/a/a/v0/e/v$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ls1/a/a/a/v0/e/v$c;

.field public f:I

.field public g:I

.field public h:Ls1/a/a/a/v0/e/v$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$b;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/e/v$c;->c:Ls1/a/a/a/v0/e/v$c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/v$b;->e:Ls1/a/a/a/v0/e/v$c;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/e/v$d;->b:Ls1/a/a/a/v0/e/v$d;

    iput-object v0, p0, Ls1/a/a/a/v0/e/v$b;->h:Ls1/a/a/a/v0/e/v$d;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/v$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/v$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/v$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/v$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/v$b;->f()Ls1/a/a/a/v0/e/v;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/v;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/v$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/v$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/v$b;->f()Ls1/a/a/a/v0/e/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/v$b;->g(Ls1/a/a/a/v0/e/v;)Ls1/a/a/a/v0/e/v$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/v$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/v$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/v$b;->f()Ls1/a/a/a/v0/e/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/v$b;->g(Ls1/a/a/a/v0/e/v;)Ls1/a/a/a/v0/e/v$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/v;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/v$b;->g(Ls1/a/a/a/v0/e/v;)Ls1/a/a/a/v0/e/v$b;

    return-object p0
.end method

.method public f()Ls1/a/a/a/v0/e/v;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/v;-><init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ls1/a/a/a/v0/e/v$b;->c:I

    .line 4
    iput v2, v0, Ls1/a/a/a/v0/e/v;->c:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Ls1/a/a/a/v0/e/v$b;->d:I

    .line 6
    iput v2, v0, Ls1/a/a/a/v0/e/v;->d:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Ls1/a/a/a/v0/e/v$b;->e:Ls1/a/a/a/v0/e/v$c;

    .line 8
    iput-object v2, v0, Ls1/a/a/a/v0/e/v;->e:Ls1/a/a/a/v0/e/v$c;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget v2, p0, Ls1/a/a/a/v0/e/v$b;->f:I

    .line 10
    iput v2, v0, Ls1/a/a/a/v0/e/v;->f:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget v2, p0, Ls1/a/a/a/v0/e/v$b;->g:I

    .line 12
    iput v2, v0, Ls1/a/a/a/v0/e/v;->g:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 13
    :cond_5
    iget-object v1, p0, Ls1/a/a/a/v0/e/v$b;->h:Ls1/a/a/a/v0/e/v$d;

    .line 14
    iput-object v1, v0, Ls1/a/a/a/v0/e/v;->h:Ls1/a/a/a/v0/e/v$d;

    .line 15
    iput v3, v0, Ls1/a/a/a/v0/e/v;->b:I

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/e/v;)Ls1/a/a/a/v0/e/v$b;
    .locals 6

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/v;->k:Ls1/a/a/a/v0/e/v;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/v;->b:I

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
    iget v1, p1, Ls1/a/a/a/v0/e/v;->c:I

    .line 4
    iget v4, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    or-int/2addr v4, v3

    iput v4, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    .line 5
    iput v1, p0, Ls1/a/a/a/v0/e/v$b;->c:I

    :cond_2
    and-int/lit8 v1, v0, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 6
    iget v1, p1, Ls1/a/a/a/v0/e/v;->d:I

    .line 7
    iget v5, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    .line 8
    iput v1, p0, Ls1/a/a/a/v0/e/v$b;->d:I

    :cond_4
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p1, Ls1/a/a/a/v0/e/v;->e:Ls1/a/a/a/v0/e/v$c;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v4, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    or-int/2addr v1, v4

    iput v1, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    .line 12
    iput-object v0, p0, Ls1/a/a/a/v0/e/v$b;->e:Ls1/a/a/a/v0/e/v$c;

    .line 13
    :cond_6
    iget v0, p1, Ls1/a/a/a/v0/e/v;->b:I

    and-int/lit8 v1, v0, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    if-eqz v1, :cond_8

    .line 14
    iget v1, p1, Ls1/a/a/a/v0/e/v;->f:I

    .line 15
    iget v5, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    .line 16
    iput v1, p0, Ls1/a/a/a/v0/e/v$b;->f:I

    :cond_8
    and-int/lit8 v1, v0, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_9

    move v1, v3

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_4
    if-eqz v1, :cond_a

    .line 17
    iget v1, p1, Ls1/a/a/a/v0/e/v;->g:I

    .line 18
    iget v5, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    .line 19
    iput v1, p0, Ls1/a/a/a/v0/e/v$b;->g:I

    :cond_a
    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    move v2, v3

    :cond_b
    if-eqz v2, :cond_c

    .line 20
    iget-object v0, p1, Ls1/a/a/a/v0/e/v;->h:Ls1/a/a/a/v0/e/v$d;

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget v2, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Ls1/a/a/a/v0/e/v$b;->b:I

    .line 23
    iput-object v0, p0, Ls1/a/a/a/v0/e/v$b;->h:Ls1/a/a/a/v0/e/v$d;

    .line 24
    :cond_c
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 25
    iget-object p1, p1, Ls1/a/a/a/v0/e/v;->a:Ls1/a/a/a/v0/h/c;

    .line 26
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 27
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/v$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/v;->l:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/v;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/v$b;->g(Ls1/a/a/a/v0/e/v;)Ls1/a/a/a/v0/e/v$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/v;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/v$b;->g(Ls1/a/a/a/v0/e/v;)Ls1/a/a/a/v0/e/v$b;

    :cond_1
    throw p1
.end method
