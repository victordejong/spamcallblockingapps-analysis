.class public Le/k/a/c/d0/y/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/b/j;

.field public final b:Le/k/a/c/g;

.field public final c:Le/k/a/c/d0/y/v;

.field public final d:[Ljava/lang/Object;

.field public e:I

.field public f:I

.field public final g:Ljava/util/BitSet;

.field public h:Le/k/a/c/d0/y/a0;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/k/a/b/j;Le/k/a/c/g;ILe/k/a/c/d0/y/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/b0;->a:Le/k/a/b/j;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/y/b0;->b:Le/k/a/c/g;

    .line 4
    iput p3, p0, Le/k/a/c/d0/y/b0;->e:I

    .line 5
    iput-object p4, p0, Le/k/a/c/d0/y/b0;->c:Le/k/a/c/d0/y/v;

    .line 6
    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, Le/k/a/c/d0/y/b0;->d:[Ljava/lang/Object;

    const/16 p1, 0x20

    if-ge p3, p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/k/a/c/d0/y/b0;->g:Ljava/util/BitSet;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Le/k/a/c/d0/y/b0;->g:Ljava/util/BitSet;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/d0/u;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/c/d0/u;->o()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Le/k/a/c/g0/v;->a()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Le/k/a/c/d0/y/b0;->b:Le/k/a/c/g;

    sget-object v5, Le/k/a/c/h;->n:Le/k/a/c/h;

    invoke-virtual {v0, v5}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :try_start_0
    iget-object v0, p1, Le/k/a/c/d0/u;->i:Le/k/a/c/d0/r;

    .line 5
    iget-object v1, p0, Le/k/a/c/d0/y/b0;->b:Le/k/a/c/g;

    invoke-interface {v0, v1}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/d0/u;->r()Le/k/a/c/j;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/k/a/c/d0/y/b0;->b:Le/k/a/c/g;

    invoke-virtual {v0, v1}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Le/k/a/c/k; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {p1}, Le/k/a/c/d0/u;->c()Le/k/a/c/g0/i;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Le/k/a/c/g0/i;->g()Ljava/lang/Class;

    move-result-object v1

    .line 10
    iget-object p1, p1, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 11
    iget-object p1, p1, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1, p1}, Le/k/a/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :cond_1
    throw v0

    .line 14
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/y/b0;->b:Le/k/a/c/g;

    new-array v4, v4, [Ljava/lang/Object;

    .line 15
    iget-object v5, p1, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 16
    iget-object v5, v5, Le/k/a/c/v;->a:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 17
    invoke-virtual {p1}, Le/k/a/c/d0/u;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "Missing creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES` enabled"

    .line 18
    invoke-virtual {v0, p1, v2, v4}, Le/k/a/c/g;->Y(Le/k/a/c/d;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    .line 19
    :cond_3
    iget-object v0, p0, Le/k/a/c/d0/y/b0;->b:Le/k/a/c/g;

    new-array v4, v4, [Ljava/lang/Object;

    .line 20
    iget-object v5, p1, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 21
    iget-object v5, v5, Le/k/a/c/v;->a:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 22
    invoke-virtual {p1}, Le/k/a/c/d0/u;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "Missing required creator property \'%s\' (index %d)"

    .line 23
    invoke-virtual {v0, p1, v2, v4}, Le/k/a/c/g;->Y(Le/k/a/c/d;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    .line 24
    :cond_4
    iget-object v0, p0, Le/k/a/c/d0/y/b0;->b:Le/k/a/c/g;

    invoke-virtual {p1}, Le/k/a/c/d0/u;->o()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Le/k/a/c/g;->t(Ljava/lang/Object;Le/k/a/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method

.method public b(Le/k/a/c/d0/u;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Le/k/a/c/d0/u;->m()I

    move-result p1

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/y/b0;->d:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 3
    iget-object p2, p0, Le/k/a/c/d0/y/b0;->g:Ljava/util/BitSet;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 4
    iget p2, p0, Le/k/a/c/d0/y/b0;->f:I

    shl-int p1, v1, p1

    or-int/2addr p1, p2

    if-eq p2, p1, :cond_3

    .line 5
    iput p1, p0, Le/k/a/c/d0/y/b0;->f:I

    .line 6
    iget p1, p0, Le/k/a/c/d0/y/b0;->e:I

    sub-int/2addr p1, v1

    iput p1, p0, Le/k/a/c/d0/y/b0;->e:I

    if-gtz p1, :cond_3

    .line 7
    iget-object p1, p0, Le/k/a/c/d0/y/b0;->c:Le/k/a/c/d0/y/v;

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/k/a/c/d0/y/b0;->i:Ljava/lang/Object;

    if-eqz p1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 8
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 9
    iget-object p2, p0, Le/k/a/c/d0/y/b0;->g:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 10
    iget p1, p0, Le/k/a/c/d0/y/b0;->e:I

    sub-int/2addr p1, v1

    iput p1, p0, Le/k/a/c/d0/y/b0;->e:I

    :cond_3
    return v0
.end method

.method public c(Le/k/a/c/d0/t;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/a0$a;

    iget-object v1, p0, Le/k/a/c/d0/y/b0;->h:Le/k/a/c/d0/y/a0;

    invoke-direct {v0, v1, p3, p1, p2}, Le/k/a/c/d0/y/a0$a;-><init>(Le/k/a/c/d0/y/a0;Ljava/lang/Object;Le/k/a/c/d0/t;Ljava/lang/String;)V

    iput-object v0, p0, Le/k/a/c/d0/y/b0;->h:Le/k/a/c/d0/y/a0;

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/b0;->c:Le/k/a/c/d0/y/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/k/a/c/d0/y/v;->b:Le/k/a/c/v;

    .line 2
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/k/a/c/d0/y/b0;->c:Le/k/a/c/d0/y/v;

    iget-object v0, p0, Le/k/a/c/d0/y/b0;->a:Le/k/a/b/j;

    iget-object v1, p0, Le/k/a/c/d0/y/b0;->b:Le/k/a/c/g;

    invoke-virtual {p1, v0, v1}, Le/k/a/c/d0/y/v;->c(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/d0/y/b0;->i:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
