.class public Lw3/b/a/i0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw3/b/a/i0/l;

.field public final b:Lw3/b/a/i0/j;

.field public final c:Ljava/util/Locale;

.field public final d:Z

.field public final e:Lw3/b/a/a;

.field public final f:Lw3/b/a/g;

.field public final g:Ljava/lang/Integer;

.field public final h:I


# direct methods
.method public constructor <init>(Lw3/b/a/i0/l;Lw3/b/a/i0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/b;->a:Lw3/b/a/i0/l;

    .line 3
    iput-object p2, p0, Lw3/b/a/i0/b;->b:Lw3/b/a/i0/j;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lw3/b/a/i0/b;->c:Ljava/util/Locale;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lw3/b/a/i0/b;->d:Z

    .line 6
    iput-object p1, p0, Lw3/b/a/i0/b;->e:Lw3/b/a/a;

    .line 7
    iput-object p1, p0, Lw3/b/a/i0/b;->f:Lw3/b/a/g;

    .line 8
    iput-object p1, p0, Lw3/b/a/i0/b;->g:Ljava/lang/Integer;

    const/16 p1, 0x7d0

    .line 9
    iput p1, p0, Lw3/b/a/i0/b;->h:I

    return-void
.end method

.method public constructor <init>(Lw3/b/a/i0/l;Lw3/b/a/i0/j;Ljava/util/Locale;ZLw3/b/a/a;Lw3/b/a/g;Ljava/lang/Integer;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lw3/b/a/i0/b;->a:Lw3/b/a/i0/l;

    .line 12
    iput-object p2, p0, Lw3/b/a/i0/b;->b:Lw3/b/a/i0/j;

    .line 13
    iput-object p3, p0, Lw3/b/a/i0/b;->c:Ljava/util/Locale;

    .line 14
    iput-boolean p4, p0, Lw3/b/a/i0/b;->d:Z

    .line 15
    iput-object p5, p0, Lw3/b/a/i0/b;->e:Lw3/b/a/a;

    .line 16
    iput-object p6, p0, Lw3/b/a/i0/b;->f:Lw3/b/a/g;

    .line 17
    iput-object p7, p0, Lw3/b/a/i0/b;->g:Ljava/lang/Integer;

    .line 18
    iput p8, p0, Lw3/b/a/i0/b;->h:I

    return-void
.end method


# virtual methods
.method public a()Lw3/b/a/i0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/b;->b:Lw3/b/a/i0/j;

    invoke-static {v0}, Lw3/b/a/i0/k;->d(Lw3/b/a/i0/j;)Lw3/b/a/i0/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lw3/b/a/b;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lw3/b/a/i0/b;->i()Lw3/b/a/i0/j;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lw3/b/a/i0/b;->k(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v1

    .line 3
    new-instance v9, Lw3/b/a/i0/e;

    iget-object v6, p0, Lw3/b/a/i0/b;->c:Ljava/util/Locale;

    iget-object v7, p0, Lw3/b/a/i0/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lw3/b/a/i0/b;->h:I

    const-wide/16 v3, 0x0

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lw3/b/a/i0/e;-><init>(JLw3/b/a/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v9, p1, v2}, Lw3/b/a/i0/j;->c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_5

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v9, v0, p1}, Lw3/b/a/i0/e;->b(ZLjava/lang/CharSequence;)J

    move-result-wide v2

    .line 7
    iget-boolean p1, p0, Lw3/b/a/i0/b;->d:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, v9, Lw3/b/a/i0/e;->h:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 10
    invoke-static {p1}, Lw3/b/a/g;->f(I)Lw3/b/a/g;

    move-result-object p1

    .line 11
    invoke-virtual {v1, p1}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, v9, Lw3/b/a/i0/e;->g:Lw3/b/a/g;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {v1, p1}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object v1

    .line 14
    :cond_1
    :goto_0
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1, v2, v3, v1}, Lw3/b/a/b;-><init>(JLw3/b/a/a;)V

    .line 15
    iget-object v0, p0, Lw3/b/a/i0/b;->f:Lw3/b/a/g;

    if-eqz v0, :cond_3

    .line 16
    iget-object v1, p1, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 17
    invoke-virtual {v1, v0}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v0

    .line 19
    iget-object v1, p1, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance v1, Lw3/b/a/b;

    .line 21
    iget-wide v2, p1, Lw3/b/a/e0/e;->a:J

    .line 22
    invoke-direct {v1, v2, v3, v0}, Lw3/b/a/b;-><init>(JLw3/b/a/a;)V

    move-object p1, v1

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    not-int v0, v0

    .line 23
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lw3/b/a/i0/h;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(Ljava/lang/String;)Lw3/b/a/q;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lw3/b/a/i0/b;->i()Lw3/b/a/i0/j;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lw3/b/a/i0/b;->k(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object v1

    .line 3
    new-instance v9, Lw3/b/a/i0/e;

    iget-object v6, p0, Lw3/b/a/i0/b;->c:Ljava/util/Locale;

    iget-object v7, p0, Lw3/b/a/i0/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lw3/b/a/i0/b;->h:I

    const-wide/16 v3, 0x0

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lw3/b/a/i0/e;-><init>(JLw3/b/a/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v9, p1, v2}, Lw3/b/a/i0/j;->c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v9, v0, p1}, Lw3/b/a/i0/e;->b(ZLjava/lang/CharSequence;)J

    move-result-wide v2

    .line 7
    iget-object p1, v9, Lw3/b/a/i0/e;->h:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    invoke-static {p1}, Lw3/b/a/g;->f(I)Lw3/b/a/g;

    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, v9, Lw3/b/a/i0/e;->g:Lw3/b/a/g;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {v1, p1}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object v1

    .line 13
    :cond_1
    :goto_0
    new-instance p1, Lw3/b/a/q;

    invoke-direct {p1, v2, v3, v1}, Lw3/b/a/q;-><init>(JLw3/b/a/a;)V

    return-object p1

    :cond_2
    not-int v0, v0

    .line 14
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lw3/b/a/i0/h;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d(Ljava/lang/String;)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lw3/b/a/i0/b;->i()Lw3/b/a/i0/j;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lw3/b/a/i0/b;->e:Lw3/b/a/a;

    invoke-virtual {p0, v1}, Lw3/b/a/i0/b;->k(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v5

    .line 3
    new-instance v1, Lw3/b/a/i0/e;

    iget-object v6, p0, Lw3/b/a/i0/b;->c:Ljava/util/Locale;

    iget-object v7, p0, Lw3/b/a/i0/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lw3/b/a/i0/b;->h:I

    const-wide/16 v3, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lw3/b/a/i0/e;-><init>(JLw3/b/a/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lw3/b/a/i0/j;->c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v1, v0, p1}, Lw3/b/a/i0/e;->b(ZLjava/lang/CharSequence;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    not-int v0, v0

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lw3/b/a/i0/h;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public e(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw3/b/a/i0/b;->j()Lw3/b/a/i0/l;

    move-result-object v1

    invoke-interface {v1}, Lw3/b/a/i0/l;->e()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, v1}, Lw3/b/a/i0/b;->h(Ljava/lang/Appendable;JLw3/b/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Lw3/b/a/z;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw3/b/a/i0/b;->j()Lw3/b/a/i0/l;

    move-result-object v1

    invoke-interface {v1}, Lw3/b/a/i0/l;->e()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lw3/b/a/e;->c(Lw3/b/a/z;)J

    move-result-wide v1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lw3/b/a/z;->l()Lw3/b/a/a;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v1, v2, p1}, Lw3/b/a/i0/b;->h(Ljava/lang/Appendable;JLw3/b/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Lw3/b/a/b0;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw3/b/a/i0/b;->j()Lw3/b/a/i0/l;

    move-result-object v1

    invoke-interface {v1}, Lw3/b/a/i0/l;->e()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lw3/b/a/i0/b;->j()Lw3/b/a/i0/l;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lw3/b/a/i0/b;->c:Ljava/util/Locale;

    invoke-interface {v1, v0, p1, v2}, Lw3/b/a/i0/l;->d(Ljava/lang/Appendable;Lw3/b/a/b0;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/Appendable;JLw3/b/a/a;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v1, p2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/i0/b;->j()Lw3/b/a/i0/l;

    move-result-object v3

    move-object/from16 v4, p4

    .line 2
    invoke-virtual {p0, v4}, Lw3/b/a/i0/b;->k(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lw3/b/a/a;->s()Lw3/b/a/g;

    move-result-object v5

    .line 4
    invoke-virtual {v5, v1, v2}, Lw3/b/a/g;->m(J)I

    move-result v6

    int-to-long v7, v6

    add-long v9, v1, v7

    xor-long v11, v1, v9

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    xor-long/2addr v7, v1

    cmp-long v7, v7, v13

    if-ltz v7, :cond_0

    .line 5
    sget-object v5, Lw3/b/a/g;->b:Lw3/b/a/g;

    const/4 v6, 0x0

    move-wide v9, v1

    :cond_0
    move-object v7, v5

    .line 6
    invoke-virtual {v4}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object v5

    iget-object v8, v0, Lw3/b/a/i0/b;->c:Ljava/util/Locale;

    move-object v1, v3

    move-object/from16 v2, p1

    move-wide v3, v9

    invoke-interface/range {v1 .. v8}, Lw3/b/a/i0/l;->f(Ljava/lang/Appendable;JLw3/b/a/a;ILw3/b/a/g;Ljava/util/Locale;)V

    return-void
.end method

.method public final i()Lw3/b/a/i0/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/b;->b:Lw3/b/a/i0/j;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Lw3/b/a/i0/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/b;->a:Lw3/b/a/i0/l;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Lw3/b/a/a;)Lw3/b/a/a;
    .locals 1

    .line 1
    invoke-static {p1}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lw3/b/a/i0/b;->e:Lw3/b/a/a;

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/i0/b;->f:Lw3/b/a/g;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public l(Lw3/b/a/a;)Lw3/b/a/i0/b;
    .locals 10

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/b;->e:Lw3/b/a/a;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/i0/b;

    iget-object v2, p0, Lw3/b/a/i0/b;->a:Lw3/b/a/i0/l;

    iget-object v3, p0, Lw3/b/a/i0/b;->b:Lw3/b/a/i0/j;

    iget-object v4, p0, Lw3/b/a/i0/b;->c:Ljava/util/Locale;

    iget-boolean v5, p0, Lw3/b/a/i0/b;->d:Z

    iget-object v7, p0, Lw3/b/a/i0/b;->f:Lw3/b/a/g;

    iget-object v8, p0, Lw3/b/a/i0/b;->g:Ljava/lang/Integer;

    iget v9, p0, Lw3/b/a/i0/b;->h:I

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Lw3/b/a/i0/b;-><init>(Lw3/b/a/i0/l;Lw3/b/a/i0/j;Ljava/util/Locale;ZLw3/b/a/a;Lw3/b/a/g;Ljava/lang/Integer;I)V

    return-object v0
.end method

.method public m()Lw3/b/a/i0/b;
    .locals 10

    .line 1
    sget-object v6, Lw3/b/a/g;->b:Lw3/b/a/g;

    .line 2
    iget-object v0, p0, Lw3/b/a/i0/b;->f:Lw3/b/a/g;

    if-ne v0, v6, :cond_0

    move-object v9, p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v9, Lw3/b/a/i0/b;

    iget-object v1, p0, Lw3/b/a/i0/b;->a:Lw3/b/a/i0/l;

    iget-object v2, p0, Lw3/b/a/i0/b;->b:Lw3/b/a/i0/j;

    iget-object v3, p0, Lw3/b/a/i0/b;->c:Ljava/util/Locale;

    const/4 v4, 0x0

    iget-object v5, p0, Lw3/b/a/i0/b;->e:Lw3/b/a/a;

    iget-object v7, p0, Lw3/b/a/i0/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lw3/b/a/i0/b;->h:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lw3/b/a/i0/b;-><init>(Lw3/b/a/i0/l;Lw3/b/a/i0/j;Ljava/util/Locale;ZLw3/b/a/a;Lw3/b/a/g;Ljava/lang/Integer;I)V

    :goto_0
    return-object v9
.end method
