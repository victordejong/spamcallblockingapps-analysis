.class public final Le/k/a/b/w/h;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/b/a0/n;


# direct methods
.method public constructor <init>(Le/k/a/b/a0/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    new-instance v0, Le/k/a/b/a0/n;

    invoke-direct {v0, p1}, Le/k/a/b/a0/n;-><init>(Le/k/a/b/a0/a;)V

    iput-object v0, p0, Le/k/a/b/w/h;->a:Le/k/a/b/a0/n;

    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Le/k/a/b/w/h;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 3

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Le/k/a/b/w/h;->a:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Le/k/a/b/a0/n;->a(Ljava/lang/String;II)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    .line 7
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p2, p0, Le/k/a/b/w/h;->a:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Le/k/a/b/a0/n;->a(Ljava/lang/String;II)V

    return-object p0
.end method

.method public append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/b/w/h;->write(I)V

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/b/w/h;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/b/w/h;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    return-object p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 4

    .line 3
    iget-object v0, p0, Le/k/a/b/w/h;->a:Le/k/a/b/a0/n;

    int-to-char p1, p1

    .line 4
    iget v1, v0, Le/k/a/b/a0/n;->c:I

    if-ltz v1, :cond_0

    const/16 v1, 0x10

    .line 5
    invoke-virtual {v0, v1}, Le/k/a/b/a0/n;->s(I)V

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Le/k/a/b/a0/n;->j:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Le/k/a/b/a0/n;->k:[C

    .line 8
    iget-object v1, v0, Le/k/a/b/a0/n;->h:[C

    .line 9
    iget v2, v0, Le/k/a/b/a0/n;->i:I

    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 10
    invoke-virtual {v0}, Le/k/a/b/a0/n;->j()V

    .line 11
    iget-object v1, v0, Le/k/a/b/a0/n;->h:[C

    .line 12
    :cond_1
    iget v2, v0, Le/k/a/b/a0/n;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Le/k/a/b/a0/n;->i:I

    aput-char p1, v1, v2

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .line 13
    iget-object v0, p0, Le/k/a/b/w/h;->a:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Le/k/a/b/a0/n;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .line 14
    iget-object v0, p0, Le/k/a/b/w/h;->a:Le/k/a/b/a0/n;

    invoke-virtual {v0, p1, p2, p3}, Le/k/a/b/a0/n;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public write([C)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/b/w/h;->a:Le/k/a/b/a0/n;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Le/k/a/b/a0/n;->b([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/k/a/b/w/h;->a:Le/k/a/b/a0/n;

    invoke-virtual {v0, p1, p2, p3}, Le/k/a/b/a0/n;->b([CII)V

    return-void
.end method
