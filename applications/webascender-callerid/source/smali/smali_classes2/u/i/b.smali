.class public final Lu/i/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/i/b$b;,
        Lu/i/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lu/i/b;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;
    .locals 3

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
    const-string v1, "Expected BEGIN_OBJECT"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "malformed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    :cond_1
    const-string v0, "Malformed"

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "%s reading %s from json"

    .line 3
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Lu/i/b$b;Lu/i/h;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/i/b$b<",
            "TT;>;",
            "Lu/i/h;",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lu/i/h;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lu/i/b$a;

    invoke-direct {v0, p1}, Lu/i/b$a;-><init>(Lu/i/h;)V

    invoke-interface {p0, v0}, Lu/i/b$b;->a(Lu/i/b$a;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lu/i/b;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Lu/i/b$b;Lu/i/h;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/i/b$b<",
            "TT;>;",
            "Lu/i/h;",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lu/i/h;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Lu/i/b$a;

    invoke-direct {v0, p1}, Lu/i/b$a;-><init>(Lu/i/h;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lu/i/b$a;->a()V

    .line 4
    invoke-virtual {v0}, Lu/i/b$a;->f()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lu/i/b$a;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, v0}, Lu/i/b$b;->a(Lu/i/b$a;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Lu/i/b$a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "List<"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lu/i/b;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Lu/i/b$b;Lu/i/h;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/i/b$b<",
            "TT;>;",
            "Lu/i/h;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {p0, p1, v0}, Lu/i/b;->b(Lu/i/b$b;Lu/i/h;Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static e(Lu/i/t$a;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/i/t$a<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    add-int/2addr v2, v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lu/i/t$a;->a(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static f(Lu/i/t$a;Ljava/lang/Object;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/i/t$a<",
            "TT;>;TT;)[B"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lu/i/t$a;->a(Ljava/lang/Object;)I

    move-result v0

    new-array v1, v0, [B

    .line 2
    invoke-static {v1}, Lu/i/t;->f([B)Lu/i/t;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-interface {p0, p1, v2}, Lu/i/t$a;->b(Ljava/lang/Object;Lu/i/t;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 4
    aget-byte v5, v1, v4

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v0

    :cond_1
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v5, p1

    const/4 p0, 0x2

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, p0

    const/4 p0, 0x3

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, p0

    const/4 p0, 0x4

    new-instance p1, Ljava/lang/String;

    sget-object v0, Lu/i/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    aput-object p1, v5, p0

    const-string p0, "Bug found using %s to write %s as json. Wrote %s/%s bytes: %s"

    .line 9
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 12
    throw p1
.end method

.method public static g(Lu/i/t$a;Ljava/util/List;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/i/t$a<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;[BI)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p3, 0x1

    const/16 p1, 0x5b

    .line 2
    aput-byte p1, p2, p3

    const/16 p1, 0x5d

    .line 3
    aput-byte p1, p2, p0

    const/4 p0, 0x2

    return p0

    .line 4
    :cond_0
    invoke-static {p2, p3}, Lu/i/t;->g([BI)Lu/i/t;

    move-result-object p2

    .line 5
    invoke-static {p0, p1, p2}, Lu/i/b;->h(Lu/i/t$a;Ljava/util/List;Lu/i/t;)V

    .line 6
    invoke-virtual {p2}, Lu/i/t;->b()I

    move-result p0

    sub-int/2addr p0, p3

    return p0
.end method

.method public static h(Lu/i/t$a;Ljava/util/List;Lu/i/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/i/t$a<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Lu/i/t;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x5b

    .line 1
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Lu/i/t$a;->b(Ljava/lang/Object;Lu/i/t;)V

    if-ge v2, v0, :cond_0

    const/16 v1, 0x2c

    .line 4
    invoke-virtual {p2, v1}, Lu/i/t;->l(I)V

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    .line 5
    invoke-virtual {p2, p0}, Lu/i/t;->l(I)V

    return-void
.end method

.method public static i(Lu/i/t$a;Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/i/t$a<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)[B"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [B

    fill-array-data p0, :array_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lu/i/b;->e(Lu/i/t$a;Ljava/util/List;)I

    move-result v0

    new-array v0, v0, [B

    .line 3
    invoke-static {v0}, Lu/i/t;->f([B)Lu/i/t;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lu/i/b;->h(Lu/i/t$a;Ljava/util/List;Lu/i/t;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x5dt
    .end array-data
.end method
