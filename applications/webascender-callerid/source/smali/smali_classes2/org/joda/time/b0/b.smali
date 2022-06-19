.class public Lorg/joda/time/b0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/joda/time/b0/n;

.field private final b:Lorg/joda/time/b0/l;

.field private final c:Ljava/util/Locale;

.field private final d:Z

.field private final e:Lorg/joda/time/a;

.field private final f:Lorg/joda/time/f;

.field private final g:Ljava/lang/Integer;

.field private final h:I


# direct methods
.method constructor <init>(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/b0/b;->a:Lorg/joda/time/b0/n;

    .line 3
    iput-object p2, p0, Lorg/joda/time/b0/b;->b:Lorg/joda/time/b0/l;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/joda/time/b0/b;->c:Ljava/util/Locale;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lorg/joda/time/b0/b;->d:Z

    .line 6
    iput-object p1, p0, Lorg/joda/time/b0/b;->e:Lorg/joda/time/a;

    .line 7
    iput-object p1, p0, Lorg/joda/time/b0/b;->f:Lorg/joda/time/f;

    .line 8
    iput-object p1, p0, Lorg/joda/time/b0/b;->g:Ljava/lang/Integer;

    const/16 p1, 0x7d0

    .line 9
    iput p1, p0, Lorg/joda/time/b0/b;->h:I

    return-void
.end method

.method private constructor <init>(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;Ljava/util/Locale;ZLorg/joda/time/a;Lorg/joda/time/f;Ljava/lang/Integer;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/joda/time/b0/b;->a:Lorg/joda/time/b0/n;

    .line 12
    iput-object p2, p0, Lorg/joda/time/b0/b;->b:Lorg/joda/time/b0/l;

    .line 13
    iput-object p3, p0, Lorg/joda/time/b0/b;->c:Ljava/util/Locale;

    .line 14
    iput-boolean p4, p0, Lorg/joda/time/b0/b;->d:Z

    .line 15
    iput-object p5, p0, Lorg/joda/time/b0/b;->e:Lorg/joda/time/a;

    .line 16
    iput-object p6, p0, Lorg/joda/time/b0/b;->f:Lorg/joda/time/f;

    .line 17
    iput-object p7, p0, Lorg/joda/time/b0/b;->g:Ljava/lang/Integer;

    .line 18
    iput p8, p0, Lorg/joda/time/b0/b;->h:I

    return-void
.end method

.method private j(Ljava/lang/Appendable;JLorg/joda/time/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Lorg/joda/time/b0/b;->o()Lorg/joda/time/b0/n;

    move-result-object v3

    move-object/from16 v4, p4

    .line 2
    invoke-direct {v0, v4}, Lorg/joda/time/b0/b;->p(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lorg/joda/time/a;->o()Lorg/joda/time/f;

    move-result-object v5

    .line 4
    invoke-virtual {v5, v1, v2}, Lorg/joda/time/f;->s(J)I

    move-result v6

    int-to-long v7, v6

    add-long v9, v1, v7

    xor-long v11, v1, v9

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-gez v15, :cond_0

    xor-long/2addr v7, v1

    cmp-long v11, v7, v13

    if-ltz v11, :cond_0

    .line 5
    sget-object v5, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    const/4 v6, 0x0

    move-wide v9, v1

    :cond_0
    move-object v7, v5

    .line 6
    invoke-virtual {v4}, Lorg/joda/time/a;->M()Lorg/joda/time/a;

    move-result-object v5

    iget-object v8, v0, Lorg/joda/time/b0/b;->c:Ljava/util/Locale;

    move-object v1, v3

    move-object/from16 v2, p1

    move-wide v3, v9

    invoke-interface/range {v1 .. v8}, Lorg/joda/time/b0/n;->printTo(Ljava/lang/Appendable;JLorg/joda/time/a;ILorg/joda/time/f;Ljava/util/Locale;)V

    return-void
.end method

.method private n()Lorg/joda/time/b0/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/b;->b:Lorg/joda/time/b0/l;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o()Lorg/joda/time/b0/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/b;->a:Lorg/joda/time/b0/n;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private p(Lorg/joda/time/a;)Lorg/joda/time/a;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/joda/time/e;->c(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/joda/time/b0/b;->e:Lorg/joda/time/a;

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/b0/b;->f:Lorg/joda/time/f;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lorg/joda/time/a;->N(Lorg/joda/time/f;)Lorg/joda/time/a;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public a()Lorg/joda/time/b0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/b;->b:Lorg/joda/time/b0/l;

    invoke-static {v0}, Lorg/joda/time/b0/m;->b(Lorg/joda/time/b0/l;)Lorg/joda/time/b0/d;

    move-result-object v0

    return-object v0
.end method

.method b()Lorg/joda/time/b0/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/b;->b:Lorg/joda/time/b0/l;

    return-object v0
.end method

.method c()Lorg/joda/time/b0/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/b;->a:Lorg/joda/time/b0/n;

    return-object v0
.end method

.method public d()Lorg/joda/time/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/b;->f:Lorg/joda/time/f;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lorg/joda/time/b;
    .locals 10

    .line 1
    invoke-direct {p0}, Lorg/joda/time/b0/b;->n()Lorg/joda/time/b0/l;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1}, Lorg/joda/time/b0/b;->p(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v1

    .line 3
    new-instance v9, Lorg/joda/time/b0/e;

    iget-object v6, p0, Lorg/joda/time/b0/b;->c:Ljava/util/Locale;

    iget-object v7, p0, Lorg/joda/time/b0/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lorg/joda/time/b0/b;->h:I

    const-wide/16 v3, 0x0

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lorg/joda/time/b0/e;-><init>(JLorg/joda/time/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v9, p1, v2}, Lorg/joda/time/b0/l;->parseInto(Lorg/joda/time/b0/e;Ljava/lang/CharSequence;I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v9, v0, p1}, Lorg/joda/time/b0/e;->l(ZLjava/lang/String;)J

    move-result-wide v2

    .line 7
    iget-boolean p1, p0, Lorg/joda/time/b0/b;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {v9}, Lorg/joda/time/b0/e;->p()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v9}, Lorg/joda/time/b0/e;->p()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    invoke-static {p1}, Lorg/joda/time/f;->g(I)Lorg/joda/time/f;

    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Lorg/joda/time/a;->N(Lorg/joda/time/f;)Lorg/joda/time/a;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v9}, Lorg/joda/time/b0/e;->r()Lorg/joda/time/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {v9}, Lorg/joda/time/b0/e;->r()Lorg/joda/time/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/joda/time/a;->N(Lorg/joda/time/f;)Lorg/joda/time/a;

    move-result-object v1

    .line 13
    :cond_1
    :goto_0
    new-instance p1, Lorg/joda/time/b;

    invoke-direct {p1, v2, v3, v1}, Lorg/joda/time/b;-><init>(JLorg/joda/time/a;)V

    .line 14
    iget-object v0, p0, Lorg/joda/time/b0/b;->f:Lorg/joda/time/f;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1, v0}, Lorg/joda/time/b;->D(Lorg/joda/time/f;)Lorg/joda/time/b;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    not-int v0, v0

    .line 16
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/joda/time/b0/i;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public f(Ljava/lang/String;)J
    .locals 9

    .line 1
    invoke-direct {p0}, Lorg/joda/time/b0/b;->n()Lorg/joda/time/b0/l;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/joda/time/b0/b;->e:Lorg/joda/time/a;

    invoke-direct {p0, v1}, Lorg/joda/time/b0/b;->p(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v5

    .line 3
    new-instance v1, Lorg/joda/time/b0/e;

    iget-object v6, p0, Lorg/joda/time/b0/b;->c:Ljava/util/Locale;

    iget-object v7, p0, Lorg/joda/time/b0/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lorg/joda/time/b0/b;->h:I

    const-wide/16 v3, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/joda/time/b0/e;-><init>(JLorg/joda/time/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 4
    invoke-virtual {v1, v0, p1}, Lorg/joda/time/b0/e;->m(Lorg/joda/time/b0/l;Ljava/lang/CharSequence;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Lorg/joda/time/r;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/joda/time/b0/b;->o()Lorg/joda/time/b0/n;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/b0/n;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/joda/time/b0/b;->k(Ljava/lang/Appendable;Lorg/joda/time/r;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Lorg/joda/time/t;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/joda/time/b0/b;->o()Lorg/joda/time/b0/n;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/b0/n;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/joda/time/b0/b;->l(Ljava/lang/Appendable;Lorg/joda/time/t;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Appendable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/b0/b;->j(Ljava/lang/Appendable;JLorg/joda/time/a;)V

    return-void
.end method

.method public k(Ljava/lang/Appendable;Lorg/joda/time/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lorg/joda/time/e;->g(Lorg/joda/time/r;)J

    move-result-wide v0

    .line 2
    invoke-static {p2}, Lorg/joda/time/e;->f(Lorg/joda/time/r;)Lorg/joda/time/a;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/joda/time/b0/b;->j(Ljava/lang/Appendable;JLorg/joda/time/a;)V

    return-void
.end method

.method public l(Ljava/lang/Appendable;Lorg/joda/time/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/joda/time/b0/b;->o()Lorg/joda/time/b0/n;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    iget-object v1, p0, Lorg/joda/time/b0/b;->c:Ljava/util/Locale;

    invoke-interface {v0, p1, p2, v1}, Lorg/joda/time/b0/n;->printTo(Ljava/lang/Appendable;Lorg/joda/time/t;Ljava/util/Locale;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The partial must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Ljava/lang/StringBuffer;J)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/b0/b;->i(Ljava/lang/Appendable;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public q(Lorg/joda/time/a;)Lorg/joda/time/b0/b;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/b;->e:Lorg/joda/time/a;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lorg/joda/time/b0/b;

    iget-object v2, p0, Lorg/joda/time/b0/b;->a:Lorg/joda/time/b0/n;

    iget-object v3, p0, Lorg/joda/time/b0/b;->b:Lorg/joda/time/b0/l;

    iget-object v4, p0, Lorg/joda/time/b0/b;->c:Ljava/util/Locale;

    iget-boolean v5, p0, Lorg/joda/time/b0/b;->d:Z

    iget-object v7, p0, Lorg/joda/time/b0/b;->f:Lorg/joda/time/f;

    iget-object v8, p0, Lorg/joda/time/b0/b;->g:Ljava/lang/Integer;

    iget v9, p0, Lorg/joda/time/b0/b;->h:I

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Lorg/joda/time/b0/b;-><init>(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;Ljava/util/Locale;ZLorg/joda/time/a;Lorg/joda/time/f;Ljava/lang/Integer;I)V

    return-object v0
.end method

.method public r(Lorg/joda/time/f;)Lorg/joda/time/b0/b;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/b;->f:Lorg/joda/time/f;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lorg/joda/time/b0/b;

    iget-object v2, p0, Lorg/joda/time/b0/b;->a:Lorg/joda/time/b0/n;

    iget-object v3, p0, Lorg/joda/time/b0/b;->b:Lorg/joda/time/b0/l;

    iget-object v4, p0, Lorg/joda/time/b0/b;->c:Ljava/util/Locale;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/joda/time/b0/b;->e:Lorg/joda/time/a;

    iget-object v8, p0, Lorg/joda/time/b0/b;->g:Ljava/lang/Integer;

    iget v9, p0, Lorg/joda/time/b0/b;->h:I

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lorg/joda/time/b0/b;-><init>(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;Ljava/util/Locale;ZLorg/joda/time/a;Lorg/joda/time/f;Ljava/lang/Integer;I)V

    return-object v0
.end method

.method public s()Lorg/joda/time/b0/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    invoke-virtual {p0, v0}, Lorg/joda/time/b0/b;->r(Lorg/joda/time/f;)Lorg/joda/time/b0/b;

    move-result-object v0

    return-object v0
.end method
