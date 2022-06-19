.class public final Lu/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lu/i/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lu/i/f;

    invoke-direct {v0}, Lu/i/f;-><init>()V

    iput-object v0, p0, Lu/i/d;->a:Lu/i/f;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Malformed"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move-object v0, v1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "%s reading %s from proto3"

    .line 3
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Lu/i/h;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/i/h;",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu/i/h;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lu/i/g;->b:Lu/i/g$d;

    invoke-virtual {v0, p0}, Lu/i/g$d;->j(Lu/i/h;)Lu/g;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Span"

    .line 4
    invoke-static {p1, p0}, Lu/i/d;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Lu/i/h;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/i/h;",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu/i/h;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lu/i/h;->c()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 3
    sget-object v2, Lu/i/g;->b:Lu/i/g$d;

    invoke-virtual {v2, p0}, Lu/i/g$d;->j(Lu/i/h;)Lu/g;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "List<Span>"

    .line 5
    invoke-static {p1, p0}, Lu/i/d;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Lu/i/h;)Lu/g;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lu/i/g;->b:Lu/i/g$d;

    invoke-virtual {v0, p0}, Lu/i/g$d;->j(Lu/i/h;)Lu/g;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Span"

    .line 2
    invoke-static {v0, p0}, Lu/i/d;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public e(Lu/g;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i/d;->a:Lu/i/f;

    invoke-virtual {v0, p1}, Lu/i/f;->c(Lu/g;)I

    move-result p1

    return p1
.end method

.method public f(Lu/g;)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i/d;->a:Lu/i/f;

    invoke-virtual {v0, p1}, Lu/i/f;->e(Lu/g;)[B

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/List;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/g;",
            ">;[BI)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/d;->a:Lu/i/f;

    invoke-virtual {v0, p1, p2, p3}, Lu/i/f;->f(Ljava/util/List;[BI)I

    move-result p1

    return p1
.end method

.method public h(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/g;",
            ">;)[B"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/d;->a:Lu/i/f;

    invoke-virtual {v0, p1}, Lu/i/f;->g(Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method
