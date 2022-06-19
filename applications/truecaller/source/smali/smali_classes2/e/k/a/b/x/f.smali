.class public Le/k/a/b/x/f;
.super Le/k/a/b/l;
.source "SourceFile"


# instance fields
.field public final c:Le/k/a/b/x/f;

.field public d:Le/k/a/b/x/b;

.field public e:Le/k/a/b/x/f;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;

.field public h:Z


# direct methods
.method public constructor <init>(ILe/k/a/b/x/f;Le/k/a/b/x/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/b/l;-><init>()V

    .line 2
    iput p1, p0, Le/k/a/b/l;->a:I

    .line 3
    iput-object p2, p0, Le/k/a/b/x/f;->c:Le/k/a/b/x/f;

    .line 4
    iput-object p3, p0, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Le/k/a/b/l;->b:I

    return-void
.end method

.method public constructor <init>(ILe/k/a/b/x/f;Le/k/a/b/x/b;Ljava/lang/Object;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Le/k/a/b/l;-><init>()V

    .line 7
    iput p1, p0, Le/k/a/b/l;->a:I

    .line 8
    iput-object p2, p0, Le/k/a/b/x/f;->c:Le/k/a/b/x/f;

    .line 9
    iput-object p3, p0, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Le/k/a/b/l;->b:I

    .line 11
    iput-object p4, p0, Le/k/a/b/x/f;->g:Ljava/lang/Object;

    return-void
.end method

.method public static n(Le/k/a/b/x/b;)Le/k/a/b/x/f;
    .locals 3

    .line 1
    new-instance v0, Le/k/a/b/x/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Le/k/a/b/x/f;-><init>(ILe/k/a/b/x/f;Le/k/a/b/x/b;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/x/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/x/f;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Le/k/a/b/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/x/f;->c:Le/k/a/b/x/f;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/k/a/b/x/f;->g:Ljava/lang/Object;

    return-void
.end method

.method public i()Le/k/a/b/x/f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/k/a/b/x/f;->g:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/k/a/b/x/f;->c:Le/k/a/b/x/f;

    return-object v0
.end method

.method public j()Le/k/a/b/x/f;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/b/x/f;->e:Le/k/a/b/x/f;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Le/k/a/b/x/f;

    iget-object v2, p0, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2}, Le/k/a/b/x/b;->a()Le/k/a/b/x/b;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p0, v2}, Le/k/a/b/x/f;-><init>(ILe/k/a/b/x/f;Le/k/a/b/x/b;)V

    iput-object v0, p0, Le/k/a/b/x/f;->e:Le/k/a/b/x/f;

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Le/k/a/b/x/f;->o(I)Le/k/a/b/x/f;

    return-object v0
.end method

.method public k(Ljava/lang/Object;)Le/k/a/b/x/f;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/b/x/f;->e:Le/k/a/b/x/f;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Le/k/a/b/x/f;

    iget-object v2, p0, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2}, Le/k/a/b/x/b;->a()Le/k/a/b/x/b;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p0, v2, p1}, Le/k/a/b/x/f;-><init>(ILe/k/a/b/x/f;Le/k/a/b/x/b;Ljava/lang/Object;)V

    iput-object v0, p0, Le/k/a/b/x/f;->e:Le/k/a/b/x/f;

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {v0, v1, p1}, Le/k/a/b/x/f;->p(ILjava/lang/Object;)Le/k/a/b/x/f;

    return-object v0
.end method

.method public l()Le/k/a/b/x/f;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/b/x/f;->e:Le/k/a/b/x/f;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Le/k/a/b/x/f;

    iget-object v2, p0, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2}, Le/k/a/b/x/b;->a()Le/k/a/b/x/b;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p0, v2}, Le/k/a/b/x/f;-><init>(ILe/k/a/b/x/f;Le/k/a/b/x/b;)V

    iput-object v0, p0, Le/k/a/b/x/f;->e:Le/k/a/b/x/f;

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Le/k/a/b/x/f;->o(I)Le/k/a/b/x/f;

    return-object v0
.end method

.method public m(Ljava/lang/Object;)Le/k/a/b/x/f;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/b/x/f;->e:Le/k/a/b/x/f;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Le/k/a/b/x/f;

    iget-object v2, p0, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2}, Le/k/a/b/x/b;->a()Le/k/a/b/x/b;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p0, v2, p1}, Le/k/a/b/x/f;-><init>(ILe/k/a/b/x/f;Le/k/a/b/x/b;Ljava/lang/Object;)V

    iput-object v0, p0, Le/k/a/b/x/f;->e:Le/k/a/b/x/f;

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {v0, v1, p1}, Le/k/a/b/x/f;->p(ILjava/lang/Object;)Le/k/a/b/x/f;

    return-object v0
.end method

.method public o(I)Le/k/a/b/x/f;
    .locals 1

    .line 1
    iput p1, p0, Le/k/a/b/l;->a:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le/k/a/b/l;->b:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/k/a/b/x/f;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Le/k/a/b/x/f;->h:Z

    .line 5
    iput-object p1, p0, Le/k/a/b/x/f;->g:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/k/a/b/x/b;->c()V

    :cond_0
    return-object p0
.end method

.method public p(ILjava/lang/Object;)Le/k/a/b/x/f;
    .locals 0

    .line 1
    iput p1, p0, Le/k/a/b/l;->a:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le/k/a/b/l;->b:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/k/a/b/x/f;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Le/k/a/b/x/f;->h:Z

    .line 5
    iput-object p2, p0, Le/k/a/b/x/f;->g:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/k/a/b/x/b;->c()V

    :cond_0
    return-object p0
.end method

.method public q(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/l;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Le/k/a/b/x/f;->h:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/k/a/b/x/f;->h:Z

    .line 3
    iput-object p1, p0, Le/k/a/b/x/f;->f:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, p1}, Le/k/a/b/x/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v0, v1, Le/k/a/b/x/b;->a:Ljava/lang/Object;

    .line 7
    new-instance v1, Le/k/a/b/f;

    const-string v2, "Duplicate field \'"

    const-string v3, "\'"

    invoke-static {v2, p1, v3}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    instance-of v2, v0, Le/k/a/b/g;

    if-eqz v2, :cond_1

    check-cast v0, Le/k/a/b/g;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p1, v0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw v1

    .line 8
    :cond_2
    iget p1, p0, Le/k/a/b/l;->b:I

    if-gez p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0

    :cond_4
    :goto_1
    const/4 p1, 0x4

    return p1
.end method

.method public r()I
    .locals 4

    .line 1
    iget v0, p0, Le/k/a/b/l;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Le/k/a/b/x/f;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 3
    :cond_0
    iput-boolean v2, p0, Le/k/a/b/x/f;->h:Z

    .line 4
    iget v0, p0, Le/k/a/b/l;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Le/k/a/b/l;->b:I

    return v1

    :cond_1
    if-ne v0, v3, :cond_3

    .line 5
    iget v0, p0, Le/k/a/b/l;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 6
    iput v1, p0, Le/k/a/b/l;->b:I

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 7
    :cond_3
    iget v0, p0, Le/k/a/b/l;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Le/k/a/b/l;->b:I

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    :goto_1
    return v2
.end method
