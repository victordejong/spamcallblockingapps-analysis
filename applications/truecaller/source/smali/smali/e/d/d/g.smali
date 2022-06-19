.class public Le/d/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/d/d/g$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Le/d/d/g$a;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Le/d/d/a;->a:Ljava/util/Map;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/d/d/g;->e:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/d/d/g;->f:Ljava/util/Set;

    const-string v0, "ISO-8859-1"

    .line 6
    iput-object v0, p0, Le/d/d/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/d/p/b;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    :goto_0
    iget-object v0, p0, Le/d/d/g;->d:Le/d/d/g$a;

    invoke-virtual {v0}, Le/d/d/g$a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ":"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Le/d/d/g;->b()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Le/d/d/g;->c()Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 10
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Le/d/d/p/b;

    const-string v0, "File ended during parsing BASE64 binary"

    invoke-direct {p1, v0}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/d/d/j;->b:Ljava/util/Set;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/d/d/g;->d:Le/d/d/g$a;

    invoke-virtual {v0}, Le/d/d/g$a;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/d/p/b;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/d/d/g;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Le/d/d/p/b;

    const-string v1, "Reached end of buffer."

    invoke-direct {v0, v1}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/d/p/b;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    invoke-virtual {p0}, Le/d/d/g;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 10
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 11
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    new-instance p1, Le/d/d/p/b;

    const-string v0, "File ended during parsing a Quoted-Printable String"

    invoke-direct {p1, v0}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object p1
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "2.1"

    return-object v0
.end method

