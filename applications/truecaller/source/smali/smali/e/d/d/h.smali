.class public Le/d/d/h;
.super Le/d/d/g;
.source "SourceFile"


# instance fields
.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/d/d/g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/d/d/h;->h:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
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
    invoke-virtual {p0}, Le/d/d/h;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, " "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iput-object v0, p0, Le/d/d/h;->g:Ljava/lang/String;

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
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
    sget-object v0, Le/d/d/k;->b:Ljava/util/Set;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/d/d/h;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/d/d/h;->g:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/d/d/g;->d:Le/d/d/g$a;

    invoke-virtual {v0}, Le/d/d/g$a;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/d/p/b;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v2, p0, Le/d/d/g;->d:Le/d/d/g$a;

    invoke-virtual {v2}, Le/d/d/g$a;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    iget-object v1, p0, Le/d/d/h;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4
    iput-object v0, p0, Le/d/d/h;->g:Ljava/lang/String;

    return-object v1

    .line 5
    :cond_2
    new-instance v0, Le/d/d/p/b;

    const-string v1, "Reached end of buffer."

    invoke-direct {v0, v1}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_4
    iget-object v2, p0, Le/d/d/h;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9
    iput-object v0, p0, Le/d/d/h;->g:Ljava/lang/String;

    return-object v2

    :cond_5
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    iget-object v3, p0, Le/d/d/h;->g:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 12
    iput-object v2, p0, Le/d/d/h;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14
    :cond_7
    iput-object v2, p0, Le/d/d/h;->g:Ljava/lang/String;

    return-object v3

    :cond_8
    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_9

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_9
    iget-object v1, p0, Le/d/d/h;->g:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    iget-object v4, p0, Le/d/d/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iput-object v0, p0, Le/d/d/h;->g:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21
    :cond_a
    new-instance v0, Le/d/d/p/b;

    const-string v1, "Space exists at the beginning of the line"

    invoke-direct {v0, v1}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0"

    return-object v0
.end method

.method public h(Le/d/d/m;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/d/d/h;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/d/d/h;->h:Z

    :cond_0
    return-void
.end method

.method public i(Le/d/d/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/d/d/h;->t(Le/d/d/m;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Le/d/d/m;Ljava/lang/String;)V
    .locals 1

    const-string v0, "TYPE"

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Le/d/d/h;->t(Le/d/d/m;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(Le/d/d/m;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/d/d/p/b;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Le/d/d/g;->k(Le/d/d/m;Ljava/lang/String;)V
    :try_end_0
    .catch Le/d/d/p/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x2

    const-string v1, "="

    .line 2
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 3
    array-length v2, v1

    if-ne v2, v0, :cond_0

    const/4 p2, 0x0

    .line 4
    aget-object p2, v1, p2

    const/4 v0, 0x1

    aget-object v0, v1, v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Le/d/d/h;->t(Le/d/d/m;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 6
    :cond_0
    new-instance p1, Le/d/d/p/b;

    const-string v0, "Unknown params value: "

    invoke-static {v0, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/d/d/p/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Le/d/d/m;Ljava/lang/String;)V
    .locals 1

    const-string v0, "TYPE"

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Le/d/d/h;->t(Le/d/d/m;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, "\n"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/d/p/b;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/d/d/g;->r(Z)Z

    move-result p1

    return p1
.end method

.method public s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "ISO-8859-1"

    const-string v1, "UTF-8"

    .line 1
    invoke-static {p1, v0, v1}, Le/d/d/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final t(Le/d/d/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move-object v5, v2

    :goto_0
    if-ge v3, v0, :cond_7

    .line 2
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_3

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Le/d/d/h;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Le/d/d/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    :goto_1
    move-object v5, v2

    goto :goto_3

    :cond_0
    if-eqz v5, :cond_2

    .line 4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Le/d/d/h;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Le/d/d/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/16 v7, 0x2c

    if-ne v6, v7, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Le/d/d/h;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Le/d/d/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    if-eqz v5, :cond_9

    .line 9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_8

    goto :goto_4

    .line 10
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Le/d/d/h;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Le/d/d/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method
