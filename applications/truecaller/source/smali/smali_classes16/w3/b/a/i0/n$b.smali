.class public Lw3/b/a/i0/n$b;
.super Lw3/b/a/i0/n$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lw3/b/a/i0/n$f;

.field public final c:Lw3/b/a/i0/n$f;

.field public final d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lw3/b/a/i0/n$f;Lw3/b/a/i0/n$f;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lw3/b/a/i0/n$d;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/n$b;->b:Lw3/b/a/i0/n$f;

    .line 3
    iput-object p2, p0, Lw3/b/a/i0/n$b;->c:Lw3/b/a/i0/n$f;

    .line 4
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-interface {p1}, Lw3/b/a/i0/n$f;->e()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 6
    iget-object v4, p0, Lw3/b/a/i0/n$b;->c:Lw3/b/a/i0/n$f;

    invoke-interface {v4}, Lw3/b/a/i0/n$f;->e()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lw3/b/a/i0/n$b;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/n$b;->b:Lw3/b/a/i0/n$f;

    invoke-interface {v0, p1, p2}, Lw3/b/a/i0/n$f;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lw3/b/a/i0/n$b;->c:Lw3/b/a/i0/n$f;

    iget-object v2, p0, Lw3/b/a/i0/n$b;->b:Lw3/b/a/i0/n$f;

    invoke-interface {v2, p1, v0}, Lw3/b/a/i0/n$f;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lw3/b/a/i0/n$f;->a(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    iget-object v2, p0, Lw3/b/a/i0/n$b;->c:Lw3/b/a/i0/n$f;

    invoke-interface {v2, p1, v1}, Lw3/b/a/i0/n$f;->b(Ljava/lang/String;I)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2, p1, p2}, Lw3/b/a/i0/n$d;->g(ILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    if-lez v0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    not-int p1, p2

    return p1
.end method

.method public b(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/n$b;->b:Lw3/b/a/i0/n$f;

    invoke-interface {v0, p1, p2}, Lw3/b/a/i0/n$f;->b(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lw3/b/a/i0/n$b;->c:Lw3/b/a/i0/n$f;

    invoke-interface {v1, p1, v0}, Lw3/b/a/i0/n$f;->b(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Lw3/b/a/i0/n$b;->b(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, p1, p2}, Lw3/b/a/i0/n$d;->g(ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    not-int p1, p2

    return p1

    :cond_0
    return v0
.end method

.method public c(Ljava/lang/StringBuffer;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/n$b;->b:Lw3/b/a/i0/n$f;

    invoke-interface {v0, p1, p2}, Lw3/b/a/i0/n$f;->c(Ljava/lang/StringBuffer;I)V

    .line 2
    iget-object v0, p0, Lw3/b/a/i0/n$b;->c:Lw3/b/a/i0/n$f;

    invoke-interface {v0, p1, p2}, Lw3/b/a/i0/n$f;->c(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public d(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/n$b;->b:Lw3/b/a/i0/n$f;

    invoke-interface {v0, p1}, Lw3/b/a/i0/n$f;->d(I)I

    move-result v0

    iget-object v1, p0, Lw3/b/a/i0/n$b;->c:Lw3/b/a/i0/n$f;

    invoke-interface {v1, p1}, Lw3/b/a/i0/n$f;->d(I)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public e()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/n$b;->d:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
