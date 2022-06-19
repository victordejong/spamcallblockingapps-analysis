.class public final Le/k/a/c/n0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/k/a/c/n0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n0/n<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Le/k/a/c/n0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n0/n<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/u;->a:Le/k/a/c/n0/n;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    iget-object v3, v0, Le/k/a/c/n0/n;->a:Ljava/lang/Object;

    .line 3
    check-cast v3, [Ljava/lang/Object;

    .line 4
    array-length v4, v3

    .line 5
    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    .line 6
    iget-object v0, v0, Le/k/a/c/n0/n;->b:Le/k/a/c/n0/n;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p3, v1, p1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p4

    if-ne v2, p2, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Should have gotten "

    const-string p4, " entries, got "

    invoke-static {p3, p2, p4, v2}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/u;->b:Le/k/a/c/n0/n;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/k/a/c/n0/n;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Le/k/a/c/n0/u;->d:[Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/k/a/c/n0/u;->b:Le/k/a/c/n0/n;

    iput-object v0, p0, Le/k/a/c/n0/u;->a:Le/k/a/c/n0/n;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Le/k/a/c/n0/u;->c:I

    return-void
.end method

.method public c([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/k/a/c/n0/n;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/k/a/c/n0/n;-><init>(Ljava/lang/Object;Le/k/a/c/n0/n;)V

    .line 2
    iget-object v1, p0, Le/k/a/c/n0/u;->a:Le/k/a/c/n0/n;

    if-nez v1, :cond_0

    .line 3
    iput-object v0, p0, Le/k/a/c/n0/u;->b:Le/k/a/c/n0/n;

    iput-object v0, p0, Le/k/a/c/n0/u;->a:Le/k/a/c/n0/n;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Le/k/a/c/n0/u;->b:Le/k/a/c/n0/n;

    .line 5
    iget-object v2, v1, Le/k/a/c/n0/n;->b:Le/k/a/c/n0/n;

    if-nez v2, :cond_3

    .line 6
    iput-object v0, v1, Le/k/a/c/n0/n;->b:Le/k/a/c/n0/n;

    .line 7
    iput-object v0, p0, Le/k/a/c/n0/u;->b:Le/k/a/c/n0/n;

    .line 8
    :goto_0
    array-length p1, p1

    .line 9
    iget v0, p0, Le/k/a/c/n0/u;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Le/k/a/c/n0/u;->c:I

    const/16 v0, 0x4000

    if-ge p1, v0, :cond_1

    add-int/2addr p1, p1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x40000

    if-ge p1, v0, :cond_2

    shr-int/lit8 v0, p1, 0x2

    add-int/2addr p1, v0

    .line 10
    :cond_2
    :goto_1
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public d([Ljava/lang/Object;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/u;->a:Le/k/a/c/n0/n;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, v0, Le/k/a/c/n0/n;->a:Ljava/lang/Object;

    .line 3
    check-cast v2, [Ljava/lang/Object;

    .line 4
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    .line 5
    aget-object v4, v2, v1

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, v0, Le/k/a/c/n0/n;->b:Le/k/a/c/n0/n;

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v1, p2, :cond_2

    .line 7
    aget-object v0, p1, v1

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0}, Le/k/a/c/n0/u;->b()V

    return-void
.end method

.method public e([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/c/n0/u;->c:I

    add-int/2addr v0, p2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v1, v0, p1, p2}, Le/k/a/c/n0/u;->a(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p0}, Le/k/a/c/n0/u;->b()V

    return-object v1
.end method

.method public f([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/c/n0/u;->c:I

    add-int/2addr v0, p2

    .line 2
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p3, v0, p1, p2}, Le/k/a/c/n0/u;->a(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p0}, Le/k/a/c/n0/u;->b()V

    return-object p3
.end method

.method public g()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/u;->b()V

    .line 2
    iget-object v0, p0, Le/k/a/c/n0/u;->d:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Le/k/a/c/n0/u;->d:[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public h([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/u;->b()V

    .line 2
    iget-object v0, p0, Le/k/a/c/n0/u;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p2, :cond_1

    :cond_0
    const/16 v0, 0xc

    .line 3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Le/k/a/c/n0/u;->d:[Ljava/lang/Object;

    .line 4
    :cond_1
    iget-object v0, p0, Le/k/a/c/n0/u;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object p1, p0, Le/k/a/c/n0/u;->d:[Ljava/lang/Object;

    return-object p1
.end method
