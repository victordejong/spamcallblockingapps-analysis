.class final Lu/i/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/i/t$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/i/t$a<",
        "Lu/g;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lu/i/f;->a:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1}, Lu/i/f;->c(Lu/g;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lu/i/t;)V
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1, p2}, Lu/i/f;->d(Lu/g;Lu/i/t;)V

    return-void
.end method

.method public c(Lu/g;)I
    .locals 1

    .line 1
    sget-object v0, Lu/i/g;->b:Lu/i/g$d;

    invoke-virtual {v0, p1}, Lu/i/e$f;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public d(Lu/g;Lu/i/t;)V
    .locals 1

    .line 1
    sget-object v0, Lu/i/g;->b:Lu/i/g$d;

    invoke-virtual {v0, p2, p1}, Lu/i/e$f;->h(Lu/i/t;Ljava/lang/Object;)V

    return-void
.end method

.method e(Lu/g;)[B
    .locals 3

    .line 1
    sget-object v0, Lu/i/g;->b:Lu/i/g$d;

    invoke-virtual {v0, p1}, Lu/i/g$d;->l(Lu/g;)I

    move-result v0

    .line 2
    invoke-static {v0}, Lu/i/e;->a(I)I

    move-result v1

    new-array v1, v1, [B

    .line 3
    invoke-static {v1}, Lu/i/t;->f([B)Lu/i/t;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lu/i/f;->h(Lu/g;ILu/i/t;)V

    return-object v1
.end method

.method f(Ljava/util/List;[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/g;",
            ">;[BI)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p2, p3}, Lu/i/t;->g([BI)Lu/i/t;

    move-result-object p2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    sget-object v2, Lu/i/g;->b:Lu/i/g$d;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lu/i/e$f;->h(Lu/i/t;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lu/i/t;->b()I

    move-result p1

    sub-int/2addr p1, p3

    return p1
.end method

.method public g(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/g;",
            ">;)[B"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lu/i/f;->a:[B

    return-object p1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/g;

    invoke-virtual {p0, p1}, Lu/i/f;->e(Lu/g;)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-array v1, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 5
    sget-object v5, Lu/i/g;->b:Lu/i/g$d;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu/g;

    invoke-virtual {v5, v6}, Lu/i/g$d;->l(Lu/g;)I

    move-result v5

    aput v5, v1, v3

    .line 6
    invoke-static {v5}, Lu/i/e;->a(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-array v3, v4, [B

    .line 8
    invoke-static {v3}, Lu/i/t;->f([B)Lu/i/t;

    move-result-object v4

    :goto_1
    if-ge v2, v0, :cond_3

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu/g;

    aget v6, v1, v2

    invoke-virtual {p0, v5, v6, v4}, Lu/i/f;->h(Lu/g;ILu/i/t;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method h(Lu/g;ILu/i/t;)V
    .locals 2

    .line 1
    sget-object v0, Lu/i/g;->b:Lu/i/g$d;

    iget v1, v0, Lu/i/e$c;->b:I

    invoke-virtual {p3, v1}, Lu/i/t;->l(I)V

    .line 2
    invoke-virtual {p3, p2}, Lu/i/t;->q(I)V

    .line 3
    invoke-virtual {v0, p3, p1}, Lu/i/g$d;->n(Lu/i/t;Lu/g;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Span"

    return-object v0
.end method
