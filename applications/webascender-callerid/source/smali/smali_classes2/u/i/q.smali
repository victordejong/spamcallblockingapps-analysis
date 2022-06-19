.class public final Lu/i/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/i/t$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/i/q$b;,
        Lu/i/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/i/t$a<",
        "Lu/g;",
        ">;"
    }
.end annotation


# static fields
.field static final b:Lu/i/l;

.field static final c:Lu/i/l;

.field static final d:Lu/i/l;

.field static final e:Lu/i/l;

.field static final f:Lu/i/l;

.field static final g:Lu/i/l;

.field static final h:Lu/i/l;

.field static final i:Lu/i/l;

.field static final j:Lu/i/l;

.field static final k:Lu/i/l;

.field static final l:[B


# instance fields
.field final a:Lu/j/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lu/i/l;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q;->b:Lu/i/l;

    .line 2
    new-instance v0, Lu/i/l;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q;->c:Lu/i/l;

    .line 3
    new-instance v0, Lu/i/l;

    const/16 v2, 0xb

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q;->d:Lu/i/l;

    .line 4
    new-instance v0, Lu/i/l;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q;->e:Lu/i/l;

    .line 5
    new-instance v0, Lu/i/l;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q;->f:Lu/i/l;

    .line 6
    new-instance v0, Lu/i/l;

    const/16 v3, 0xf

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q;->g:Lu/i/l;

    .line 7
    new-instance v0, Lu/i/l;

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q;->h:Lu/i/l;

    .line 8
    new-instance v0, Lu/i/l;

    const/4 v3, 0x2

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q;->i:Lu/i/l;

    .line 9
    new-instance v0, Lu/i/l;

    invoke-direct {v0, v1, v1}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q;->j:Lu/i/l;

    .line 10
    new-instance v0, Lu/i/l;

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q;->k:Lu/i/l;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 11
    sput-object v0, Lu/i/q;->l:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lu/j/e;->b()Lu/j/e;

    move-result-object v0

    iput-object v0, p0, Lu/i/q;->a:Lu/j/e;

    return-void
.end method

.method static c(Lu/f;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lu/i/k;->b(Lu/f;)I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-static {v0}, Lu/i/t;->f([B)Lu/i/t;

    move-result-object v1

    invoke-static {p0, v1}, Lu/i/k;->c(Lu/f;Lu/i/t;)V

    return-object v0
.end method

.method static g(Lu/i/t;Lu/j/c;[B)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lu/j/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    invoke-static {p0, v0}, Lu/i/j;->l(Lu/i/t;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lu/j/c;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/j/a;

    .line 4
    invoke-virtual {v2}, Lu/j/a;->j()J

    move-result-wide v3

    invoke-virtual {v2}, Lu/j/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, p2, p0}, Lu/i/q$a;->b(JLjava/lang/String;[BLu/i/t;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static h(Lu/i/t;Lu/j/c;[B)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lu/j/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    invoke-static {p0, v0}, Lu/i/j;->l(Lu/i/t;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lu/j/c;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/j/b;

    .line 4
    invoke-virtual {v2}, Lu/j/b;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lu/j/b;->d()Lu/f;

    move-result-object v3

    invoke-static {v3}, Lu/i/q;->c(Lu/f;)[B

    move-result-object v3

    .line 5
    :goto_1
    invoke-virtual {v2}, Lu/j/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lu/j/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3, p0}, Lu/i/q$b;->b(Ljava/lang/String;Ljava/lang/String;[BLu/i/t;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1}, Lu/i/q;->d(Lu/g;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lu/i/t;)V
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1, p2}, Lu/i/q;->e(Lu/g;Lu/i/t;)V

    return-void
.end method

.method public d(Lu/g;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lu/i/q;->a:Lu/j/e;

    invoke-virtual {v0, p1}, Lu/j/e;->a(Lu/g;)Lu/j/c;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lu/g;->f()Lu/f;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lu/g;->f()Lu/f;

    move-result-object v1

    invoke-static {v1}, Lu/i/k;->b(Lu/f;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Lu/j/c;->l()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/16 v7, 0xb

    cmp-long v8, v3, v5

    if-eqz v8, :cond_1

    const/16 v3, 0x16

    goto :goto_1

    :cond_1
    const/16 v3, 0xb

    .line 4
    :goto_1
    invoke-virtual {v0}, Lu/j/c;->h()J

    move-result-wide v8

    cmp-long v4, v8, v5

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0xb

    :cond_2
    add-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x7

    .line 5
    invoke-virtual {p1}, Lu/g;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lu/g;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/i/t;->c(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/2addr v3, p1

    :cond_3
    add-int/lit8 v3, v3, 0x8

    .line 6
    invoke-virtual {v0}, Lu/j/c;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p1, :cond_4

    .line 7
    invoke-virtual {v0}, Lu/j/c;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu/j/a;

    invoke-virtual {v7}, Lu/j/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lu/i/t;->c(Ljava/lang/CharSequence;)I

    move-result v7

    .line 8
    invoke-static {v7, v1}, Lu/i/q$a;->a(II)I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x8

    .line 9
    invoke-virtual {v0}, Lu/j/c;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    const/4 v4, 0x1

    if-ge v2, p1, :cond_6

    .line 10
    invoke-virtual {v0}, Lu/j/c;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu/j/b;

    .line 11
    invoke-virtual {v7}, Lu/j/b;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lu/i/t;->c(Ljava/lang/CharSequence;)I

    move-result v8

    .line 12
    invoke-virtual {v7}, Lu/j/b;->j()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 13
    invoke-virtual {v7}, Lu/j/b;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lu/i/t;->c(Ljava/lang/CharSequence;)I

    move-result v4

    .line 14
    invoke-static {v8, v4, v1}, Lu/i/q$b;->a(III)I

    move-result v4

    goto :goto_4

    .line 15
    :cond_5
    invoke-virtual {v7}, Lu/j/b;->d()Lu/f;

    move-result-object v7

    invoke-static {v7}, Lu/i/k;->b(Lu/f;)I

    move-result v7

    .line 16
    invoke-static {v8, v4, v7}, Lu/i/q$b;->a(III)I

    move-result v4

    :goto_4
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 17
    :cond_6
    invoke-virtual {v0}, Lu/j/c;->c()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_7

    add-int/lit8 v3, v3, 0x4

    .line 18
    :cond_7
    invoke-virtual {v0}, Lu/j/c;->j()J

    move-result-wide v1

    cmp-long p1, v1, v5

    if-eqz p1, :cond_8

    add-int/lit8 v3, v3, 0xb

    .line 19
    :cond_8
    invoke-virtual {v0}, Lu/j/c;->d()J

    move-result-wide v0

    cmp-long p1, v0, v5

    if-eqz p1, :cond_9

    add-int/lit8 v3, v3, 0xb

    :cond_9
    add-int/2addr v3, v4

    return v3
.end method

.method public e(Lu/g;Lu/i/t;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lu/i/q;->a:Lu/j/e;

    invoke-virtual {v0, p1}, Lu/j/e;->a(Lu/g;)Lu/j/c;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lu/g;->f()Lu/f;

    move-result-object v1

    invoke-static {v1}, Lu/i/q;->c(Lu/f;)[B

    move-result-object v1

    .line 3
    sget-object v2, Lu/i/q;->b:Lu/i/l;

    invoke-virtual {v2, p2}, Lu/i/l;->c(Lu/i/t;)V

    .line 4
    invoke-virtual {v0}, Lu/j/c;->k()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lu/i/j;->m(Lu/i/t;J)V

    .line 5
    sget-object v2, Lu/i/q;->d:Lu/i/l;

    invoke-virtual {v2, p2}, Lu/i/l;->c(Lu/i/t;)V

    .line 6
    invoke-virtual {p1}, Lu/g;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lu/g;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p2, p1}, Lu/i/j;->j(Lu/i/t;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lu/i/q;->e:Lu/i/l;

    invoke-virtual {p1, p2}, Lu/i/l;->c(Lu/i/t;)V

    .line 8
    invoke-virtual {v0}, Lu/j/c;->e()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lu/i/j;->m(Lu/i/t;J)V

    .line 9
    invoke-virtual {v0}, Lu/j/c;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Lu/i/q;->f:Lu/i/l;

    invoke-virtual {p1, p2}, Lu/i/l;->c(Lu/i/t;)V

    .line 11
    invoke-virtual {v0}, Lu/j/c;->h()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lu/i/j;->m(Lu/i/t;J)V

    .line 12
    :cond_1
    sget-object p1, Lu/i/q;->g:Lu/i/l;

    invoke-virtual {p1, p2}, Lu/i/l;->c(Lu/i/t;)V

    .line 13
    invoke-static {p2, v0, v1}, Lu/i/q;->g(Lu/i/t;Lu/j/c;[B)V

    .line 14
    sget-object p1, Lu/i/q;->h:Lu/i/l;

    invoke-virtual {p1, p2}, Lu/i/l;->c(Lu/i/t;)V

    .line 15
    invoke-static {p2, v0, v1}, Lu/i/q;->h(Lu/i/t;Lu/j/c;[B)V

    .line 16
    invoke-virtual {v0}, Lu/j/c;->c()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 17
    sget-object p1, Lu/i/q;->i:Lu/i/l;

    invoke-virtual {p1, p2}, Lu/i/l;->c(Lu/i/t;)V

    .line 18
    invoke-virtual {v0}, Lu/j/c;->c()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lu/i/t;->l(I)V

    .line 19
    :cond_2
    invoke-virtual {v0}, Lu/j/c;->j()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-eqz p1, :cond_3

    .line 20
    sget-object p1, Lu/i/q;->j:Lu/i/l;

    invoke-virtual {p1, p2}, Lu/i/l;->c(Lu/i/t;)V

    .line 21
    invoke-virtual {v0}, Lu/j/c;->j()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lu/i/j;->m(Lu/i/t;J)V

    .line 22
    :cond_3
    invoke-virtual {v0}, Lu/j/c;->d()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-eqz p1, :cond_4

    .line 23
    sget-object p1, Lu/i/q;->k:Lu/i/l;

    invoke-virtual {p1, p2}, Lu/i/l;->c(Lu/i/t;)V

    .line 24
    invoke-virtual {v0}, Lu/j/c;->d()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lu/i/j;->m(Lu/i/t;J)V

    .line 25
    :cond_4
    invoke-virtual {v0}, Lu/j/c;->l()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-eqz p1, :cond_5

    .line 26
    sget-object p1, Lu/i/q;->c:Lu/i/l;

    invoke-virtual {p1, p2}, Lu/i/l;->c(Lu/i/t;)V

    .line 27
    invoke-virtual {v0}, Lu/j/c;->l()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lu/i/j;->m(Lu/i/t;J)V

    :cond_5
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p2, p1}, Lu/i/t;->l(I)V

    return-void
.end method

.method public f(Lu/g;)[B
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lu/i/q;->d(Lu/g;)I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-static {v0}, Lu/i/t;->f([B)Lu/i/t;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lu/i/q;->e(Lu/g;Lu/i/t;)V

    return-object v0
.end method

.method public i(Ljava/util/List;[BI)I
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
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p2, p3}, Lu/i/t;->g([BI)Lu/i/t;

    move-result-object p2

    .line 3
    invoke-static {p0, p1, p2}, Lu/i/j;->k(Lu/i/t$a;Ljava/util/List;Lu/i/t;)V

    .line 4
    invoke-virtual {p2}, Lu/i/t;->b()I

    move-result p1

    sub-int/2addr p1, p3

    return p1
.end method

.method public j(Ljava/util/List;)[B
    .locals 2
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
    sget-object p1, Lu/i/q;->l:[B

    return-object p1

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lu/i/j;->b(Lu/i/t$a;Ljava/util/List;)I

    move-result v0

    new-array v0, v0, [B

    .line 4
    invoke-static {v0}, Lu/i/t;->f([B)Lu/i/t;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lu/i/j;->k(Lu/i/t$a;Ljava/util/List;Lu/i/t;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Span"

    return-object v0
.end method
