.class public final Ls1/a/a/a/v0/e/e$b;
.super Ls1/a/a/a/v0/h/h$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$b<",
        "Ls1/a/a/a/v0/e/e;",
        "Ls1/a/a/a/v0/e/e$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$b;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/e$b;->c:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/e$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/e$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/e$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/e$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/e$b;->f()Ls1/a/a/a/v0/e/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/e;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/e$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/e$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/e$b;->f()Ls1/a/a/a/v0/e/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/e$b;->g(Ls1/a/a/a/v0/e/e;)Ls1/a/a/a/v0/e/e$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/e$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/e$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/e$b;->f()Ls1/a/a/a/v0/e/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/e$b;->g(Ls1/a/a/a/v0/e/e;)Ls1/a/a/a/v0/e/e$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/e;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/e$b;->g(Ls1/a/a/a/v0/e/e;)Ls1/a/a/a/v0/e/e$b;

    return-object p0
.end method

.method public f()Ls1/a/a/a/v0/e/e;
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/e;-><init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/e$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/e/e$b;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/e$b;->c:Ljava/util/List;

    .line 4
    iget v1, p0, Ls1/a/a/a/v0/e/e$b;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Ls1/a/a/a/v0/e/e$b;->b:I

    .line 5
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/e/e$b;->c:Ljava/util/List;

    .line 6
    iput-object v1, v0, Ls1/a/a/a/v0/e/e;->b:Ljava/util/List;

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/e/e;)Ls1/a/a/a/v0/e/e$b;
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/e;->e:Ls1/a/a/a/v0/e/e;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p1, Ls1/a/a/a/v0/e/e;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Ls1/a/a/a/v0/e/e$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Ls1/a/a/a/v0/e/e;->b:Ljava/util/List;

    .line 6
    iput-object v0, p0, Ls1/a/a/a/v0/e/e$b;->c:Ljava/util/List;

    .line 7
    iget v0, p0, Ls1/a/a/a/v0/e/e$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Ls1/a/a/a/v0/e/e$b;->b:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/e$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/e$b;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/e$b;->c:Ljava/util/List;

    .line 10
    iget v0, p0, Ls1/a/a/a/v0/e/e$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/e$b;->b:I

    .line 11
    :cond_2
    iget-object v0, p0, Ls1/a/a/a/v0/e/e$b;->c:Ljava/util/List;

    .line 12
    iget-object v1, p1, Ls1/a/a/a/v0/e/e;->b:Ljava/util/List;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 15
    iget-object p1, p1, Ls1/a/a/a/v0/e/e;->a:Ls1/a/a/a/v0/h/c;

    .line 16
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 17
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/e$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/e;->f:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/e;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/e$b;->g(Ls1/a/a/a/v0/e/e;)Ls1/a/a/a/v0/e/e$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/e;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/e$b;->g(Ls1/a/a/a/v0/e/e;)Ls1/a/a/a/v0/e/e$b;

    :cond_1
    throw p1
.end method
