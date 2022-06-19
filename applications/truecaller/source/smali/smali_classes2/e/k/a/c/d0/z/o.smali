.class public abstract Le/k/a/c/d0/z/o;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/z/o$b;,
        Le/k/a/c/d0/z/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/d0/z/e0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static p0(Ljava/lang/Class;)Le/k/a/c/d0/z/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/d0/z/o<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/File;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    const-class v0, Ljava/net/URL;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 3
    :cond_1
    const-class v0, Ljava/net/URI;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 4
    :cond_2
    const-class v0, Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 5
    :cond_3
    const-class v0, Le/k/a/c/i;

    if-ne p0, v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 6
    :cond_4
    const-class v0, Ljava/util/Currency;

    if-ne p0, v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 7
    :cond_5
    const-class v0, Ljava/util/regex/Pattern;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 8
    :cond_6
    const-class v0, Ljava/util/Locale;

    if-ne p0, v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 9
    :cond_7
    const-class v0, Ljava/nio/charset/Charset;

    if-ne p0, v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 10
    :cond_8
    const-class v0, Ljava/util/TimeZone;

    if-ne p0, v0, :cond_9

    const/16 v0, 0xa

    goto :goto_0

    .line 11
    :cond_9
    const-class v0, Ljava/net/InetAddress;

    if-ne p0, v0, :cond_a

    const/16 v0, 0xb

    goto :goto_0

    .line 12
    :cond_a
    const-class v0, Ljava/net/InetSocketAddress;

    if-ne p0, v0, :cond_b

    const/16 v0, 0xc

    .line 13
    :goto_0
    new-instance v1, Le/k/a/c/d0/z/o$a;

    invoke-direct {v1, p0, v0}, Le/k/a/c/d0/z/o$a;-><init>(Ljava/lang/Class;I)V

    return-object v1

    .line 14
    :cond_b
    const-class v0, Ljava/lang/StringBuilder;

    if-ne p0, v0, :cond_c

    .line 15
    new-instance p0, Le/k/a/c/d0/z/o$b;

    invoke-direct {p0}, Le/k/a/c/d0/z/o$b;-><init>()V

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->F1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 3
    sget-object v2, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-eq v0, v2, :cond_4

    .line 4
    sget-object v2, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v2, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Le/k/a/b/m;->o:Le/k/a/b/m;

    if-ne v0, v2, :cond_3

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/o;->n0(Ljava/lang/Object;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 10
    :cond_3
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1

    .line 11
    :cond_4
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 12
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1

    .line 13
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    :try_start_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/o;->m0(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v1, "not a valid textual representation"

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, ", problem: "

    .line 16
    invoke-static {v1, v3, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_7
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, p1, v2, v1}, Le/k/a/c/g;->i0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    throw p1

    .line 20
    :cond_8
    :goto_2
    invoke-virtual {p0}, Le/k/a/c/d0/z/o;->o()Le/k/a/c/m0/f;

    move-result-object p1

    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    sget-object v2, Le/k/a/c/c0/d;->j:Le/k/a/c/c0/d;

    invoke-virtual {p2, p1, v0, v2}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object p1

    .line 21
    sget-object v0, Le/k/a/c/c0/b;->a:Le/k/a/c/c0/b;

    if-eq p1, v0, :cond_b

    .line 22
    sget-object v0, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    if-ne p1, v0, :cond_9

    goto :goto_3

    .line 23
    :cond_9
    sget-object v0, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    if-ne p1, v0, :cond_a

    .line 24
    invoke-virtual {p0, p2}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 25
    :cond_a
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/o;->o0(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    return-object v1

    :cond_b
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->z()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "Cannot coerce empty String (\"\") to %s (but could if enabling coercion using `CoercionConfig`)"

    .line 27
    invoke-virtual {p2, p0, v0, p1}, Le/k/a/c/g;->a0(Le/k/a/c/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method

.method public abstract m0(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/k/a/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public n0(Ljava/lang/Object;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/k/a/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Don\'t know how to convert embedded Object of type %s into %s"

    .line 2
    invoke-virtual {p2, p0, p1, v0}, Le/k/a/c/g;->a0(Le/k/a/c/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->m:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public o0(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
