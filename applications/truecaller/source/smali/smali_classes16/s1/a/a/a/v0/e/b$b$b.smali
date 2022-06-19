.class public final Ls1/a/a/a/v0/e/b$b$b;
.super Ls1/a/a/a/v0/h/h$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$b<",
        "Ls1/a/a/a/v0/e/b$b;",
        "Ls1/a/a/a/v0/e/b$b$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Ls1/a/a/a/v0/e/b$b$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$b;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/e/b$b$c;->p:Ls1/a/a/a/v0/e/b$b$c;

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/b$b$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/b$b$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/b$b$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/b$b$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/b$b$b;->f()Ls1/a/a/a/v0/e/b$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/b$b;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/b$b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/b$b$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/b$b$b;->f()Ls1/a/a/a/v0/e/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/b$b$b;->g(Ls1/a/a/a/v0/e/b$b;)Ls1/a/a/a/v0/e/b$b$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/b$b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/b$b$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/b$b$b;->f()Ls1/a/a/a/v0/e/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/b$b$b;->g(Ls1/a/a/a/v0/e/b$b;)Ls1/a/a/a/v0/e/b$b$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/b$b;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/b$b$b;->g(Ls1/a/a/a/v0/e/b$b;)Ls1/a/a/a/v0/e/b$b$b;

    return-object p0
.end method

.method public f()Ls1/a/a/a/v0/e/b$b;
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/b$b;-><init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/b$b$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ls1/a/a/a/v0/e/b$b$b;->c:I

    .line 4
    iput v2, v0, Ls1/a/a/a/v0/e/b$b;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget-object v1, p0, Ls1/a/a/a/v0/e/b$b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    .line 6
    iput-object v1, v0, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    .line 7
    iput v3, v0, Ls1/a/a/a/v0/e/b$b;->b:I

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/e/b$b;)Ls1/a/a/a/v0/e/b$b$b;
    .locals 5

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/b$b;->g:Ls1/a/a/a/v0/e/b$b;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/b$b;->b:I

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
    iget v1, p1, Ls1/a/a/a/v0/e/b$b;->c:I

    .line 4
    iget v4, p0, Ls1/a/a/a/v0/e/b$b$b;->b:I

    or-int/2addr v4, v3

    iput v4, p0, Ls1/a/a/a/v0/e/b$b$b;->b:I

    .line 5
    iput v1, p0, Ls1/a/a/a/v0/e/b$b$b;->c:I

    :cond_2
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_5

    .line 6
    iget-object v0, p1, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    .line 7
    iget v2, p0, Ls1/a/a/a/v0/e/b$b$b;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Ls1/a/a/a/v0/e/b$b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    .line 8
    sget-object v3, Ls1/a/a/a/v0/e/b$b$c;->p:Ls1/a/a/a/v0/e/b$b$c;

    if-eq v2, v3, :cond_4

    .line 9
    new-instance v3, Ls1/a/a/a/v0/e/b$b$c$b;

    invoke-direct {v3}, Ls1/a/a/a/v0/e/b$b$c$b;-><init>()V

    .line 10
    invoke-virtual {v3, v2}, Ls1/a/a/a/v0/e/b$b$c$b;->g(Ls1/a/a/a/v0/e/b$b$c;)Ls1/a/a/a/v0/e/b$b$c$b;

    .line 11
    invoke-virtual {v3, v0}, Ls1/a/a/a/v0/e/b$b$c$b;->g(Ls1/a/a/a/v0/e/b$b$c;)Ls1/a/a/a/v0/e/b$b$c$b;

    invoke-virtual {v3}, Ls1/a/a/a/v0/e/b$b$c$b;->f()Ls1/a/a/a/v0/e/b$b$c;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    goto :goto_1

    .line 12
    :cond_4
    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    .line 13
    :goto_1
    iget v0, p0, Ls1/a/a/a/v0/e/b$b$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/b$b$b;->b:I

    .line 14
    :cond_5
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 15
    iget-object p1, p1, Ls1/a/a/a/v0/e/b$b;->a:Ls1/a/a/a/v0/h/c;

    .line 16
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 17
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/b$b$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/b$b;->h:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/b$b;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/b$b$b;->g(Ls1/a/a/a/v0/e/b$b;)Ls1/a/a/a/v0/e/b$b$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/b$b;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/b$b$b;->g(Ls1/a/a/a/v0/e/b$b;)Ls1/a/a/a/v0/e/b$b$b;

    :cond_1
    throw p1
.end method