.method public h(Le/d/d/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/d/d/p/b;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/d/d/m;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/e;

    .line 4
    invoke-interface {v1, p1}, Le/d/d/e;->a(Le/d/d/m;)V

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Le/d/d/p/a;

    const-string v0, "AGENT Property is not supported now."

    invoke-direct {p1, v0}, Le/d/d/p/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Le/d/d/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Le/d/d/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Le/d/d/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/d/d/g;->l(Le/d/d/m;Ljava/lang/String;)V

    return-void
.end method

.method public k(Le/d/d/m;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/d/d/p/b;
        }
    .end annotation

    const-string v0, "="

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 2
    array-length v0, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 3
    aget-object v0, p2, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 4
    aget-object p2, p2, v3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v4, "TYPE"

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Le/d/d/g;->l(Le/d/d/m;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const-string v4, "VALUE"

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "X-"

    if-eqz v5, :cond_2

    .line 8
    sget-object v0, Le/d/d/j;->d:Ljava/util/Set;

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/d/d/g;->f:Ljava/util/Set;

    .line 11
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Le/d/d/g;->f:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array v0, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Le/d/d/g;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p2, v0, v3

    const-string v1, "The value unsupported by TYPE of %s: "

    .line 14
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    :cond_1
    invoke-virtual {p1, v4, p2}, Le/d/d/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string v4, "ENCODING"

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "\""

    if-eqz v5, :cond_5

    .line 17
    sget-object v0, Le/d/d/j;->e:Ljava/util/Set;

    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    new-instance p1, Le/d/d/p/b;

    const-string v0, "Unknown encoding \""

    invoke-static {v0, p2, v7}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    :goto_0
    invoke-virtual {p1, v4, p2}, Le/d/d/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Le/d/d/g;->c:Ljava/lang/String;

    goto/16 :goto_3

    :cond_5
    const-string v4, "CHARSET"

    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 24
    invoke-virtual {p1, v4, p2}, Le/d/d/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string v4, "LANGUAGE"

    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v0, "-"

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 27
    array-length v5, v0

    const-string v6, "Invalid Language: \""

    if-ne v5, v1, :cond_b

    .line 28
    aget-object v1, v0, v2

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move v8, v2

    :goto_1
    if-ge v8, v5, :cond_8

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p0, v9}, Le/d/d/g;->m(C)Z

    move-result v9

    if-eqz v9, :cond_7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 31
    :cond_7
    new-instance p1, Le/d/d/p/b;

    invoke-static {v6, p2, v7}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_8
    aget-object v0, v0, v3

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_a

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Le/d/d/g;->m(C)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 35
    :cond_9
    new-instance p1, Le/d/d/p/b;

    invoke-static {v6, p2, v7}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_a
    invoke-virtual {p1, v4, p2}, Le/d/d/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 37
    :cond_b
    new-instance p1, Le/d/d/p/b;

    invoke-static {v6, p2, v7}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_c
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 39
    invoke-virtual {p0, p1, v0, p2}, Le/d/d/g;->i(Le/d/d/m;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :cond_d
    new-instance p1, Le/d/d/p/b;

    const-string p2, "Unknown type \""

    invoke-static {p2, v0, v7}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_e
    aget-object p2, p2, v2

    invoke-virtual {p0, p1, p2}, Le/d/d/g;->j(Le/d/d/m;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public l(Le/d/d/m;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Le/d/d/j;->c:Ljava/util/Set;

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/d/d/g;->e:Ljava/util/Set;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Le/d/d/g;->e:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0}, Le/d/d/g;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "TYPE unsupported by %s: "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const-string v0, "TYPE"

    .line 7
    invoke-virtual {p1, v0, p2}, Le/d/d/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public o(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/d/p/b;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Le/d/d/g;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2
    new-instance p1, Le/d/d/g$a;

    invoke-direct {p1, v0}, Le/d/d/g$a;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Le/d/d/g;->d:Le/d/d/g$a;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    iget-object p1, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/d/e;

    .line 5
    invoke-interface {v0}, Le/d/d/e;->c()V

    goto :goto_0

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "8BIT"

    .line 8
    iput-object p1, p0, Le/d/d/g;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Le/d/d/g;->r(Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_4

    .line 10
    :cond_1
    iget-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/e;

    .line 11
    invoke-interface {v1}, Le/d/d/e;->e()V

    goto :goto_1

    .line 12
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Le/d/d/g;->p()Z

    move-result p1

    :catch_0
    :goto_2
    if-nez p1, :cond_3

    .line 13
    invoke-virtual {p0}, Le/d/d/g;->p()Z

    move-result p1
    :try_end_1
    .catch Le/d/d/p/c; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/d/e;

    .line 15
    invoke-interface {v0}, Le/d/d/e;->b()V

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    :goto_4
    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/d/e;

    .line 17
    invoke-interface {v0}, Le/d/d/e;->d()V

    goto :goto_5

    :cond_5
    return-void

    .line 18
    :goto_6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_6
.end method

.method public p()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/d/p/b;
        }
    .end annotation

    const-string v0, "8BIT"

    .line 1
    iput-object v0, p0, Le/d/d/g;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/d/d/g;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Le/d/d/m;

    invoke-direct {v2}, Le/d/d/m;-><init>()V

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Le/d/d/p/c;

    invoke-direct {v0}, Le/d/d/p/c;-><init>()V

    throw v0

    :cond_1
    :goto_0
    move v5, v4

    move v6, v5

    :goto_1
    if-ge v4, v3, :cond_23

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const-string v8, ""

    const/16 v9, 0x3b

    const/16 v10, 0x3a

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v5, :cond_7

    const-string v13, "2.1"

    const/16 v14, 0x22

    if-eq v5, v12, :cond_3

    if-eq v5, v11, :cond_2

    goto/16 :goto_14

    :cond_2
    if-ne v7, v14, :cond_22

    .line 8
    invoke-virtual {p0}, Le/d/d/g;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto/16 :goto_13

    :cond_3
    if-ne v7, v14, :cond_4

    .line 9
    invoke-virtual {p0}, Le/d/d/g;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move v5, v11

    goto/16 :goto_14

    :cond_4
    if-ne v7, v9, :cond_5

    .line 10
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Le/d/d/g;->k(Le/d/d/m;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_5
    if-ne v7, v10, :cond_22

    .line 11
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Le/d/d/g;->k(Le/d/d/m;Ljava/lang/String;)V

    sub-int/2addr v3, v12

    if-ge v4, v3, :cond_6

    add-int/2addr v4, v12

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 13
    :cond_6
    iput-object v8, v2, Le/d/d/m;->d:Ljava/lang/String;

    goto :goto_2

    :cond_7
    if-ne v7, v10, :cond_1e

    .line 14
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v2, v5}, Le/d/d/m;->b(Ljava/lang/String;)V

    sub-int/2addr v3, v12

    if-ge v4, v3, :cond_8

    add-int/2addr v4, v12

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 17
    :cond_8
    iput-object v8, v2, Le/d/d/m;->d:Ljava/lang/String;

    .line 18
    :goto_2
    iget-object v1, v2, Le/d/d/m;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v3, v2, Le/d/d/m;->d:Ljava/lang/String;

    const-string v4, "BEGIN"

    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "VCARD"

    if-eqz v4, :cond_b

    .line 22
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    iget-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/e;

    .line 24
    invoke-interface {v1}, Le/d/d/e;->e()V

    goto :goto_3

    .line 25
    :cond_9
    invoke-virtual {p0}, Le/d/d/g;->q()V

    .line 26
    iget-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/e;

    .line 27
    invoke-interface {v1}, Le/d/d/e;->b()V

    goto :goto_4

    .line 28
    :cond_a
    new-instance v0, Le/d/d/p/b;

    const-string v1, "Unknown BEGIN type: "

    invoke-static {v1, v3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v4, "END"

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v12

    .line 31
    :cond_c
    new-instance v0, Le/d/d/p/b;

    const-string v1, "Unknown END type: "

    invoke-static {v1, v3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string v3, "AGENT"

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 33
    invoke-virtual {p0, v2}, Le/d/d/g;->h(Le/d/d/m;)V

    goto/16 :goto_11

    .line 34
    :cond_e
    invoke-virtual {p0}, Le/d/d/g;->b()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "X-"

    if-nez v3, :cond_f

    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Le/d/d/g;->e:Ljava/util/Set;

    .line 36
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 37
    iget-object v3, p0, Le/d/d/g;->e:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_f
    iget-object v3, v2, Le/d/d/m;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 40
    iget-object v5, v2, Le/d/d/m;->d:Ljava/lang/String;

    .line 41
    iget-object v6, v2, Le/d/d/m;->c:Ljava/util/Map;

    const-string v7, "CHARSET"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    const/4 v7, 0x0

    if-eqz v6, :cond_10

    .line 42
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_5

    :cond_10
    move-object v6, v7

    .line 43
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v6, "UTF-8"

    :cond_11
    const-string v8, "ADR"

    .line 44
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "QUOTED-PRINTABLE"

    const-string v10, "ISO-8859-1"

    if-nez v8, :cond_1a

    const-string v8, "ORG"

    .line 45
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "N"

    .line 46
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_d

    .line 47
    :cond_12
    iget-object v3, p0, Le/d/d/g;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 49
    invoke-virtual {p0, v5}, Le/d/d/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1, v10, v6}, Le/d/d/o;->f(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    iput-object v0, v2, Le/d/d/m;->d:Ljava/lang/String;

    new-array v0, v12, [Ljava/lang/String;

    aput-object v3, v0, v1

    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Le/d/d/m;->e:Ljava/util/List;

    .line 53
    iget-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/e;

    .line 54
    invoke-interface {v1, v2}, Le/d/d/e;->a(Le/d/d/m;)V

    goto :goto_6

    :cond_13
    const-string v8, "BASE64"

    .line 55
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "B"

    .line 56
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    goto/16 :goto_9

    :cond_14
    const-string v1, "7BIT"

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-array v0, v11, [Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Le/d/d/g;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 60
    invoke-virtual {p0}, Le/d/d/g;->g()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "The encoding \"%s\" is unsupported by vCard %s"

    .line 61
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    :cond_15
    invoke-virtual {p0}, Le/d/d/g;->f()I

    move-result v0

    if-nez v0, :cond_18

    .line 63
    :goto_7
    iget-object v0, p0, Le/d/d/g;->d:Le/d/d/g$a;

    invoke-virtual {v0}, Le/d/d/g$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_17

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "END:VCARD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 67
    invoke-virtual {p0}, Le/d/d/g;->c()Ljava/lang/String;

    if-nez v7, :cond_16

    .line 68
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v7, v1

    .line 69
    :cond_16
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_17
    if-eqz v7, :cond_18

    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p0, v5}, Le/d/d/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1, v10, v6}, Le/d/d/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iput-object v0, v2, Le/d/d/m;->e:Ljava/util/List;

    .line 76
    iget-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/e;

    .line 77
    invoke-interface {v1, v2}, Le/d/d/e;->a(Le/d/d/m;)V

    goto :goto_8

    .line 78
    :cond_19
    :goto_9
    :try_start_0
    invoke-virtual {p0, v5}, Le/d/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 79
    iput-object v0, v2, Le/d/d/m;->f:[B

    .line 80
    iget-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/d/d/e;

    .line 81
    invoke-interface {v3, v2}, Le/d/d/e;->a(Le/d/d/m;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 82
    :catch_0
    new-instance v0, Lcom/truecaller/log/UnmutedException$f;

    const-string v3, "Exception during parsing VCards BASE64 data!\npropertyName:  "

    const-string v4, "\ncurrentEncoding  "

    invoke-static {v3, v1, v4}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/d/d/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nvCardVersion:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Le/d/d/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 85
    iget-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/e;

    .line 86
    invoke-interface {v1, v2}, Le/d/d/e;->a(Le/d/d/m;)V

    goto :goto_b

    .line 87
    :catch_1
    iget-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/e;

    .line 88
    invoke-interface {v1, v2}, Le/d/d/e;->a(Le/d/d/m;)V

    goto :goto_c

    .line 89
    :cond_1a
    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v1, p0, Le/d/d/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 91
    invoke-virtual {p0, v5}, Le/d/d/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iput-object v1, v2, Le/d/d/m;->d:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Le/d/d/g;->f()I

    move-result v3

    invoke-static {v1, v3}, Le/d/d/o;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 94
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 95
    invoke-static {v3, v4, v10, v6}, Le/d/d/o;->f(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 97
    :cond_1b
    invoke-virtual {p0}, Le/d/d/g;->f()I

    move-result v1

    invoke-static {v5, v1}, Le/d/d/o;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 98
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    invoke-static {v3, v10, v6}, Le/d/d/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 100
    :cond_1c
    iput-object v0, v2, Le/d/d/m;->e:Ljava/util/List;

    .line 101
    iget-object v0, p0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/d/d/e;

    .line 102
    invoke-interface {v1, v2}, Le/d/d/e;->a(Le/d/d/m;)V

    goto :goto_10

    :cond_1d
    :goto_11
    const/4 v0, 0x0

    return v0

    :cond_1e
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_21

    .line 103
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_12

    .line 105
    :cond_1f
    iget-object v7, v2, Le/d/d/m;->b:Ljava/util/List;

    if-nez v7, :cond_20

    .line 106
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Le/d/d/m;->b:Ljava/util/List;

    .line 107
    :cond_20
    iget-object v7, v2, Le/d/d/m;->b:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    add-int/lit8 v6, v4, 0x1

    goto :goto_14

    :cond_21
    if-ne v7, v9, :cond_22

    .line 108
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v2, v5}, Le/d/d/m;->b(Ljava/lang/String;)V

    add-int/lit8 v6, v4, 0x1

    :goto_13
    move v5, v12

    :cond_22
    :goto_14
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 110
    :cond_23
    new-instance v0, Le/d/d/p/d;

    const-string v2, "Invalid line: \""

    const-string v3, "\""

    invoke-static {v2, v1, v3}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/d/d/p/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/d/p/b;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/d/d/g;->p()Z

    move-result v0
    :try_end_0
    .catch Le/d/d/p/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :goto_0
    if-nez v0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Le/d/d/g;->p()Z

    move-result v0
    :try_end_1
    .catch Le/d/d/p/c; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/d/p/b;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Le/d/d/g;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ":"

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 4
    array-length v4, v2

    if-ne v4, v3, :cond_2

    .line 5
    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BEGIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v2, v2, v1

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    if-eqz p1, :cond_4

    if-eqz p1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Le/d/d/p/b;

    const-string v0, "Reached where must not be reached."

    invoke-direct {p1, v0}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Le/d/d/p/b;

    const-string v1, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    const-string v2, "\" came)"

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method
