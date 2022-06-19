.class public final Le/a/e/b/l/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/l/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/e/b/l/e;",
        ">;",
        "Le/a/e/b/l/d;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public final e:Ls1/w/f;

.field public final f:Ls1/w/f;

.field public final g:Le/a/b0/k/f;

.field public final h:Le/a/p5/c0;

.field public final i:Le/a/e/b/g;

.field public final j:Le/a/e/b/l/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b0/k/f;Le/a/p5/c0;Le/a/e/b/g;Le/a/e/b/l/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsUIPref"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageDaoHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/e/b/l/f;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/e/b/l/f;->f:Ls1/w/f;

    iput-object p3, p0, Le/a/e/b/l/f;->g:Le/a/b0/k/f;

    iput-object p4, p0, Le/a/e/b/l/f;->h:Le/a/p5/c0;

    iput-object p5, p0, Le/a/e/b/l/f;->i:Le/a/e/b/g;

    iput-object p6, p0, Le/a/e/b/l/f;->j:Le/a/e/b/l/a;

    return-void
.end method


# virtual methods
.method public D8(Le/a/j4/b/b/b;)V
    .locals 2

    const-string v0, "language"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/l/f;->i:Le/a/e/b/g;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Le/a/e/b/g;->d1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object p1, p1, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 3
    iget-object p1, p1, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Le/a/e/b/l/f;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public G7()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/l/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/e/b/l/f;->i:Le/a/e/b/g;

    invoke-interface {v1, v0}, Le/a/e/b/g;->j1(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/e/b/l/f;->j:Le/a/e/b/l/a;

    invoke-interface {v1, v0}, Le/a/e/b/l/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/e/b/l/f;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final Ij(Ljava/util/Locale;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ls1/w/d<",
            "-",
            "Le/a/j4/b/b/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/e/b/l/f$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/e/b/l/f$a;

    iget v1, v0, Le/a/e/b/l/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/e/b/l/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/e/b/l/f$a;

    invoke-direct {v0, p0, p2}, Le/a/e/b/l/f$a;-><init>(Le/a/e/b/l/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/e/b/l/f$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/e/b/l/f$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/e/b/l/f$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/l/f;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/e/b/l/f;->j:Le/a/e/b/l/a;

    iput-object p0, v0, Le/a/e/b/l/f$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/e/b/l/f$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/e/b/l/a;->a(Ljava/util/Locale;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Le/a/j4/b/b/b;

    .line 6
    new-instance v0, Le/a/j4/b/b/b;

    .line 7
    iget-object p1, p1, Le/a/e/b/l/f;->h:Le/a/p5/c0;

    const v1, 0x7f12065e

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 8
    iget-object v4, p2, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 9
    iget-object v4, v4, Le/a/b0/k/c;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 10
    invoke-interface {p1, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p2, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 12
    iget-object v1, p2, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 13
    iget-object p2, p2, Le/a/b0/k/c;->c:Ljava/lang/String;

    .line 14
    invoke-direct {v0, p1, v1, p2}, Le/a/j4/b/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final Jj(Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Le/a/e/b/l/f$b;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/e/b/l/f$b;

    iget v3, v2, Le/a/e/b/l/f$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/e/b/l/f$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/e/b/l/f$b;

    invoke-direct {v2, v1, v0}, Le/a/e/b/l/f$b;-><init>(Le/a/e/b/l/f;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Le/a/e/b/l/f$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/e/b/l/f$b;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    if-ne v4, v8, :cond_1

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/e/b/l/f$b;->j:Ljava/lang/Object;

    check-cast v4, Le/a/b0/k/a;

    iget-object v5, v2, Le/a/e/b/l/f$b;->i:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/c0;

    iget-object v6, v2, Le/a/e/b/l/f$b;->h:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    iget-object v7, v2, Le/a/e/b/l/f$b;->g:Ljava/lang/Object;

    check-cast v7, Le/a/e/b/l/f;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v4, v2, Le/a/e/b/l/f$b;->i:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v6, v2, Le/a/e/b/l/f$b;->h:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    iget-object v7, v2, Le/a/e/b/l/f$b;->g:Ljava/lang/Object;

    check-cast v7, Le/a/e/b/l/f;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v4, v2, Le/a/e/b/l/f$b;->j:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v8, v2, Le/a/e/b/l/f$b;->i:Ljava/lang/Object;

    check-cast v8, Ls1/z/c/c0;

    iget-object v10, v2, Le/a/e/b/l/f$b;->h:Ljava/lang/Object;

    check-cast v10, Ls1/z/c/c0;

    iget-object v11, v2, Le/a/e/b/l/f$b;->g:Ljava/lang/Object;

    check-cast v11, Le/a/e/b/l/f;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object v0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    new-instance v4, Ls1/z/c/c0;

    invoke-direct {v4}, Ls1/z/c/c0;-><init>()V

    iget-object v8, v1, Le/a/e/b/l/f;->j:Le/a/e/b/l/a;

    iget-object v10, v1, Le/a/e/b/l/f;->i:Le/a/e/b/g;

    invoke-interface {v10}, Le/a/e/b/g;->g1()Ljava/lang/String;

    move-result-object v10

    iput-object v1, v2, Le/a/e/b/l/f$b;->g:Ljava/lang/Object;

    iput-object v0, v2, Le/a/e/b/l/f$b;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/e/b/l/f$b;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/e/b/l/f$b;->j:Ljava/lang/Object;

    iput v9, v2, Le/a/e/b/l/f$b;->e:I

    invoke-interface {v8, v10, v2}, Le/a/e/b/l/a;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_6

    return-object v3

    :cond_6
    move-object v10, v0

    move-object v11, v1

    move-object v0, v8

    move-object v8, v4

    .line 6
    :goto_1
    check-cast v0, Le/a/j4/b/b/b;

    iput-object v0, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    iget-object v0, v11, Le/a/e/b/l/f;->g:Le/a/b0/k/f;

    invoke-virtual {v0}, Le/a/b0/k/f;->f()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 8
    iput-object v11, v2, Le/a/e/b/l/f$b;->g:Ljava/lang/Object;

    iput-object v10, v2, Le/a/e/b/l/f$b;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/e/b/l/f$b;->i:Ljava/lang/Object;

    iput-object v7, v2, Le/a/e/b/l/f$b;->j:Ljava/lang/Object;

    iput v6, v2, Le/a/e/b/l/f$b;->e:I

    invoke-virtual {v11, v0, v2}, Le/a/e/b/l/f;->Ij(Ljava/util/Locale;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object v4, v8

    move-object v6, v10

    move-object v7, v11

    .line 9
    :goto_2
    check-cast v0, Le/a/j4/b/b/b;

    .line 10
    iget-object v8, v7, Le/a/e/b/l/f;->i:Le/a/e/b/g;

    invoke-interface {v8}, Le/a/e/b/g;->c1()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 11
    iput-object v0, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 12
    :cond_8
    iget-object v8, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move-object v4, v8

    move-object v6, v10

    move-object v7, v11

    .line 13
    :goto_3
    new-instance v0, Le/a/b0/k/a;

    invoke-direct {v0}, Le/a/b0/k/a;-><init>()V

    .line 14
    iget-object v8, v7, Le/a/e/b/l/f;->j:Le/a/e/b/l/a;

    iput-object v7, v2, Le/a/e/b/l/f$b;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/e/b/l/f$b;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/e/b/l/f$b;->i:Ljava/lang/Object;

    iput-object v0, v2, Le/a/e/b/l/f$b;->j:Ljava/lang/Object;

    iput v5, v2, Le/a/e/b/l/f$b;->e:I

    invoke-interface {v8, v2}, Le/a/e/b/l/a;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_a

    return-object v3

    :cond_a
    move-object/from16 v16, v4

    move-object v4, v0

    move-object v0, v5

    move-object/from16 v5, v16

    .line 15
    :goto_4
    check-cast v0, Ljava/lang/Iterable;

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/j4/b/b/b;

    .line 17
    iget-object v10, v8, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 18
    iget-object v10, v10, Le/a/b0/k/c;->a:Ljava/lang/String;

    .line 19
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    move v13, v12

    :goto_6
    if-ge v12, v11, :cond_f

    aget-char v14, v10, v12

    .line 21
    invoke-static {v14}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v15

    if-nez v15, :cond_e

    .line 22
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 p1, v0

    new-array v0, v9, [C

    aput-char v14, v0, v13

    .line 23
    iget-object v14, v4, Le/a/b0/k/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v14, v0, v13, v9, v15}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 24
    iget-object v14, v4, Le/a/b0/k/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 25
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-nez v14, :cond_b

    move v14, v9

    move v9, v13

    goto :goto_7

    .line 26
    :cond_b
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 27
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 28
    :try_start_0
    invoke-virtual {v4, v0, v9}, Le/a/b0/k/a;->a([CLandroid/graphics/Bitmap;)V

    .line 29
    sget-object v0, Le/a/b0/k/a;->c:[C

    invoke-virtual {v4, v0, v13}, Le/a/b0/k/a;->a([CLandroid/graphics/Bitmap;)V

    .line 30
    invoke-virtual {v9, v13}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    .line 31
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    move v9, v0

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 33
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    throw v0

    :cond_c
    move v14, v9

    :goto_7
    if-nez v9, :cond_d

    const/4 v9, 0x0

    goto :goto_9

    :cond_d
    move v9, v14

    goto :goto_8

    :cond_e
    move-object/from16 p1, v0

    :goto_8
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p1

    goto :goto_6

    :cond_f
    move-object/from16 p1, v0

    move v14, v9

    :goto_9
    if-eqz v9, :cond_10

    .line 36
    iget-object v0, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v0, p1

    move v9, v14

    goto/16 :goto_5

    .line 37
    :cond_11
    iget-object v0, v7, Le/a/e/b/l/f;->f:Ls1/w/f;

    new-instance v4, Le/a/e/b/l/f$c;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v6, v5, v8}, Le/a/e/b/l/f$c;-><init>(Le/a/e/b/l/f;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v8, v2, Le/a/e/b/l/f$b;->g:Ljava/lang/Object;

    iput-object v8, v2, Le/a/e/b/l/f$b;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/e/b/l/f$b;->i:Ljava/lang/Object;

    iput-object v8, v2, Le/a/e/b/l/f$b;->j:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v2, Le/a/e/b/l/f$b;->e:I

    invoke-static {v0, v4, v2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_12

    return-object v3

    .line 38
    :cond_12
    :goto_a
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public final Kj(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/e/b/l/f$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/e/b/l/f$d;

    iget v1, v0, Le/a/e/b/l/f$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/e/b/l/f$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/e/b/l/f$d;

    invoke-direct {v0, p0, p1}, Le/a/e/b/l/f$d;-><init>(Le/a/e/b/l/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/e/b/l/f$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/e/b/l/f$d;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/e/b/l/f$d;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Le/a/e/b/l/f$d;->i:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v5, v0, Le/a/e/b/l/f$d;->h:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/c0;

    iget-object v6, v0, Le/a/e/b/l/f$d;->g:Ljava/lang/Object;

    check-cast v6, Le/a/e/b/l/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v2, v0, Le/a/e/b/l/f$d;->i:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v5, v0, Le/a/e/b/l/f$d;->h:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/c0;

    iget-object v6, v0, Le/a/e/b/l/f$d;->g:Ljava/lang/Object;

    check-cast v6, Le/a/e/b/l/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Le/a/e/b/l/f$d;->j:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v6, v0, Le/a/e/b/l/f$d;->i:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    iget-object v8, v0, Le/a/e/b/l/f$d;->h:Ljava/lang/Object;

    check-cast v8, Ls1/z/c/c0;

    iget-object v9, v0, Le/a/e/b/l/f$d;->g:Ljava/lang/Object;

    check-cast v9, Le/a/e/b/l/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    new-instance v2, Ls1/z/c/c0;

    invoke-direct {v2}, Ls1/z/c/c0;-><init>()V

    iget-object v8, p0, Le/a/e/b/l/f;->j:Le/a/e/b/l/a;

    iget-object v9, p0, Le/a/e/b/l/f;->i:Le/a/e/b/g;

    const-string v10, ""

    .line 6
    invoke-interface {v9, v10}, Le/a/e/b/g;->d1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7
    iput-object p0, v0, Le/a/e/b/l/f$d;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/e/b/l/f$d;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/e/b/l/f$d;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/e/b/l/f$d;->j:Ljava/lang/Object;

    iput v6, v0, Le/a/e/b/l/f$d;->e:I

    invoke-interface {v8, v9, v0}, Le/a/e/b/l/a;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, p0

    move-object v8, p1

    move-object p1, v6

    move-object v6, v2

    .line 8
    :goto_1
    check-cast p1, Le/a/j4/b/b/b;

    iput-object p1, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 9
    sget-object p1, Le/a/b0/k/h;->b:Ljava/util/Locale;

    if-eqz p1, :cond_9

    .line 10
    iput-object v9, v0, Le/a/e/b/l/f$d;->g:Ljava/lang/Object;

    iput-object v8, v0, Le/a/e/b/l/f$d;->h:Ljava/lang/Object;

    iput-object v6, v0, Le/a/e/b/l/f$d;->i:Ljava/lang/Object;

    iput-object v7, v0, Le/a/e/b/l/f$d;->j:Ljava/lang/Object;

    iput v5, v0, Le/a/e/b/l/f$d;->e:I

    invoke-virtual {v9, p1, v0}, Le/a/e/b/l/f;->Ij(Ljava/util/Locale;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, v6

    move-object v5, v8

    move-object v6, v9

    .line 11
    :goto_2
    check-cast p1, Le/a/j4/b/b/b;

    .line 12
    iget-object v8, v6, Le/a/e/b/l/f;->i:Le/a/e/b/g;

    invoke-interface {v8}, Le/a/e/b/g;->e1()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 13
    iput-object p1, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 14
    :cond_8
    iget-object v8, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move-object v2, v6

    move-object v5, v8

    move-object v6, v9

    .line 15
    :goto_3
    iget-object p1, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v8, v6, Le/a/e/b/l/f;->j:Le/a/e/b/l/a;

    iput-object v6, v0, Le/a/e/b/l/f$d;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/e/b/l/f$d;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/e/b/l/f$d;->i:Ljava/lang/Object;

    iput-object p1, v0, Le/a/e/b/l/f$d;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/e/b/l/f$d;->e:I

    invoke-interface {v8, v0}, Le/a/e/b/l/a;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_a

    return-object v1

    :cond_a
    move-object v11, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, v11

    :goto_4
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object p1, v6, Le/a/e/b/l/f;->f:Ls1/w/f;

    new-instance v2, Le/a/e/b/l/f$e;

    invoke-direct {v2, v6, v5, v4, v7}, Le/a/e/b/l/f$e;-><init>(Le/a/e/b/l/f;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v7, v0, Le/a/e/b/l/f$d;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/e/b/l/f$d;->h:Ljava/lang/Object;

    iput-object v7, v0, Le/a/e/b/l/f$d;->i:Ljava/lang/Object;

    iput-object v7, v0, Le/a/e/b/l/f$d;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/e/b/l/f$d;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    .line 17
    :cond_b
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public La(Landroid/content/Context;Le/a/j4/b/b/b;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/e/b/l/f;->e:Ls1/w/f;

    new-instance v4, Le/a/e/b/l/f$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Le/a/e/b/l/f$f;-><init>(Le/a/e/b/l/f;Le/a/j4/b/b/b;Landroid/content/Context;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/e/b/l/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Le/a/e/b/l/f;->e:Ls1/w/f;

    new-instance v4, Le/a/e/b/l/g;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/e/b/l/g;-><init>(Le/a/e/b/l/f;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public l1(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6f16f2b2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "show_lang_selector"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/l/e;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/e/b/l/e;->Mn()V

    :cond_2
    :goto_0
    return-void
.end method
