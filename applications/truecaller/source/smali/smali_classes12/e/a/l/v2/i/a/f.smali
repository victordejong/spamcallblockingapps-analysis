.class public final Le/a/l/v2/i/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/v2/i/a/f$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/p5/c0;

.field public final b:Le/a/l/a/e0;

.field public final c:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/l/a/e0;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceFormatter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    iput-object p2, p0, Le/a/l/v2/i/a/f;->b:Le/a/l/a/e0;

    iput-object p3, p0, Le/a/l/v2/i/a/f;->c:Le/a/u3/g;

    return-void
.end method

.method public static c(Le/a/l/v2/i/a/f;Le/a/l/p2/s1$b;ZZZZI)Ljava/util/List;
    .locals 3

    and-int/lit8 v0, p6, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    move p3, v1

    :cond_1
    and-int/lit8 v0, p6, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move p4, v2

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    move p5, v2

    .line 1
    :cond_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "details"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0xc

    new-array p0, p0, [Le/a/l/n2/f;

    .line 2
    iget-object p6, p1, Le/a/l/p2/s1$b;->e:Le/a/l/n2/f;

    aput-object p6, p0, v2

    .line 3
    iget-object p6, p1, Le/a/l/p2/s1$b;->d:Le/a/l/n2/f;

    aput-object p6, p0, v1

    .line 4
    iget-object p6, p1, Le/a/l/p2/s1$b;->f:Le/a/l/n2/f;

    const/4 v0, 0x2

    aput-object p6, p0, v0

    const/4 v0, 0x3

    .line 5
    iget-object v1, p1, Le/a/l/p2/s1$b;->g:Le/a/l/n2/f;

    aput-object v1, p0, v0

    .line 6
    iget-object v0, p1, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    const/4 v1, 0x0

    if-nez p5, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    const/4 p5, 0x4

    aput-object v0, p0, p5

    const/4 p5, 0x5

    .line 7
    iget-object v0, p1, Le/a/l/p2/s1$b;->i:Le/a/l/n2/f;

    if-eqz p4, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    aput-object v0, p0, p5

    const/4 p4, 0x6

    .line 8
    iget-object p5, p1, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    move-object p5, v1

    :goto_2
    aput-object p5, p0, p4

    const/4 p2, 0x7

    .line 9
    iget-object p4, p1, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    move-object p4, v1

    :goto_3
    aput-object p4, p0, p2

    .line 10
    iget-object p2, p1, Le/a/l/p2/s1$b;->m:Le/a/l/n2/f;

    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    move-object p2, v1

    :goto_4
    const/16 p4, 0x8

    aput-object p2, p0, p4

    const/16 p2, 0x9

    .line 11
    iget-object p4, p1, Le/a/l/p2/s1$b;->o:Le/a/l/n2/f;

    if-nez p3, :cond_9

    goto :goto_5

    :cond_9
    move-object p4, v1

    :goto_5
    aput-object p4, p0, p2

    const/16 p2, 0xa

    if-nez p3, :cond_a

    goto :goto_6

    :cond_a
    move-object p6, v1

    :goto_6
    aput-object p6, p0, p2

    const/16 p2, 0xb

    .line 12
    iget-object p1, p1, Le/a/l/p2/s1$b;->l:Le/a/l/n2/f;

    if-nez p3, :cond_b

    move-object v1, p1

    :cond_b
    aput-object v1, p0, p2

    .line 13
    invoke-static {p0}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 14
    invoke-static {p0}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 15
    new-instance p1, Le/a/l/v2/i/a/e;

    invoke-direct {p1}, Le/a/l/v2/i/a/e;-><init>()V

    invoke-static {p0, p1}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;Le/a/l/v2/i/a/f$a;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l/n2/f;",
            ">;",
            "Le/a/l/v2/i/a/f$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "subscriptions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p2, Le/a/l/v2/i/a/f$a;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Le/a/l/v2/i/a/f$a;->b:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return-object v3

    .line 2
    :cond_1
    iget-boolean v0, p2, Le/a/l/v2/i/a/f$a;->b:Z

    if-ne v0, v2, :cond_2

    goto :goto_3

    .line 3
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Le/a/l/n2/f;

    .line 4
    iget-object v5, v5, Le/a/l/n2/f;->j:Lw3/b/a/u;

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_5
    move-object v4, v3

    .line 5
    :goto_2
    check-cast v4, Le/a/l/n2/f;

    if-eqz v4, :cond_6

    .line 6
    iget-object v0, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v4, 0x7f1204c9

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_7

    .line 7
    iget-object v4, p0, Le/a/l/v2/i/a/f;->c:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->g0()Le/a/u3/i;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/i;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 8
    iget-object v4, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v5, 0x7f1204f7

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_7
    move-object v4, v3

    .line 9
    :goto_5
    iget-boolean p2, p2, Le/a/l/v2/i/a/f$a;->a:Z

    if-ne p2, v2, :cond_8

    goto :goto_9

    .line 10
    :cond_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Le/a/l/n2/f;

    .line 13
    iget-object v5, v5, Le/a/l/n2/f;->h:Lw3/b/a/u;

    if-eqz v5, :cond_9

    .line 14
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 15
    :cond_a
    invoke-static {p2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/b/a/u;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lw3/b/a/u;->s()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-lez p2, :cond_b

    move p2, v2

    goto :goto_7

    :cond_b
    move p2, v1

    :goto_7
    if-eqz p2, :cond_c

    goto :goto_8

    :cond_c
    move-object p1, v3

    :goto_8
    if-eqz p1, :cond_d

    .line 17
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v5, 0x7f100021

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {p2, v5, p1, v6}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_d
    :goto_9
    move-object p1, v3

    :goto_a
    const/16 p2, 0x2c

    .line 18
    invoke-static {p2}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v1

    aput-object p1, v5, v2

    const/4 p1, 0x2

    aput-object v4, v5, p1

    invoke-static {v5}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Le/a/p5/g0;->C(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "it"

    .line 19
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_e

    move v1, v2

    :cond_e
    if-eqz v1, :cond_f

    move-object v3, p1

    :cond_f
    return-object v3
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l/n2/f;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "subscriptions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/n2/f;

    .line 3
    iget-object v2, v1, Le/a/l/n2/f;->j:Lw3/b/a/u;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 4
    iget v2, v1, Le/a/l/n2/f;->i:I

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Le/a/l/v2/i/a/f;->b:Le/a/l/a/e0;

    .line 6
    iget-object v8, v1, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 7
    iget-wide v9, v1, Le/a/l/n2/f;->g:J

    .line 8
    invoke-interface {v2, v8, v9, v10}, Le/a/l/a/e0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p0, v1, v2}, Le/a/l/v2/i/a/f;->f(Le/a/l/n2/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v8, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    invoke-virtual {p0, v1}, Le/a/l/v2/i/a/f;->e(Le/a/l/n2/f;)I

    move-result v9

    invoke-virtual {p0, v1}, Le/a/l/v2/i/a/f;->d(Le/a/l/n2/f;)I

    move-result v10

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10, v11}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 11
    sget-object v9, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 12
    invoke-static {v8, v9}, Le/a/p5/g0;->A(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "StringUtils.capitalizeFi\u2026ocale()\n                )"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v9, v1, Le/a/l/n2/f;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, v9}, Le/a/l/v2/i/a/f;->f(Le/a/l/n2/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 15
    iget-object v10, v1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 16
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const v11, 0x7f1204cb

    const/4 v12, 0x4

    if-eq v10, v5, :cond_1

    if-eq v10, v6, :cond_0

    .line 17
    iget-object v10, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v11, 0x7f1204ca

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v2, v12, v7

    .line 18
    iget v2, v1, Le/a/l/n2/f;->i:I

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v4

    aput-object v8, v12, v5

    aput-object v9, v12, v6

    .line 20
    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 21
    :cond_0
    iget-object v2, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    new-array v10, v12, [Ljava/lang/Object;

    .line 22
    iget-object v12, v1, Le/a/l/n2/f;->f:Ljava/lang/String;

    aput-object v12, v10, v7

    .line 23
    iget v12, v1, Le/a/l/n2/f;->i:I

    mul-int/lit8 v12, v12, 0x6

    .line 24
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v4

    aput-object v8, v10, v5

    aput-object v9, v10, v6

    .line 25
    invoke-interface {v2, v11, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 26
    :cond_1
    iget-object v2, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    new-array v10, v12, [Ljava/lang/Object;

    .line 27
    iget-object v12, v1, Le/a/l/n2/f;->f:Ljava/lang/String;

    aput-object v12, v10, v7

    .line 28
    iget v12, v1, Le/a/l/n2/f;->i:I

    mul-int/2addr v12, v6

    .line 29
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v4

    aput-object v8, v10, v5

    aput-object v9, v10, v6

    .line 30
    invoke-interface {v2, v11, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 31
    iget-object v8, p0, Le/a/l/v2/i/a/f;->c:Le/a/u3/g;

    invoke-virtual {v8}, Le/a/u3/g;->g0()Le/a/u3/i;

    move-result-object v8

    invoke-interface {v8}, Le/a/u3/i;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 32
    iget-object v8, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v9, 0x7f1204f7

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    move-object v8, v3

    .line 33
    :goto_2
    iget-object v1, v1, Le/a/l/n2/f;->h:Lw3/b/a/u;

    if-eqz v1, :cond_4

    .line 34
    invoke-virtual {v1}, Lw3/b/a/u;->s()I

    move-result v9

    if-lez v9, :cond_4

    .line 35
    iget-object v3, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v9, 0x7f100021

    invoke-virtual {v1}, Lw3/b/a/u;->s()I

    move-result v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lw3/b/a/u;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v7

    invoke-interface {v3, v9, v10, v11}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v1, "line.separator"

    .line 36
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v7

    aput-object v3, v6, v4

    aput-object v8, v6, v5

    invoke-static {v6}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Le/a/p5/g0;->C(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringUtils.combine(\n   \u2026laimer)\n                )"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public final d(Le/a/l/n2/f;)I
    .locals 3

    .line 1
    iget-object v0, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_1

    .line 3
    iget v2, p1, Le/a/l/n2/f;->i:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    :cond_1
    :goto_0
    return v2
.end method

.method public final e(Le/a/l/n2/f;)I
    .locals 1

    .line 1
    iget-object p1, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const p1, 0x7f10002d

    goto :goto_0

    :cond_0
    const p1, 0x7f10002f

    :goto_0
    return p1
.end method

.method public final f(Le/a/l/n2/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p1, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const v0, 0x7f1204e7

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v2, :cond_2

    const/4 v5, 0x6

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-eq p1, v5, :cond_0

    .line 3
    iget-object p1, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v0, 0x7f1204d0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resourceProvider.getStri\u2026fferPricePerMonth, price)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v0, 0x7f12055d

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resourceProvider.getStri\u2026OfferPricePerYear, price)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    .line 7
    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resourceProvider.getStri\u2026THS_HALF_YEARLY\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    .line 10
    invoke-interface {p1, v0, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resourceProvider.getStri\u2026ONTHS_QUARTERLY\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
