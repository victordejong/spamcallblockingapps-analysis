.class public final Le/k/a/b/x/d;
.super Le/k/a/b/l;
.source "SourceFile"


# instance fields
.field public final c:Le/k/a/b/x/d;

.field public d:Le/k/a/b/x/b;

.field public e:Le/k/a/b/x/d;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Le/k/a/b/x/d;Le/k/a/b/x/b;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/b/l;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/b/x/d;->c:Le/k/a/b/x/d;

    .line 3
    iput-object p2, p0, Le/k/a/b/x/d;->d:Le/k/a/b/x/b;

    .line 4
    iput p3, p0, Le/k/a/b/l;->a:I

    .line 5
    iput p4, p0, Le/k/a/b/x/d;->h:I

    .line 6
    iput p5, p0, Le/k/a/b/x/d;->i:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Le/k/a/b/l;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/x/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/x/d;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Le/k/a/b/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/x/d;->c:Le/k/a/b/x/d;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/k/a/b/x/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public i()Le/k/a/b/x/d;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/k/a/b/x/d;->g:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/k/a/b/x/d;->c:Le/k/a/b/x/d;

    return-object v0
.end method

.method public j(II)Le/k/a/b/x/d;
    .locals 7

    .line 1
    iget-object v0, p0, Le/k/a/b/x/d;->e:Le/k/a/b/x/d;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Le/k/a/b/x/d;

    iget-object v1, p0, Le/k/a/b/x/d;->d:Le/k/a/b/x/b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Le/k/a/b/x/b;->a()Le/k/a/b/x/b;

    move-result-object v1

    :goto_0
    move-object v3, v1

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Le/k/a/b/x/d;-><init>(Le/k/a/b/x/d;Le/k/a/b/x/b;III)V

    iput-object v0, p0, Le/k/a/b/x/d;->e:Le/k/a/b/x/d;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Le/k/a/b/x/d;->m(III)V

    :goto_1
    return-object v0
.end method

.method public k(II)Le/k/a/b/x/d;
    .locals 7

    .line 1
    iget-object v0, p0, Le/k/a/b/x/d;->e:Le/k/a/b/x/d;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Le/k/a/b/x/d;

    iget-object v1, p0, Le/k/a/b/x/d;->d:Le/k/a/b/x/b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Le/k/a/b/x/b;->a()Le/k/a/b/x/b;

    move-result-object v1

    :goto_0
    move-object v3, v1

    const/4 v4, 0x2

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Le/k/a/b/x/d;-><init>(Le/k/a/b/x/d;Le/k/a/b/x/b;III)V

    iput-object v0, p0, Le/k/a/b/x/d;->e:Le/k/a/b/x/d;

    return-object v0

    :cond_1
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Le/k/a/b/x/d;->m(III)V

    return-object v0
.end method

.method public l()Z
    .locals 3

    .line 1
    iget v0, p0, Le/k/a/b/l;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Le/k/a/b/l;->b:I

    .line 2
    iget v2, p0, Le/k/a/b/l;->a:I

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public m(III)V
    .locals 0

    .line 1
    iput p1, p0, Le/k/a/b/l;->a:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le/k/a/b/l;->b:I

    .line 3
    iput p2, p0, Le/k/a/b/x/d;->h:I

    .line 4
    iput p3, p0, Le/k/a/b/x/d;->i:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/k/a/b/x/d;->f:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Le/k/a/b/x/d;->g:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Le/k/a/b/x/d;->d:Le/k/a/b/x/b;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Le/k/a/b/x/b;->c()V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/k/a/b/x/d;->f:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/k/a/b/x/d;->d:Le/k/a/b/x/b;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Le/k/a/b/x/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Le/k/a/b/x/b;->a:Ljava/lang/Object;

    .line 5
    new-instance v1, Le/k/a/b/i;

    instance-of v2, v0, Le/k/a/b/j;

    if-eqz v2, :cond_0

    check-cast v0, Le/k/a/b/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Duplicate field \'"

    const-string v3, "\'"

    invoke-static {v2, p1, v3}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method
