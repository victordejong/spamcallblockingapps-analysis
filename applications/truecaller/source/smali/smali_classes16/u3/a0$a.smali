.class public final Lu3/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/a0$a$a;
    }
.end annotation


# static fields
.field public static final i:Lu3/a0$a$a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu3/a0$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu3/a0$a$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lu3/a0$a;->i:Lu3/a0$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lu3/a0$a;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lu3/a0$a;->c:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lu3/a0$a;->e:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu3/a0$a;->f:Ljava/util/List;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lu3/a0$a;
    .locals 15

    move-object v0, p0

    const-string v1, "name"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lu3/a0$a;->g:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lu3/a0$a;->g:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v1, v0, Lu3/a0$a;->g:Ljava/util/List;

    const/4 v13, 0x0

    if-eqz v1, :cond_3

    sget-object v14, Lu3/a0;->l:Lu3/a0$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xdb

    const-string v6, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v2, v14

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v12}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, v0, Lu3/a0$a;->g:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xdb

    const-string v6, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v2, v14

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v12}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v13

    :cond_1
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v13

    .line 4
    :cond_3
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v13
.end method

.method public final b()Lu3/a0;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v7, Lu3/a0;->l:Lu3/a0$b;

    iget-object v9, v0, Lu3/a0$a;->a:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 2
    iget-object v2, v0, Lu3/a0$a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lu3/a0$b;->d(Lu3/a0$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v10

    .line 3
    iget-object v2, v0, Lu3/a0$a;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lu3/a0$b;->d(Lu3/a0$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v11

    .line 4
    iget-object v12, v0, Lu3/a0$a;->d:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 5
    invoke-virtual/range {p0 .. p0}, Lu3/a0$a;->c()I

    move-result v13

    .line 6
    iget-object v1, v0, Lu3/a0$a;->f:Ljava/util/List;

    .line 7
    new-instance v14, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v1, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v1, v7

    .line 10
    invoke-static/range {v1 .. v6}, Lu3/a0$b;->d(Lu3/a0$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lu3/a0$a;->g:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 14
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v16, 0x3

    move-object v1, v7

    move-object v15, v6

    move/from16 v6, v16

    .line 15
    invoke-static/range {v1 .. v6}, Lu3/a0$b;->d(Lu3/a0$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v15, v6

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v15, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v6, v15

    goto :goto_1

    :cond_2
    move-object v15, v6

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 16
    :goto_3
    iget-object v2, v0, Lu3/a0$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lu3/a0$b;->d(Lu3/a0$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    .line 17
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lu3/a0$a;->toString()Ljava/lang/String;

    move-result-object v17

    .line 18
    new-instance v1, Lu3/a0;

    move-object v8, v1

    invoke-direct/range {v8 .. v17}, Lu3/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 19
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "host == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "scheme == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()I
    .locals 4

    .line 1
    iget v0, p0, Lu3/a0$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lu3/a0$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v2, "scheme"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x310888    # 4.503E-39f

    if-eq v2, v3, :cond_2

    const v3, 0x5f008eb

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "https"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1bb

    goto :goto_1

    :cond_2
    const-string v2, "http"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x50

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 6
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Ljava/lang/String;)Lu3/a0$a;
    .locals 12

    if-eqz p1, :cond_0

    .line 1
    sget-object v11, Lu3/a0;->l:Lu3/a0$b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd3

    const-string v4, " \"\'<>#"

    move-object v0, v11

    move-object v1, p1

    .line 2
    invoke-static/range {v0 .. v10}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v11, p1}, Lu3/a0$b;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lu3/a0$a;->g:Ljava/util/List;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lu3/a0$a;
    .locals 7

    const-string v0, "host"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lu3/a0;->l:Lu3/a0$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lu3/a0$b;->d(Lu3/a0$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->J3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lu3/a0$a;->d:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected host: "

    .line 4
    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    sget-object v13, Lu3/a0;->l:Lu3/a0$b;

    const-string v2, "input"

    invoke-static {v12, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lu3/p0/c;->a:[B

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v12, v3, v2}, Lu3/p0/c;->n(Ljava/lang/String;II)I

    move-result v2

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v12, v2, v4}, Lu3/p0/c;->o(Ljava/lang/String;II)I

    move-result v14

    sub-int v4, v14, v2

    const/4 v5, 0x2

    const/16 v6, 0x3a

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ge v4, v5, :cond_0

    goto :goto_5

    .line 4
    :cond_0
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    const/16 v9, 0x7a

    const/16 v10, 0x41

    const/16 v11, 0x61

    if-lt v4, v11, :cond_1

    if-le v4, v9, :cond_2

    :cond_1
    if-lt v4, v10, :cond_c

    if-le v4, v5, :cond_2

    goto :goto_5

    :cond_2
    move v4, v2

    :goto_0
    add-int/2addr v4, v8

    if-ge v4, v14, :cond_c

    .line 5
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-le v11, v15, :cond_3

    goto :goto_1

    :cond_3
    if-lt v9, v15, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    if-le v10, v15, :cond_5

    goto :goto_2

    :cond_5
    if-lt v5, v15, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    const/16 v5, 0x39

    const/16 v9, 0x30

    if-le v9, v15, :cond_7

    goto :goto_3

    :cond_7
    if-lt v5, v15, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v5, 0x2b

    if-ne v15, v5, :cond_9

    goto :goto_4

    :cond_9
    const/16 v5, 0x2d

    if-ne v15, v5, :cond_a

    goto :goto_4

    :cond_a
    const/16 v5, 0x2e

    if-ne v15, v5, :cond_b

    :goto_4
    const/16 v5, 0x5a

    const/16 v9, 0x7a

    goto :goto_0

    :cond_b
    if-ne v15, v6, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    move v4, v7

    :goto_6
    const-string v15, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v4, v7, :cond_f

    const-string v5, "https:"

    .line 6
    invoke-static {v12, v5, v2, v8}, Ls1/f0/r;->v(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v4, "https"

    .line 7
    iput-object v4, v0, Lu3/a0$a;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x6

    goto :goto_7

    :cond_d
    const-string v5, "http:"

    .line 8
    invoke-static {v12, v5, v2, v8}, Ls1/f0/r;->v(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v4, "http"

    .line 9
    iput-object v4, v0, Lu3/a0$a;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x5

    goto :goto_7

    :cond_e
    const-string v1, "Expected URL scheme \'http\' or \'https\' but was \'"

    .line 10
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    if-eqz v1, :cond_2a

    .line 13
    iget-object v4, v1, Lu3/a0;->b:Ljava/lang/String;

    .line 14
    iput-object v4, v0, Lu3/a0$a;->a:Ljava/lang/String;

    :goto_7
    move v4, v2

    :goto_8
    const/16 v11, 0x2f

    const/16 v10, 0x5c

    if-ge v4, v14, :cond_11

    .line 15
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_10

    if-ne v5, v11, :cond_11

    :cond_10
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    const/16 v4, 0x3f

    const/16 v5, 0x23

    const/4 v6, 0x2

    if-ge v3, v6, :cond_15

    if-eqz v1, :cond_15

    .line 16
    iget-object v6, v1, Lu3/a0;->b:Ljava/lang/String;

    .line 17
    iget-object v9, v0, Lu3/a0$a;->a:Ljava/lang/String;

    invoke-static {v6, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v8

    if-eqz v6, :cond_12

    goto :goto_9

    .line 18
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lu3/a0;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lu3/a0$a;->b:Ljava/lang/String;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lu3/a0;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lu3/a0$a;->c:Ljava/lang/String;

    .line 20
    iget-object v3, v1, Lu3/a0;->e:Ljava/lang/String;

    .line 21
    iput-object v3, v0, Lu3/a0$a;->d:Ljava/lang/String;

    .line 22
    iget v3, v1, Lu3/a0;->f:I

    .line 23
    iput v3, v0, Lu3/a0$a;->e:I

    .line 24
    iget-object v3, v0, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 25
    iget-object v3, v0, Lu3/a0$a;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lu3/a0;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v2, v14, :cond_13

    .line 26
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_14

    .line 27
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lu3/a0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu3/a0$a;->d(Ljava/lang/String;)Lu3/a0$a;

    :cond_14
    move/from16 v20, v14

    goto/16 :goto_17

    :cond_15
    :goto_9
    add-int/2addr v2, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v16, v1

    move v9, v2

    move/from16 v17, v3

    :goto_a
    const-string v1, "@/\\?#"

    .line 28
    invoke-static {v12, v1, v9, v14}, Lu3/p0/c;->g(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    if-eq v8, v14, :cond_16

    .line 29
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b

    :cond_16
    move v1, v7

    :goto_b
    if-eq v1, v7, :cond_1b

    if-eq v1, v5, :cond_1b

    if-eq v1, v11, :cond_1b

    if-eq v1, v10, :cond_1b

    if-eq v1, v4, :cond_1b

    const/16 v2, 0x40

    if-eq v1, v2, :cond_17

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v14

    goto/16 :goto_e

    :cond_17
    const-string v7, "%40"

    if-nez v16, :cond_1a

    const/16 v1, 0x3a

    .line 30
    invoke-static {v12, v1, v9, v8}, Lu3/p0/c;->f(Ljava/lang/String;CII)I

    move-result v6

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v1, v13

    move-object/from16 v2, p2

    move v3, v9

    move v4, v6

    move v9, v6

    move/from16 v6, v18

    move-object/from16 v24, v7

    move/from16 v7, v19

    move/from16 v25, v8

    move/from16 v8, v20

    move/from16 v26, v9

    move/from16 v9, v21

    move/from16 v18, v10

    move-object/from16 v10, v22

    move/from16 v19, v11

    move/from16 v11, v23

    .line 31
    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v17, :cond_18

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lu3/a0$a;->b:Ljava/lang/String;

    move-object/from16 v4, v24

    invoke-static {v2, v3, v4, v1}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_18
    iput-object v1, v0, Lu3/a0$a;->b:Ljava/lang/String;

    move/from16 v11, v25

    move/from16 v1, v26

    if-eq v1, v11, :cond_19

    add-int/lit8 v3, v1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v1, v13

    move-object/from16 v2, p2

    move v4, v11

    move/from16 v25, v11

    move/from16 v11, v16

    .line 34
    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu3/a0$a;->c:Ljava/lang/String;

    const/16 v16, 0x1

    goto :goto_c

    :cond_19
    move/from16 v25, v11

    :goto_c
    const/16 v17, 0x1

    move/from16 v20, v14

    goto :goto_d

    :cond_1a
    move-object v4, v7

    move/from16 v25, v8

    move/from16 v18, v10

    move/from16 v19, v11

    .line 35
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lu3/a0$a;->c:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v1, v13

    move-object/from16 v2, p2

    move v3, v9

    move/from16 v4, v25

    move v9, v10

    move-object/from16 v10, v20

    move/from16 v20, v14

    move-object v14, v11

    move/from16 v11, v21

    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu3/a0$a;->c:Ljava/lang/String;

    :goto_d
    move/from16 v14, v25

    add-int/lit8 v9, v14, 0x1

    :goto_e
    const/16 v5, 0x23

    const/16 v4, 0x3f

    const/4 v7, -0x1

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v20

    goto/16 :goto_a

    :cond_1b
    move/from16 v20, v14

    move v14, v8

    move v8, v9

    :goto_f
    if-ge v8, v14, :cond_1f

    .line 36
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1c

    goto :goto_10

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v14, :cond_1d

    .line 37
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1c

    :cond_1d
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_1e
    const/4 v1, 0x1

    move v7, v1

    move v11, v8

    goto :goto_11

    :cond_1f
    const/4 v1, 0x1

    move v7, v1

    move v11, v14

    :goto_11
    add-int/lit8 v10, v11, 0x1

    const/16 v8, 0x22

    if-ge v10, v14, :cond_24

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v1, v13

    move-object/from16 v2, p2

    move v3, v9

    move v4, v11

    .line 38
    invoke-static/range {v1 .. v6}, Lu3/a0$b;->d(Lu3/a0$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->J3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu3/a0$a;->d:Ljava/lang/String;

    :try_start_0
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xf8

    move-object v1, v13

    move-object/from16 v2, p2

    move v3, v10

    move v4, v14

    move/from16 p1, v9

    move/from16 v9, v16

    move/from16 v27, v10

    move-object/from16 v10, v17

    move/from16 v16, v11

    move/from16 v11, v18

    .line 39
    :try_start_1
    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const v2, 0xffff

    const/4 v7, 0x1

    if-le v7, v1, :cond_20

    goto :goto_12

    :cond_20
    if-lt v2, v1, :cond_21

    goto :goto_13

    :catch_0
    const/4 v7, 0x1

    goto :goto_12

    :catch_1
    move/from16 p1, v9

    move/from16 v27, v10

    move/from16 v16, v11

    :cond_21
    :goto_12
    const/4 v1, -0x1

    .line 41
    :goto_13
    iput v1, v0, Lu3/a0$a;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    move v1, v7

    goto :goto_14

    :cond_22
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_23

    const/16 v8, 0x22

    goto :goto_15

    :cond_23
    const-string v1, "Invalid URL port: \""

    .line 42
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v11, v27

    invoke-virtual {v12, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    move/from16 p1, v9

    move/from16 v16, v11

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, v16

    .line 44
    invoke-static/range {v1 .. v6}, Lu3/a0$b;->d(Lu3/a0$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->J3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu3/a0$a;->d:Ljava/lang/String;

    .line 45
    iget-object v1, v0, Lu3/a0$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_29

    invoke-virtual {v13, v1}, Lu3/a0$b;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lu3/a0$a;->e:I

    .line 46
    :goto_15
    iget-object v1, v0, Lu3/a0$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_25

    goto :goto_16

    :cond_25
    const/4 v7, 0x0

    :goto_16
    if-eqz v7, :cond_28

    move v2, v14

    :goto_17
    const-string v1, "?#"

    move/from16 v14, v20

    .line 47
    invoke-static {v12, v1, v2, v14}, Lu3/p0/c;->g(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 48
    invoke-virtual {v0, v12, v2, v1}, Lu3/a0$a;->i(Ljava/lang/String;II)V

    if-ge v1, v14, :cond_26

    .line 49
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_26

    const/16 v15, 0x23

    .line 50
    invoke-static {v12, v15, v1, v14}, Lu3/p0/c;->f(Ljava/lang/String;CII)I

    move-result v16

    add-int/lit8 v3, v1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd0

    const-string v5, " \"\'<>#"

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v4, v16

    .line 51
    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v13, v1}, Lu3/a0$b;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lu3/a0$a;->g:Ljava/util/List;

    move/from16 v1, v16

    goto :goto_18

    :cond_26
    const/16 v15, 0x23

    :goto_18
    if-ge v1, v14, :cond_27

    .line 53
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v15, :cond_27

    add-int/lit8 v3, v1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0xb0

    const-string v5, ""

    move-object v1, v13

    move-object/from16 v2, p2

    move v4, v14

    .line 54
    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu3/a0$a;->h:Ljava/lang/String;

    :cond_27
    return-object v0

    :cond_28
    const-string v1, "Invalid URL host: \""

    .line 55
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v14, v16

    invoke-virtual {v12, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_29
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v1, 0x0

    throw v1

    .line 58
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final g(Ljava/lang/String;)Lu3/a0$a;
    .locals 12

    const-string v0, "password"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lu3/a0;->l:Lu3/a0$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfb

    move-object v2, p1

    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu3/a0$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final h(I)Lu3/a0$a;
    .locals 2

    const/4 v0, 0x1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0xffff

    if-lt v1, p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1
    iput p1, p0, Lu3/a0$a;->e:I

    return-object p0

    :cond_2
    const-string v0, "unexpected port: "

    .line 2
    invoke-static {v0, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Ljava/lang/String;II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    if-ne v1, v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    const-string v5, ""

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v3, v0, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    move v9, v1

    move v3, v2

    move-object/from16 v1, p1

    goto :goto_2

    .line 3
    :cond_2
    :goto_0
    iget-object v3, v0, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4
    iget-object v3, v0, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    move v3, v2

    move v2, v1

    move-object/from16 v1, p1

    :goto_1
    add-int/2addr v2, v6

    :cond_3
    move v9, v2

    :goto_2
    if-ge v9, v3, :cond_10

    const-string v2, "/\\"

    .line 5
    invoke-static {v1, v2, v9, v3}, Lu3/p0/c;->g(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    const/16 v18, 0x0

    if-ge v2, v3, :cond_4

    move/from16 v19, v6

    goto :goto_3

    :cond_4
    move/from16 v19, v18

    :goto_3
    const/4 v12, 0x1

    .line 6
    sget-object v7, Lu3/a0;->l:Lu3/a0$b;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xf0

    const-string v11, " \"<>^`{}|/\\?#"

    move-object v8, v1

    move v10, v2

    invoke-static/range {v7 .. v17}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    .line 7
    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "%2e"

    invoke-static {v7, v8, v6}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v8, v18

    goto :goto_5

    :cond_6
    :goto_4
    move v8, v6

    :goto_5
    if-eqz v8, :cond_7

    goto/16 :goto_9

    :cond_7
    const-string v8, ".."

    .line 8
    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "%2e."

    .line 9
    invoke-static {v7, v8, v6}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, ".%2e"

    .line 10
    invoke-static {v7, v8, v6}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "%2e%2e"

    .line 11
    invoke-static {v7, v8, v6}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v8, v18

    goto :goto_7

    :cond_9
    :goto_6
    move v8, v6

    :goto_7
    if-eqz v8, :cond_c

    .line 12
    iget-object v7, v4, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 13
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    move/from16 v18, v6

    :cond_a
    if-eqz v18, :cond_b

    iget-object v7, v4, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v7, :cond_b

    .line 14
    iget-object v7, v4, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v7, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 15
    :cond_b
    iget-object v7, v4, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 16
    :cond_c
    iget-object v8, v4, Lu3/a0$a;->f:Ljava/util/List;

    invoke-static {v8, v6}, Le/d/c/a/a;->G1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_d

    move/from16 v18, v6

    :cond_d
    if-eqz v18, :cond_e

    .line 17
    iget-object v8, v4, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-interface {v8, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 18
    :cond_e
    iget-object v8, v4, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    if-eqz v19, :cond_f

    .line 19
    iget-object v7, v4, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_9
    if-eqz v19, :cond_3

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method public final j(Ljava/lang/String;)Lu3/a0$a;
    .locals 3

    const-string v0, "scheme"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http"

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lu3/a0$a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "https"

    .line 2
    invoke-static {p1, v0, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lu3/a0$a;->a:Ljava/lang/String;

    :goto_0
    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected scheme: "

    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Ljava/lang/String;)Lu3/a0$a;
    .locals 12

    const-string v0, "username"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lu3/a0;->l:Lu3/a0$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfb

    move-object v2, p1

    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu3/a0$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lu3/a0$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    iget-object v1, p0, Lu3/a0$a;->b:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const/16 v4, 0x3a

    if-nez v1, :cond_3

    iget-object v1, p0, Lu3/a0$a;->c:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    .line 7
    :cond_3
    iget-object v1, p0, Lu3/a0$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lu3/a0$a;->c:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lu3/a0$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x40

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    :cond_6
    iget-object v1, p0, Lu3/a0$a;->d:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_9

    if-eqz v1, :cond_8

    .line 13
    invoke-static {v1, v4, v3, v2}, Ls1/f0/v;->A(Ljava/lang/CharSequence;CZI)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x5b

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lu3/a0$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 17
    :cond_7
    iget-object v1, p0, Lu3/a0$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 18
    :cond_8
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v5

    .line 19
    :cond_9
    :goto_4
    iget v1, p0, Lu3/a0$a;->e:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_a

    iget-object v1, p0, Lu3/a0$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 20
    :cond_a
    invoke-virtual {p0}, Lu3/a0$a;->c()I

    move-result v1

    .line 21
    iget-object v7, p0, Lu3/a0$a;->a:Ljava/lang/String;

    if-eqz v7, :cond_f

    if-eqz v7, :cond_e

    const-string v8, "scheme"

    .line 22
    invoke-static {v7, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x310888    # 4.503E-39f

    if-eq v8, v9, :cond_c

    const v9, 0x5f008eb

    if-eq v8, v9, :cond_b

    goto :goto_5

    :cond_b
    const-string v8, "https"

    .line 24
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v6, 0x1bb

    goto :goto_5

    :cond_c
    const-string v8, "http"

    .line 25
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v6, 0x50

    :cond_d
    :goto_5
    if-eq v1, v6, :cond_10

    goto :goto_6

    .line 26
    :cond_e
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v5

    .line 27
    :cond_f
    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    :cond_10
    iget-object v1, p0, Lu3/a0$a;->f:Ljava/util/List;

    const-string v4, "$this$toPathString"

    .line 30
    invoke-static {v1, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "out"

    invoke-static {v0, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_7
    if-ge v7, v6, :cond_11

    const/16 v8, 0x2f

    .line 32
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 34
    :cond_11
    iget-object v1, p0, Lu3/a0$a;->g:Ljava/util/List;

    if-eqz v1, :cond_16

    const/16 v1, 0x3f

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lu3/a0$a;->g:Ljava/util/List;

    if-eqz v1, :cond_15

    const-string v5, "$this$toQueryString"

    .line 37
    invoke-static {v1, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v3

    invoke-static {v3, v2}, Ls1/d0/j;->i(Ls1/d0/g;I)Ls1/d0/g;

    move-result-object v2

    .line 39
    iget v3, v2, Ls1/d0/g;->a:I

    .line 40
    iget v4, v2, Ls1/d0/g;->b:I

    .line 41
    iget v2, v2, Ls1/d0/g;->c:I

    if-ltz v2, :cond_12

    if-gt v3, v4, :cond_16

    goto :goto_8

    :cond_12
    if-lt v3, v4, :cond_16

    .line 42
    :goto_8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    .line 43
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v3, :cond_13

    const/16 v7, 0x26

    .line 44
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    :cond_13
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_14

    const/16 v5, 0x3d

    .line 46
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    if-eq v3, v4, :cond_16

    add-int/2addr v3, v2

    goto :goto_8

    .line 48
    :cond_15
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v5

    .line 49
    :cond_16
    iget-object v1, p0, Lu3/a0$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_17

    const/16 v1, 0x23

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lu3/a0$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
