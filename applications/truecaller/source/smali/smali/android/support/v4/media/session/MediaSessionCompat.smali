.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;,
        Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;,
        Landroid/support/v4/media/session/MediaSessionCompat$Token;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Field;

.field public static b:Z

.field public static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static d:Z

.field public static e:Ljava/lang/reflect/Field;

.field public static f:Z

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Z

.field public static i:J

.field public static j:Ljava/lang/reflect/Method;


# direct methods
.method public static A(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static final A0(Ln3/c0/q;)Lq3/a/g0;
    .locals 3

    const-string v0, "$this$transactionDispatcher"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ln3/c0/q;->getBackingFieldMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "backingFieldMap"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "TransactionDispatcher"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/c0/q;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const-string v2, "transactionExecutor"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->b1(Ljava/util/concurrent/Executor;)Lq3/a/g0;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    check-cast v2, Lq3/a/g0;

    return-object v2
.end method

.method public static final A1(Ls1/z/b/p;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/p<",
            "-",
            "Ln3/z/y2<",
            "TT;>;-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/z/x2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln3/z/x2;-><init>(Ls1/z/b/p;Ls1/w/d;)V

    .line 2
    new-instance p0, Lq3/a/x2/d1;

    invoke-direct {p0, v0}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    const/4 v0, -0x2

    const/4 v2, 0x2

    .line 3
    invoke-static {p0, v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->L(Lq3/a/x2/f;ILq3/a/w2/i;ILjava/lang/Object;)Lq3/a/x2/f;

    move-result-object p0

    return-object p0
.end method

.method public static final B(Ln3/z/z0;Ln3/z/z0;Ln3/b0/a/h$e;)Ln3/z/y0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/b0/a/h$e<",
            "TT;>;)",
            "Ln3/z/y0;"
        }
    .end annotation

    const-string v0, "$this$computeDiff"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffCallback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ln3/z/z0;->b()I

    move-result v5

    .line 2
    invoke-interface {p1}, Ln3/z/z0;->b()I

    move-result v6

    .line 3
    new-instance v0, Ln3/z/a1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Ln3/z/a1;-><init>(Ln3/z/z0;Ln3/z/z0;Ln3/b0/a/h$e;II)V

    const/4 p1, 0x1

    .line 4
    invoke-static {v0, p1}, Ln3/b0/a/h;->a(Ln3/b0/a/h$b;Z)Ln3/b0/a/h$d;

    move-result-object p2

    const-string v0, "DiffUtil.calculateDiff(\n\u2026    },\n        true\n    )"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Ln3/z/z0;->b()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p0

    .line 6
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move p1, v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ls1/u/z;

    invoke-virtual {v1}, Ls1/u/z;->a()I

    move-result v1

    .line 8
    invoke-virtual {p2, v1}, Ln3/b0/a/h$d;->a(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    move v1, p1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 9
    :goto_1
    new-instance p0, Ln3/z/y0;

    invoke-direct {p0, p2, p1}, Ln3/z/y0;-><init>(Ln3/b0/a/h$d;Z)V

    return-object p0
.end method

.method public static B0(Ljava/lang/String;)[I
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    aput v3, v0, v2

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x23

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    const/16 v4, 0x3f

    .line 4
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v3, :cond_2

    if-le v4, v1, :cond_3

    :cond_2
    move v4, v1

    :cond_3
    const/16 v5, 0x2f

    .line 5
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v3, :cond_4

    if-le v6, v4, :cond_5

    :cond_4
    move v6, v4

    :cond_5
    const/16 v7, 0x3a

    .line 6
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v6, :cond_6

    move v7, v3

    :cond_6
    add-int/lit8 v6, v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v4, :cond_7

    add-int/lit8 v9, v7, 0x1

    .line 7
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_7

    .line 8
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_7

    move v6, v8

    goto :goto_1

    :cond_7
    move v6, v2

    :goto_1
    if-eqz v6, :cond_9

    add-int/lit8 v6, v7, 0x3

    .line 9
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-eq p0, v3, :cond_8

    if-le p0, v4, :cond_a

    :cond_8
    move p0, v4

    goto :goto_2

    :cond_9
    add-int/lit8 p0, v7, 0x1

    :cond_a
    :goto_2
    aput v7, v0, v2

    aput p0, v0, v8

    const/4 p0, 0x2

    aput v4, v0, p0

    const/4 p0, 0x3

    aput v1, v0, p0

    return-object v0
.end method

.method public static B1(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_2

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static C(Landroidx/recyclerview/widget/RecyclerView$z;Ln3/b0/a/u;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$o;Z)I
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 2
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 3
    :cond_1
    invoke-virtual {p1, p3}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result p0

    .line 4
    invoke-virtual {p1, p2}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    .line 5
    invoke-virtual {p1}, Ln3/b0/a/u;->l()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final C0(Ln3/v/y0;)Lq3/a/i0;
    .locals 4

    const-string v0, "$this$viewModelScope"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY"

    .line 1
    invoke-virtual {p0, v0}, Ln3/v/y0;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/i0;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v1, Ln3/v/g;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v2

    .line 3
    sget-object v3, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v3, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 4
    invoke-virtual {v3}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v3

    check-cast v2, Lq3/a/u1;

    .line 5
    invoke-static {v2, v3}, Ls1/w/f$a$a;->d(Ls1/w/f$a;Ls1/w/f;)Ls1/w/f;

    move-result-object v2

    .line 6
    invoke-direct {v1, v2}, Ln3/v/g;-><init>(Ls1/w/f;)V

    .line 7
    invoke-virtual {p0, v0, v1}, Ln3/v/y0;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setTagIfAbsent(\n        \u2026Main.immediate)\n        )"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lq3/a/i0;

    return-object p0
.end method

.method public static C1(I)I
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10e

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported surface rotation: "

    invoke-static {v1, p0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0xb4

    goto :goto_0

    :cond_2
    const/16 p0, 0x5a

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static D(Landroidx/recyclerview/widget/RecyclerView$z;Ln3/b0/a/u;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$o;ZZ)I
    .locals 4

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 3
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 6
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p6, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    .line 10
    :cond_2
    invoke-virtual {p1, p3}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result p5

    .line 11
    invoke-virtual {p1, p2}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p5, p6

    .line 12
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    .line 13
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result p6

    .line 14
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p6, p3

    .line 15
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float/2addr p0, p4

    .line 16
    invoke-virtual {p1}, Ln3/b0/a/u;->k()I

    move-result p3

    .line 17
    invoke-virtual {p1, p2}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    .line 18
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static D1(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 5

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    :cond_0
    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    :cond_1
    and-int/lit8 p3, p4, 0x4

    const-string p3, "<this>"

    .line 3
    invoke-static {p0, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of p3, p0, Landroid/graphics/drawable/BitmapDrawable;

    const-string p4, "bitmap"

    if-eqz p3, :cond_3

    .line 5
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result p3

    if-ne p1, p3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result p3

    if-ne p2, p3, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createScaledBitmap(bitmap, width, height, true)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    const-string v0, "bounds"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 10
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 11
    iget v2, p3, Landroid/graphics/Rect;->right:I

    .line 12
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 13
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    .line 14
    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    invoke-virtual {p0, v0, v1, v2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    invoke-static {v3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v3

    :goto_0
    return-object p0
.end method

.method public static E(Landroidx/recyclerview/widget/RecyclerView$z;Ln3/b0/a/u;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$o;Z)I
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-virtual {p1, p3}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result p5

    .line 4
    invoke-virtual {p1, p2}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p5, p1

    .line 5
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 6
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p5

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static E0(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static E1([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 3
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "("

    const-string v1, ") AND ("

    const-string v2, ")"

    .line 3
    invoke-static {v0, p0, v1, p1, v2}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F0(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/16 v1, 0x8

    if-eq p0, v1, :cond_5

    const/16 v2, 0x10

    if-eq p0, v2, :cond_4

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-ne p0, v0, :cond_0

    return v1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type needs to be >= FIRST and <= LAST, type="

    invoke-static {v1, p0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x7

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0

    :cond_4
    return v0

    :cond_5
    const/4 p0, 0x3

    return p0

    :cond_6
    return v1

    :cond_7
    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static F1(Ln3/z/v$b;Ln3/z/q1$c;Ljava/lang/Object;Ln3/z/q1$a;Ljava/util/concurrent/Executor;I)Landroidx/lifecycle/LiveData;
    .locals 8

    sget-object p2, Ln3/c/a/a/a;->e:Ljava/util/concurrent/Executor;

    and-int/lit8 p3, p5, 0x2

    const/4 v2, 0x0

    and-int/lit8 p3, p5, 0x4

    const/4 v4, 0x0

    and-int/lit8 p3, p5, 0x8

    const-string p4, "ArchTaskExecutor.getIOThreadExecutor()"

    if-eqz p3, :cond_0

    .line 1
    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string p5, "$this$toLiveData"

    .line 2
    invoke-static {p0, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "config"

    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchExecutor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dataSourceFactory"

    .line 3
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    .line 5
    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->b1(Ljava/util/concurrent/Executor;)Lq3/a/g0;

    .line 6
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p3}, Ls1/a/a/a/v0/f/d;->b1(Ljava/util/concurrent/Executor;)Lq3/a/g0;

    move-result-object v7

    const-string p2, "fetchDispatcher"

    .line 8
    invoke-static {v7, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v5, Ln3/z/d3;

    .line 10
    new-instance p2, Ln3/z/w;

    invoke-direct {p2, p0, v7}, Ln3/z/w;-><init>(Ln3/z/v$b;Lq3/a/g0;)V

    .line 11
    invoke-direct {v5, v7, p2}, Ln3/z/d3;-><init>(Lq3/a/g0;Ls1/z/b/a;)V

    .line 12
    new-instance p0, Ln3/z/q0;

    .line 13
    sget-object p2, Ln3/c/a/a/a;->d:Ljava/util/concurrent/Executor;

    const-string p3, "ArchTaskExecutor.getMainThreadExecutor()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->b1(Ljava/util/concurrent/Executor;)Lq3/a/g0;

    move-result-object v6

    move-object v0, p0

    move-object v3, p1

    .line 14
    invoke-direct/range {v0 .. v7}, Ln3/z/q0;-><init>(Lq3/a/i0;Ljava/lang/Object;Ln3/z/q1$c;Ln3/z/q1$a;Ls1/z/b/a;Lq3/a/g0;Lq3/a/g0;)V

    return-object p0
.end method

.method public static G(JLn3/y/b/a/x0/m;[Ln3/y/b/a/q0/p;)V
    .locals 10

    .line 1
    :goto_0
    invoke-virtual {p2}, Ln3/y/b/a/x0/m;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    .line 2
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->i1(Ln3/y/b/a/x0/m;)I

    move-result v0

    .line 3
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->i1(Ln3/y/b/a/x0/m;)I

    move-result v2

    .line 4
    iget v3, p2, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v3, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 5
    invoke-virtual {p2}, Ln3/y/b/a/x0/m;->a()I

    move-result v4

    if-le v2, v4, :cond_0

    goto :goto_4

    :cond_0
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    const/16 v0, 0x8

    if-lt v2, v0, :cond_8

    .line 6
    invoke-virtual {p2}, Ln3/y/b/a/x0/m;->o()I

    move-result v0

    .line 7
    invoke-virtual {p2}, Ln3/y/b/a/x0/m;->t()I

    move-result v2

    const/16 v4, 0x31

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 8
    invoke-virtual {p2}, Ln3/y/b/a/x0/m;->d()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v5

    .line 9
    :goto_1
    invoke-virtual {p2}, Ln3/y/b/a/x0/m;->o()I

    move-result v7

    const/16 v8, 0x2f

    if-ne v2, v8, :cond_2

    .line 10
    invoke-virtual {p2, v1}, Ln3/y/b/a/x0/m;->A(I)V

    :cond_2
    const/16 v9, 0xb5

    if-ne v0, v9, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v8, :cond_4

    :cond_3
    const/4 v0, 0x3

    if-ne v7, v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_2
    if-ne v2, v4, :cond_6

    const v2, 0x47413934

    if-ne v6, v2, :cond_5

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_3
    and-int/2addr v0, v1

    :cond_6
    if-eqz v0, :cond_8

    .line 11
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->H(JLn3/y/b/a/x0/m;[Ln3/y/b/a/q0/p;)V

    goto :goto_5

    .line 12
    :cond_7
    :goto_4
    iget v3, p2, Ln3/y/b/a/x0/m;->c:I

    .line 13
    :cond_8
    :goto_5
    invoke-virtual {p2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static final G0(Ln3/z/g3;Ls1/z/b/q;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T::TR;>(",
            "Ln3/z/g3<",
            "TT;>;",
            "Ls1/z/b/q<",
            "-TT;-TT;-",
            "Ls1/w/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ln3/z/g3<",
            "TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ln3/z/w2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/w2;

    iget v1, v0, Ln3/z/w2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/w2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/w2;

    invoke-direct {v0, p2}, Ln3/z/w2;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/w2;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/w2;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Ln3/z/w2;->l:I

    iget p1, v0, Ln3/z/w2;->k:I

    iget-object v2, v0, Ln3/z/w2;->j:Ljava/lang/Object;

    iget-object v4, v0, Ln3/z/w2;->i:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, v0, Ln3/z/w2;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, v0, Ln3/z/w2;->g:Ljava/lang/Object;

    check-cast v6, Ls1/z/b/q;

    iget-object v7, v0, Ln3/z/w2;->f:Ljava/lang/Object;

    check-cast v7, Ln3/z/g3;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v9

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Ln3/z/g3;->b:Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p0

    .line 6
    :cond_3
    iget-object p2, p0, Ln3/z/g3;->b:Ljava/util/List;

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iget-object p2, p0, Ln3/z/g3;->b:Ljava/util/List;

    .line 11
    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p2, p0, Ln3/z/g3;->d:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 13
    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 14
    :goto_1
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 15
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p2, p0, Ln3/z/g3;->b:Ljava/util/List;

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, p0

    move p0, p2

    move p2, v3

    :goto_2
    if-ge p2, p0, :cond_7

    .line 18
    iget-object v6, p1, Ln3/z/g3;->b:Ljava/util/List;

    .line 19
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 20
    iget-object v7, p1, Ln3/z/g3;->b:Ljava/util/List;

    add-int/lit8 v8, p2, -0x1

    .line 21
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    iput-object p1, v1, Ln3/z/w2;->f:Ljava/lang/Object;

    iput-object v0, v1, Ln3/z/w2;->g:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/w2;->h:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/w2;->i:Ljava/lang/Object;

    iput-object v6, v1, Ln3/z/w2;->j:Ljava/lang/Object;

    iput p2, v1, Ln3/z/w2;->k:I

    iput p0, v1, Ln3/z/w2;->l:I

    iput v3, v1, Ln3/z/w2;->e:I

    invoke-interface {v0, v7, v6, v1}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_5

    return-object v2

    :cond_5
    move-object v9, v7

    move-object v7, p1

    move p1, p2

    move-object p2, v9

    move-object v10, v4

    move-object v4, v2

    move-object v2, v6

    move-object v6, v5

    move-object v5, v10

    :goto_3
    if-eqz p2, :cond_6

    .line 22
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 24
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_6
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 27
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p1, 0x1

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object p1, v7

    goto :goto_2

    .line 28
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 29
    iget-object p2, p1, Ln3/z/g3;->b:Ljava/util/List;

    .line 30
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p0, p2, :cond_8

    goto :goto_4

    .line 31
    :cond_8
    new-instance p0, Ln3/z/g3;

    .line 32
    iget-object p2, p1, Ln3/z/g3;->a:[I

    .line 33
    iget p1, p1, Ln3/z/g3;->c:I

    .line 34
    invoke-direct {p0, p2, v5, p1, v4}, Ln3/z/g3;-><init>([ILjava/util/List;ILjava/util/List;)V

    move-object p1, p0

    :goto_4
    return-object p1
.end method

.method public static final G1(Ln3/z/z0;Ln3/z/y0;Ln3/z/z0;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/z0<",
            "*>;",
            "Ln3/z/y0;",
            "Ln3/z/z0<",
            "*>;I)I"
        }
    .end annotation

    const-string v0, "$this$transformAnchorIndex"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffResult"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Ln3/z/y0;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2}, Ln3/z/z0;->a()I

    move-result p0

    invoke-static {v1, p0}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p0

    invoke-static {p3, p0}, Ls1/d0/j;->e(ILs1/d0/f;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ln3/z/z0;->c()I

    move-result v0

    sub-int v0, p3, v0

    .line 4
    invoke-interface {p0}, Ln3/z/z0;->b()I

    move-result v2

    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    if-le v2, v0, :cond_5

    const/16 v2, 0x1d

    move v3, v1

    :goto_0
    if-gt v3, v2, :cond_5

    .line 5
    div-int/lit8 v4, v3, 0x2

    rem-int/lit8 v5, v3, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    move v7, v6

    :cond_2
    mul-int/2addr v4, v7

    add-int/2addr v4, v0

    if-ltz v4, :cond_4

    .line 6
    invoke-interface {p0}, Ln3/z/z0;->b()I

    move-result v5

    if-lt v4, v5, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v5, p1, Ln3/z/y0;->a:Ln3/b0/a/h$d;

    .line 8
    invoke-virtual {v5, v4}, Ln3/b0/a/h$d;->a(I)I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 9
    invoke-interface {p2}, Ln3/z/z0;->c()I

    move-result p0

    add-int/2addr p0, v4

    return p0

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_5
    :goto_2
    invoke-interface {p2}, Ln3/z/z0;->a()I

    move-result p0

    invoke-static {v1, p0}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p0

    invoke-static {p3, p0}, Ls1/d0/j;->e(ILs1/d0/f;)I

    move-result p0

    return p0
.end method

.method public static H(JLn3/y/b/a/x0/m;[Ln3/y/b/a/q0/p;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Ln3/y/b/a/x0/m;->o()I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    and-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-virtual {p2, v2}, Ln3/y/b/a/x0/m;->A(I)V

    mul-int/lit8 v0, v0, 0x3

    .line 3
    iget v1, p2, Ln3/y/b/a/x0/m;->b:I

    .line 4
    array-length v2, p3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p3, v3

    .line 5
    invoke-virtual {p2, v1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 6
    invoke-interface {v4, p2, v0}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, p0

    move v8, v0

    .line 7
    invoke-interface/range {v4 .. v10}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static H0(Ln3/z/b2;Ln3/z/f3;Ls1/z/b/q;I)Ln3/z/b2;
    .locals 5

    and-int/lit8 p1, p3, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Ln3/z/f3;->a:Ln3/z/f3;

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    const-string v0, "$this$insertSeparators"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalSeparatorType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "generator"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ln3/z/b2;

    .line 4
    iget-object v3, p0, Ln3/z/b2;->a:Lq3/a/x2/f;

    const-string v4, "$this$insertEventSeparators"

    .line 5
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ln3/z/t2;

    new-instance v1, Ln3/z/v2;

    invoke-direct {v1, p2, p3}, Ln3/z/v2;-><init>(Ls1/z/b/q;Ls1/w/d;)V

    invoke-direct {v0, p1, v1}, Ln3/z/t2;-><init>(Ln3/z/f3;Ls1/z/b/q;)V

    .line 7
    new-instance p1, Ln3/z/u2;

    invoke-direct {p1, v3, v0}, Ln3/z/u2;-><init>(Lq3/a/x2/f;Ln3/z/t2;)V

    .line 8
    iget-object p0, p0, Ln3/z/b2;->b:Ln3/z/h3;

    .line 9
    invoke-direct {v2, p1, p0}, Ln3/z/b2;-><init>(Lq3/a/x2/f;Ln3/z/h3;)V

    return-object v2
.end method

.method public static H1(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->Y(Landroid/os/Bundle;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static I([FII)[F
    .locals 2

    if-gt p1, p2, :cond_1

    .line 1
    array-length v0, p0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static I0()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1f

    if-ge v0, v3, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "REL"

    .line 2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "S"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static I1(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ln3/k/c/l/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ln3/k/c/l/a;

    invoke-interface {p0}, Ln3/k/c/l/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static J(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->K(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4
    :catch_1
    :cond_1
    throw p0
.end method

.method public static J0(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_9

    const/16 v0, 0x21

    if-eq p2, v0, :cond_6

    const/16 v0, 0x42

    if-eq p2, v0, :cond_3

    const/16 v0, 0x82

    if-ne p2, v0, :cond_2

    .line 1
    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_0

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_4

    iget p2, p0, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_5

    :cond_4
    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-ge p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    .line 4
    :cond_6
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_7

    iget p2, p0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_8

    :cond_7
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    return v1

    .line 5
    :cond_9
    iget p2, p0, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_a

    iget p2, p0, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_b

    :cond_a
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-le p0, p1, :cond_b

    goto :goto_3

    :cond_b
    move v1, v2

    :goto_3
    return v1
.end method

.method public static J1(Ln3/i/b/h/d$a;Ln3/i/b/h/d$a;Ln3/i/b/h/d$a;Ln3/i/b/h/d$a;)Z
    .locals 5

    .line 1
    sget-object v0, Ln3/i/b/h/d$a;->d:Ln3/i/b/h/d$a;

    sget-object v1, Ln3/i/b/h/d$a;->b:Ln3/i/b/h/d$a;

    sget-object v2, Ln3/i/b/h/d$a;->a:Ln3/i/b/h/d$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v4

    :goto_1
    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_3

    if-ne p3, v0, :cond_2

    if-eq p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v4

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v3

    :cond_5
    :goto_4
    return v4
.end method

.method public static K(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    :try_start_1
    new-array p0, p0, [B

    .line 3
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 4
    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6
    :catch_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 7
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 8
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 9
    :catch_3
    :cond_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_2
    if-eqz v2, :cond_2

    .line 10
    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 11
    :catch_4
    :cond_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 12
    throw p0
.end method

.method public static K0()Z
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Landroid/support/v4/media/session/MediaSessionCompat;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    sget-object v1, Landroid/support/v4/media/session/MediaSessionCompat;->j:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 4
    const-class v1, Landroid/os/Trace;

    const-string v4, "TRACE_TAG_APP"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    sput-wide v4, Landroid/support/v4/media/session/MediaSessionCompat;->i:J

    .line 6
    const-class v1, Landroid/os/Trace;

    const-string v4, "isTagEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    .line 7
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/media/session/MediaSessionCompat;->j:Ljava/lang/reflect/Method;

    .line 8
    :cond_1
    sget-object v1, Landroid/support/v4/media/session/MediaSessionCompat;->j:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    sget-wide v4, Landroid/support/v4/media/session/MediaSessionCompat;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 9
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 11
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 12
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static K1(Landroid/content/Context;Ln3/e/b/j1/c0;Ln3/e/b/m0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/b/j1/f0;
        }
    .end annotation

    const-string v0, "CameraValidator"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ln3/e/b/m0;->c()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "No lens facing info in the availableCamerasSelector, don\'t verify the camera lens facing."

    .line 2
    invoke-static {v0, p0, v1}, Ln3/e/b/y0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Cannot get lens facing from the availableCamerasSelector don\'t verify the camera lens facing."

    .line 3
    invoke-static {v0, p1, p0}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    move-object v2, v1

    :cond_1
    const-string v3, "Verifying camera lens facing on "

    .line 4
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", lensFacingInteger: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v0, v3, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_1
    const-string v3, "android.hardware.camera"

    .line 7
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 9
    :cond_2
    sget-object v3, Ln3/e/b/m0;->c:Ln3/e/b/m0;

    invoke-virtual {p1}, Ln3/e/b/j1/c0;->a()Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln3/e/b/m0;->d(Ljava/util/LinkedHashSet;)Ln3/e/b/j1/b0;

    :cond_3
    const-string v3, "android.hardware.camera.front"

    .line 10
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_5

    .line 12
    :cond_4
    sget-object p0, Ln3/e/b/m0;->b:Ln3/e/b/m0;

    invoke-virtual {p1}, Ln3/e/b/j1/c0;->a()Ljava/util/LinkedHashSet;

    move-result-object p2

    invoke-virtual {p0, p2}, Ln3/e/b/m0;->d(Ljava/util/LinkedHashSet;)Ln3/e/b/j1/b0;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    return-void

    :catch_1
    move-exception p0

    const-string p2, "Camera LensFacing verification failed, existing cameras: "

    .line 13
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Ln3/e/b/j1/c0;->a()Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {v0, p1, v1}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    new-instance p1, Ln3/e/b/j1/f0;

    const-string p2, "Expected camera missing from device."

    invoke-direct {p1, p2, p0}, Ln3/e/b/j1/f0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static L(Ln3/e/a/e/k2/a;)Ln3/e/b/n0;
    .locals 6

    .line 1
    iget v0, p0, Ln3/e/a/e/k2/a;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v5

    .line 2
    :cond_5
    :goto_0
    new-instance v0, Ln3/e/b/n0;

    invoke-direct {v0, v1, p0}, Ln3/e/b/n0;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static L0()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static L1(ILn3/y/b/a/x0/m;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    if-eqz p2, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance p0, Ln3/y/b/a/c0;

    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->a()I

    move-result p1

    const/16 p2, 0x1d

    const-string v0, "too short header: "

    invoke-static {p2, v0, p1}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v0

    if-eq v0, p0, :cond_4

    if-eqz p2, :cond_2

    return v1

    .line 4
    :cond_2
    new-instance p1, Ln3/y/b/a/c0;

    const-string p2, "expected header type "

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_4
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_6

    .line 6
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_6

    .line 7
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_6

    .line 8
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_6

    .line 9
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_6

    .line 10
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->o()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    return v1

    .line 11
    :cond_7
    new-instance p0, Ln3/y/b/a/c0;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static M(Ljava/lang/String;)[Ln3/k/c/c;
    .locals 17

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_10

    .line 3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ge v4, v5, :cond_3

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v8, v5, -0x41

    add-int/lit8 v9, v5, -0x5a

    mul-int/2addr v9, v8

    if-lez v9, :cond_1

    add-int/lit8 v8, v5, -0x61

    add-int/lit8 v9, v5, -0x7a

    mul-int/2addr v9, v8

    if-gtz v9, :cond_2

    :cond_1
    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5
    :cond_3
    :goto_2
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x7a

    if-eq v5, v8, :cond_e

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5a

    if-ne v5, v8, :cond_4

    goto/16 :goto_a

    .line 8
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [F

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    move v10, v9

    move v9, v3

    :goto_3
    if-ge v10, v8, :cond_d

    move v11, v3

    move v12, v11

    move v13, v12

    move v14, v10

    .line 10
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_a

    .line 11
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v7, 0x20

    if-eq v15, v7, :cond_7

    const/16 v7, 0x65

    if-eq v15, v6, :cond_6

    if-eq v15, v7, :cond_6

    packed-switch v15, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-nez v12, :cond_5

    const/4 v12, 0x1

    goto :goto_6

    :pswitch_1
    if-eq v14, v10, :cond_8

    if-nez v13, :cond_8

    :cond_5
    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    const/16 v7, 0x65

    :goto_5
    :pswitch_2
    const/4 v3, 0x1

    :cond_8
    :goto_6
    const/4 v13, 0x0

    :goto_7
    if-eqz v3, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_a
    :goto_8
    if-ge v10, v14, :cond_b

    add-int/lit8 v3, v9, 0x1

    .line 12
    invoke-virtual {v2, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    aput v10, v5, v9

    move v9, v3

    :cond_b
    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v14, v14, 0x1

    :goto_9
    move v10, v14

    const/4 v3, 0x0

    goto :goto_3

    .line 14
    :cond_d
    invoke-static {v5, v3, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->I([FII)[F

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move/from16 v16, v5

    move-object v5, v3

    move/from16 v3, v16

    goto :goto_b

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "error in parsing \""

    const-string v4, "\""

    invoke-static {v3, v2, v4}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    :goto_a
    new-array v5, v3, [F

    .line 16
    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 17
    new-instance v3, Ln3/k/c/c;

    invoke-direct {v3, v2, v5}, Ln3/k/c/c;-><init>(C[F)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v2, v4, 0x1

    const/4 v3, 0x0

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_10
    sub-int/2addr v4, v2

    const/4 v3, 0x1

    if-ne v4, v3, :cond_11

    .line 18
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    new-array v2, v2, [F

    .line 20
    new-instance v3, Ln3/k/c/c;

    invoke-direct {v3, v0, v2}, Ln3/k/c/c;-><init>(C[F)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ln3/k/c/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/k/c/c;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static M0(Ls1/w/f;JLs1/z/b/p;I)Landroidx/lifecycle/LiveData;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 1
    sget-object p0, Ls1/w/h;->a:Ls1/w/h;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p1, 0x1388

    :cond_1
    const-string p4, "context"

    .line 2
    invoke-static {p0, p4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "block"

    invoke-static {p3, p4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p4, Ln3/v/h;

    invoke-direct {p4, p0, p1, p2, p3}, Ln3/v/h;-><init>(Ls1/w/f;JLs1/z/b/p;)V

    return-object p4
.end method

.method public static final M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/c0/q;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ln3/c0/v;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/c0/v;

    iget v1, v0, Ln3/c0/v;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/c0/v;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/c0/v;

    invoke-direct {v0, p2}, Ln3/c0/v;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/c0/v;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/c0/v;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Ln3/c0/v;->g:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ls1/z/b/l;

    iget-object p0, v0, Ln3/c0/v;->f:Ljava/lang/Object;

    check-cast p0, Ln3/c0/q;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Ls1/w/k/a/c;->c:Ls1/w/f;

    invoke-static {p2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 5
    sget-object v2, Ln3/c0/d0;->d:Ln3/c0/d0$a;

    invoke-interface {p2, v2}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p2

    check-cast p2, Ln3/c0/d0;

    if-eqz p2, :cond_4

    .line 6
    iget-object p2, p2, Ln3/c0/d0;->c:Ls1/w/e;

    if-eqz p2, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    iput-object p0, v0, Ln3/c0/v;->f:Ljava/lang/Object;

    iput-object p1, v0, Ln3/c0/v;->g:Ljava/lang/Object;

    iput v4, v0, Ln3/c0/v;->e:I

    invoke-static {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->O(Ln3/c0/q;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 8
    :cond_5
    :goto_1
    check-cast p2, Ls1/w/f;

    .line 9
    :goto_2
    new-instance v2, Ln3/c0/w;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Ln3/c0/w;-><init>(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)V

    iput-object v4, v0, Ln3/c0/v;->f:Ljava/lang/Object;

    iput-object v4, v0, Ln3/c0/v;->g:Ljava/lang/Object;

    iput v3, v0, Ln3/c0/v;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    return-object p2
.end method

.method public static N(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->M(Ljava/lang/String;)[Ln3/k/c/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {v1, v0}, Ln3/k/c/c;->b([Ln3/k/c/c;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in parsing "

    invoke-static {v2, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static N0(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Ln3/r/a/p;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result p3

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result p3

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result p3

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result p3

    :goto_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 7
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 8
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 10
    :cond_3
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v3

    .line 11
    :cond_4
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 12
    new-instance p0, Ln3/r/a/p;

    invoke-direct {p0, v2}, Ln3/r/a/p;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 13
    :cond_5
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 14
    new-instance p0, Ln3/r/a/p;

    invoke-direct {p0, p1}, Ln3/r/a/p;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_6
    if-nez p3, :cond_d

    if-eqz v0, :cond_d

    const/16 p1, 0x1001

    if-eq v0, p1, :cond_b

    const/16 p1, 0x1003

    if-eq v0, p1, :cond_9

    const/16 p1, 0x2002

    if-eq v0, p1, :cond_7

    const/4 p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 15
    sget p1, Landroidx/fragment/R$animator;->fragment_close_enter:I

    goto :goto_1

    :cond_8
    sget p1, Landroidx/fragment/R$animator;->fragment_close_exit:I

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_a

    .line 16
    sget p1, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    goto :goto_1

    :cond_a
    sget p1, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    goto :goto_1

    :cond_b
    if-eqz p2, :cond_c

    .line 17
    sget p1, Landroidx/fragment/R$animator;->fragment_open_enter:I

    goto :goto_1

    :cond_c
    sget p1, Landroidx/fragment/R$animator;->fragment_open_exit:I

    :goto_1
    move p3, p1

    :cond_d
    if-eqz p3, :cond_11

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 20
    :try_start_0
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 21
    new-instance v0, Ln3/r/a/p;

    invoke-direct {v0, p2}, Ln3/r/a/p;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_e
    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 22
    throw p0

    :catch_1
    :cond_f
    :goto_2
    if-nez v1, :cond_11

    .line 23
    :try_start_1
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 24
    new-instance v0, Ln3/r/a/p;

    invoke-direct {v0, p2}, Ln3/r/a/p;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception p2

    if-nez p1, :cond_10

    .line 25
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 26
    new-instance p1, Ln3/r/a/p;

    invoke-direct {p1, p0}, Ln3/r/a/p;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    .line 27
    :cond_10
    throw p2

    :cond_11
    return-object v3
.end method

.method public static N1(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_1

    instance-of v0, p1, Ln3/k/j/h;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ln3/k/j/h;

    invoke-direct {v0, p1, p0}, Ln3/k/j/h;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final O(Ln3/c0/q;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/c0/q;",
            "Ls1/w/d<",
            "-",
            "Ls1/w/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v1, p1, Ln3/c0/t;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ln3/c0/t;

    iget v2, v1, Ln3/c0/t;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Ln3/c0/t;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Ln3/c0/t;

    invoke-direct {v1, p1}, Ln3/c0/t;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Ln3/c0/t;->d:Ljava/lang/Object;

    .line 1
    iget v2, v1, Ln3/c0/t;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v1, Ln3/c0/t;->g:Ljava/lang/Object;

    check-cast p0, Lq3/a/y;

    iget-object v0, v1, Ln3/c0/t;->f:Ljava/lang/Object;

    check-cast v0, Ln3/c0/q;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1, v3, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    .line 5
    iget-object v2, v1, Ls1/w/k/a/c;->c:Ls1/w/f;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 6
    sget v4, Lq3/a/p1;->e0:I

    sget-object v4, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {v2, v4}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v2

    check-cast v2, Lq3/a/p1;

    if-eqz v2, :cond_3

    new-instance v4, Ln3/c0/u;

    invoke-direct {v4, p1}, Ln3/c0/u;-><init>(Lq3/a/y;)V

    invoke-interface {v2, v4}, Lq3/a/p1;->I(Ls1/z/b/l;)Lq3/a/v0;

    .line 7
    :cond_3
    invoke-virtual {p0}, Ln3/c0/q;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-string v4, "transactionExecutor"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v1, Ln3/c0/t;->f:Ljava/lang/Object;

    iput-object p1, v1, Ln3/c0/t;->g:Ljava/lang/Object;

    iput v3, v1, Ln3/c0/t;->e:I

    .line 8
    new-instance v4, Lq3/a/o;

    invoke-static {v1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 9
    invoke-virtual {v4}, Lq3/a/o;->z()V

    .line 10
    new-instance v3, Ln3/c0/r;

    invoke-direct {v3, v2, p1}, Ln3/c0/r;-><init>(Ljava/util/concurrent/Executor;Lq3/a/p1;)V

    invoke-virtual {v4, v3}, Lq3/a/o;->r(Ls1/z/b/l;)V

    .line 11
    :try_start_0
    new-instance v3, Ln3/c0/s;

    invoke-direct {v3, v4, v2, p1}, Ln3/c0/s;-><init>(Lq3/a/n;Ljava/util/concurrent/Executor;Lq3/a/p1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 12
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to acquire a thread to perform the database transaction."

    invoke-direct {v3, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {v4, v3}, Lq3/a/o;->m(Ljava/lang/Throwable;)Z

    .line 14
    :goto_1
    invoke-virtual {v4}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    const-string v3, "frame"

    .line 15
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    if-ne v2, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p0

    move-object p0, p1

    move-object p1, v2

    .line 16
    :goto_2
    check-cast p1, Ls1/w/e;

    .line 17
    new-instance v1, Ln3/c0/d0;

    invoke-direct {v1, p0, p1}, Ln3/c0/d0;-><init>(Lq3/a/p1;Ls1/w/e;)V

    .line 18
    invoke-virtual {v0}, Ln3/c0/q;->getSuspendingTransactionId()Ljava/lang/ThreadLocal;

    move-result-object v0

    const-string v2, "suspendingTransactionId"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    .line 19
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 20
    new-instance p0, Lq3/a/y2/a0;

    invoke-direct {p0, v2, v0}, Lq3/a/y2/a0;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 21
    invoke-interface {p1, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-interface {p1, p0}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p0

    return-object p0
.end method

.method public static O0()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    .line 1
    sget-object v0, Ln3/e/b/j1/t1/b/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ln3/e/b/j1/t1/b/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Ln3/e/b/j1/t1/b/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ln3/e/b/j1/t1/b/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ln3/e/b/j1/t1/b/b;

    new-instance v2, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Ln3/e/b/j1/t1/b/b;-><init>(Landroid/os/Handler;)V

    sput-object v1, Ln3/e/b/j1/t1/b/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Ln3/e/b/j1/t1/b/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static final P(Landroidx/fragment/app/Fragment;Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)Ls1/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Ln3/v/y0;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Ls1/a/c<",
            "TVM;>;",
            "Ls1/z/b/a<",
            "+",
            "Ln3/v/b1;",
            ">;",
            "Ls1/z/b/a<",
            "+",
            "Ln3/v/a1$b;",
            ">;)",
            "Ls1/g<",
            "TVM;>;"
        }
    .end annotation

    const-string v0, "$this$createViewModelLazy"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p3, Ln3/r/a/s0;

    invoke-direct {p3, p0}, Ln3/r/a/s0;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2
    :goto_0
    new-instance p0, Ln3/v/z0;

    invoke-direct {p0, p1, p2, p3}, Ln3/v/z0;-><init>(Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)V

    return-object p0
.end method

.method public static P0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    .line 1
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 4
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 5
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 6
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static Q(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ln3/k/i/g0/d;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-lt v0, v2, :cond_0

    .line 2
    new-instance p1, Ln3/k/i/g0/b;

    invoke-direct {p1, p0, v1, p2}, Ln3/k/i/g0/b;-><init>(Landroid/view/inputmethod/InputConnection;ZLn3/k/i/g0/d;)V

    return-object p1

    .line 3
    :cond_0
    sget-object v3, Ln3/k/i/g0/a;->a:[Ljava/lang/String;

    if-lt v0, v2, :cond_1

    .line 4
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    if-eqz p1, :cond_4

    move-object v3, p1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v0, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    move-object v3, v0

    .line 8
    :cond_4
    :goto_0
    array-length p1, v3

    if-nez p1, :cond_5

    return-object p0

    .line 9
    :cond_5
    new-instance p1, Ln3/k/i/g0/c;

    invoke-direct {p1, p0, v1, p2}, Ln3/k/i/g0/c;-><init>(Landroid/view/inputmethod/InputConnection;ZLn3/k/i/g0/d;)V

    return-object p1

    .line 10
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "onCommitContentListener must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "editorInfo must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Q0(Landroidx/lifecycle/LiveData;Ln3/c/a/c/a;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Ln3/c/a/c/a<",
            "TX;TY;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/v/i0;

    invoke-direct {v0}, Ln3/v/i0;-><init>()V

    .line 2
    new-instance v1, Ln3/v/v0;

    invoke-direct {v1, v0, p1}, Ln3/v/v0;-><init>(Ln3/v/i0;Ln3/c/a/c/a;)V

    invoke-virtual {v0, p0, v1}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    return-object v0
.end method

.method public static R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/c0/q;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ln3/c0/q$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ln3/c0/q$a;

    invoke-direct {v0, p0, p1, p2}, Ln3/c0/q$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final R0(Ln3/z/b2;Ls1/z/b/p;)Ln3/z/b2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/z/b2<",
            "TT;>;",
            "Ls1/z/b/p<",
            "-TT;-",
            "Ls1/w/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ln3/z/b2<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "$this$map"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/z/b2;

    .line 2
    iget-object v1, p0, Ln3/z/b2;->a:Lq3/a/x2/f;

    .line 3
    new-instance v2, Ln3/z/j2;

    invoke-direct {v2, v1, p1}, Ln3/z/j2;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 4
    iget-object p0, p0, Ln3/z/b2;->b:Ln3/z/h3;

    .line 5
    invoke-direct {v0, v2, p0}, Ln3/z/b2;-><init>(Lq3/a/x2/f;Ln3/z/h3;)V

    return-object v0
.end method

.method public static S(Ln3/e/a/e/k2/k;Ljava/lang/Integer;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/a/e/k2/k;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/a/e/k2/a;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "0"

    .line 1
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Ln3/e/a/e/k2/k;->b(Ljava/lang/String;)Ln3/e/a/e/k2/e;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 5
    invoke-virtual {p0, v2}, Ln3/e/a/e/k2/k;->b(Ljava/lang/String;)Ln3/e/a/e/k2/e;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_3

    move-object v0, v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static S0(Landroid/media/MediaFormat;Landroidx/media2/exoplayer/external/video/ColorInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->c:I

    const-string v1, "color-transfer"

    invoke-static {p0, v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->T0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2
    iget v0, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->a:I

    const-string v1, "color-standard"

    invoke-static {p0, v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->T0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 3
    iget v0, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->b:I

    const-string v1, "color-range"

    invoke-static {p0, v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->T0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 4
    iget-object p1, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->d:[B

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v0, "hdr-static-info"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public static T([Ln3/k/c/c;)[Ln3/k/c/c;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ln3/k/c/c;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3
    new-instance v2, Ln3/k/c/c;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ln3/k/c/c;-><init>(Ln3/k/c/c;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static T0(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static U()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    sget-object v0, Ln3/e/b/j1/t1/b/a;->a:Ln3/e/b/j1/t1/b/a;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ln3/e/b/j1/t1/b/a;->a:Ln3/e/b/j1/t1/b/a;

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Ln3/e/b/j1/t1/b/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ln3/e/b/j1/t1/b/a;->a:Ln3/e/b/j1/t1/b/a;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ln3/e/b/j1/t1/b/a;

    invoke-direct {v1}, Ln3/e/b/j1/t1/b/a;-><init>()V

    sput-object v1, Ln3/e/b/j1/t1/b/a;->a:Ln3/e/b/j1/t1/b/a;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Ln3/e/b/j1/t1/b/a;->a:Ln3/e/b/j1/t1/b/a;

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static U0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    .line 5
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static final V(Ln3/z/z0;Ln3/b0/a/q;Ln3/z/z0;Ln3/z/y0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/b0/a/q;",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/z/y0;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$dispatchDiff"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newList"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "diffResult"

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v3, p3, Ln3/z/y0;->b:Z

    const-string v4, "oldList"

    if-eqz v3, :cond_7

    .line 2
    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ln3/z/b1;

    invoke-direct {v0, p0, p2, p1}, Ln3/z/b1;-><init>(Ln3/z/z0;Ln3/z/z0;Ln3/b0/a/q;)V

    .line 4
    iget-object p0, p3, Ln3/z/y0;->a:Ln3/b0/a/h$d;

    .line 5
    invoke-virtual {p0, v0}, Ln3/b0/a/h$d;->b(Ln3/b0/a/q;)V

    .line 6
    sget-object p0, Ln3/z/y;->c:Ln3/z/y;

    iget-object p1, v0, Ln3/z/b1;->f:Ln3/z/z0;

    invoke-interface {p1}, Ln3/z/z0;->c()I

    move-result p1

    iget p2, v0, Ln3/z/b1;->a:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    iget-object p2, v0, Ln3/z/b1;->g:Ln3/z/z0;

    invoke-interface {p2}, Ln3/z/z0;->c()I

    move-result p2

    iget p3, v0, Ln3/z/b1;->a:I

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    if-lez p2, :cond_1

    if-lez p1, :cond_0

    .line 8
    iget-object v1, v0, Ln3/z/b1;->h:Ln3/b0/a/q;

    invoke-interface {v1, p3, p1, p0}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    .line 9
    :cond_0
    iget-object p1, v0, Ln3/z/b1;->h:Ln3/b0/a/q;

    invoke-interface {p1, p3, p2}, Ln3/b0/a/q;->onInserted(II)V

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    .line 10
    iget-object v1, v0, Ln3/z/b1;->h:Ln3/b0/a/q;

    neg-int v2, p2

    invoke-interface {v1, p3, v2}, Ln3/b0/a/q;->onRemoved(II)V

    add-int/2addr p1, p2

    if-lez p1, :cond_2

    .line 11
    iget-object p2, v0, Ln3/z/b1;->h:Ln3/b0/a/q;

    invoke-interface {p2, p3, p1, p0}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    .line 12
    :cond_2
    :goto_0
    iget-object p1, v0, Ln3/z/b1;->g:Ln3/z/z0;

    invoke-interface {p1}, Ln3/z/z0;->c()I

    move-result p1

    iput p1, v0, Ln3/z/b1;->a:I

    .line 13
    iget-object p1, v0, Ln3/z/b1;->f:Ln3/z/z0;

    invoke-interface {p1}, Ln3/z/z0;->d()I

    move-result p1

    iget p2, v0, Ln3/z/b1;->b:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 14
    iget-object p2, v0, Ln3/z/b1;->g:Ln3/z/z0;

    invoke-interface {p2}, Ln3/z/z0;->d()I

    move-result p2

    iget v1, v0, Ln3/z/b1;->b:I

    sub-int/2addr p2, v1

    .line 15
    iget v2, v0, Ln3/z/b1;->a:I

    iget v3, v0, Ln3/z/b1;->c:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    sub-int v1, v2, p1

    .line 16
    iget-object v3, v0, Ln3/z/b1;->f:Ln3/z/z0;

    invoke-interface {v3}, Ln3/z/z0;->a()I

    move-result v3

    sub-int/2addr v3, p1

    if-eq v1, v3, :cond_3

    const/4 p3, 0x1

    :cond_3
    if-lez p2, :cond_4

    .line 17
    iget-object v3, v0, Ln3/z/b1;->h:Ln3/b0/a/q;

    invoke-interface {v3, v2, p2}, Ln3/b0/a/q;->onInserted(II)V

    goto :goto_1

    :cond_4
    if-gez p2, :cond_5

    .line 18
    iget-object v3, v0, Ln3/z/b1;->h:Ln3/b0/a/q;

    add-int/2addr v2, p2

    neg-int v4, p2

    invoke-interface {v3, v2, v4}, Ln3/b0/a/q;->onRemoved(II)V

    add-int/2addr p1, p2

    :cond_5
    :goto_1
    if-lez p1, :cond_6

    if-eqz p3, :cond_6

    .line 19
    iget-object p2, v0, Ln3/z/b1;->h:Ln3/b0/a/q;

    invoke-interface {p2, v1, p1, p0}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    .line 20
    :cond_6
    iget-object p0, v0, Ln3/z/b1;->g:Ln3/z/z0;

    invoke-interface {p0}, Ln3/z/z0;->d()I

    move-result p0

    iput p0, v0, Ln3/z/b1;->b:I

    goto/16 :goto_2

    .line 21
    :cond_7
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Ln3/z/z0;->c()I

    move-result p3

    invoke-interface {p2}, Ln3/z/z0;->c()I

    move-result v0

    .line 23
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 24
    invoke-interface {p0}, Ln3/z/z0;->c()I

    move-result v0

    invoke-interface {p0}, Ln3/z/z0;->b()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    invoke-interface {p2}, Ln3/z/z0;->c()I

    move-result v0

    invoke-interface {p2}, Ln3/z/z0;->b()I

    move-result v2

    add-int/2addr v2, v0

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v1, v0, p3

    if-lez v1, :cond_8

    .line 27
    invoke-interface {p1, p3, v1}, Ln3/b0/a/q;->onRemoved(II)V

    .line 28
    invoke-interface {p1, p3, v1}, Ln3/b0/a/q;->onInserted(II)V

    .line 29
    :cond_8
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 30
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 31
    invoke-interface {p0}, Ln3/z/z0;->c()I

    move-result v0

    invoke-interface {p2}, Ln3/z/z0;->a()I

    move-result v2

    if-le v0, v2, :cond_9

    move v0, v2

    .line 32
    :cond_9
    invoke-interface {p0}, Ln3/z/z0;->c()I

    move-result v2

    invoke-interface {p0}, Ln3/z/z0;->b()I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p2}, Ln3/z/z0;->a()I

    move-result v2

    if-le v3, v2, :cond_a

    move v3, v2

    .line 33
    :cond_a
    sget-object v2, Ln3/z/y;->a:Ln3/z/y;

    sub-int v4, v1, v0

    if-lez v4, :cond_b

    .line 34
    invoke-interface {p1, v0, v4, v2}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    :cond_b
    sub-int/2addr v3, p3

    if-lez v3, :cond_c

    .line 35
    invoke-interface {p1, p3, v3, v2}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    .line 36
    :cond_c
    invoke-interface {p2}, Ln3/z/z0;->c()I

    move-result v0

    invoke-interface {p0}, Ln3/z/z0;->a()I

    move-result v2

    if-le v0, v2, :cond_d

    move v0, v2

    .line 37
    :cond_d
    invoke-interface {p2}, Ln3/z/z0;->c()I

    move-result v2

    invoke-interface {p2}, Ln3/z/z0;->b()I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p0}, Ln3/z/z0;->a()I

    move-result v2

    if-le v3, v2, :cond_e

    move v3, v2

    .line 38
    :cond_e
    sget-object v2, Ln3/z/y;->b:Ln3/z/y;

    sub-int/2addr v1, v0

    if-lez v1, :cond_f

    .line 39
    invoke-interface {p1, v0, v1, v2}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    :cond_f
    sub-int/2addr v3, p3

    if-lez v3, :cond_10

    .line 40
    invoke-interface {p1, p3, v3, v2}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    .line 41
    :cond_10
    invoke-interface {p2}, Ln3/z/z0;->a()I

    move-result p2

    invoke-interface {p0}, Ln3/z/z0;->a()I

    move-result p3

    sub-int/2addr p2, p3

    if-lez p2, :cond_11

    .line 42
    invoke-interface {p0}, Ln3/z/z0;->a()I

    move-result p0

    invoke-interface {p1, p0, p2}, Ln3/b0/a/q;->onInserted(II)V

    goto :goto_2

    :cond_11
    if-gez p2, :cond_12

    .line 43
    invoke-interface {p0}, Ln3/z/z0;->a()I

    move-result p0

    add-int/2addr p0, p2

    neg-int p2, p2

    invoke-interface {p1, p0, p2}, Ln3/b0/a/q;->onRemoved(II)V

    :cond_12
    :goto_2
    return-void
.end method

.method public static V0(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "r"

    .line 2
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    .line 7
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 9
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p2

    :catchall_0
    move-exception p2

    .line 10
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 11
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-object v0
.end method

.method public static W(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/v/i0;

    invoke-direct {v0}, Ln3/v/i0;-><init>()V

    .line 2
    new-instance v1, Ln3/v/x0;

    invoke-direct {v1, v0}, Ln3/v/x0;-><init>(Ln3/v/i0;)V

    invoke-virtual {v0, p0, v1}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    return-object v0
.end method

.method public static W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static X()V
    .locals 2

    .line 1
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    return-void
.end method

.method public static X0(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public static Y0(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    const-string p0, "translationY"

    .line 1
    invoke-static {p2, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final Z(Ln3/z/b2;Ls1/z/b/p;)Ln3/z/b2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/z/b2<",
            "TT;>;",
            "Ls1/z/b/p<",
            "-TT;-",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ln3/z/b2<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$filter"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/z/b2;

    .line 2
    iget-object v1, p0, Ln3/z/b2;->a:Lq3/a/x2/f;

    .line 3
    new-instance v2, Ln3/z/i2;

    invoke-direct {v2, v1, p1}, Ln3/z/i2;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 4
    iget-object p0, p0, Ln3/z/b2;->b:Ln3/z/h3;

    .line 5
    invoke-direct {v0, v2, p0}, Ln3/z/b2;-><init>(Lq3/a/x2/f;Ln3/z/h3;)V

    return-object v0
.end method

.method public static Z0(FF[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 4

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    array-length v1, p2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    aget-object v1, p2, v1

    invoke-static {p0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->Y0(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 5
    aget-object v3, p2, v2

    invoke-static {p0, p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->Y0(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Ln3/y/b/a/p0/c;->a:Ln3/y/b/a/p0/c;

    return-void
.end method

.method public static a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/i/b/h/d;",
            "I",
            "Ljava/util/ArrayList<",
            "Ln3/i/b/h/m/n;",
            ">;",
            "Ln3/i/b/h/m/n;",
            ")",
            "Ln3/i/b/h/m/n;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget v0, p0, Ln3/i/b/h/d;->F0:I

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Ln3/i/b/h/d;->G0:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    .line 3
    iget v3, p3, Ln3/i/b/h/m/n;->b:I

    if-eq v0, v3, :cond_4

    :cond_1
    move v3, v1

    .line 4
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 5
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/i/b/h/m/n;

    .line 6
    iget v5, v4, Ln3/i/b/h/m/n;->b:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p3, p1, v4}, Ln3/i/b/h/m/n;->d(ILn3/i/b/h/m/n;)V

    .line 8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-nez p3, :cond_c

    .line 9
    instance-of v3, p0, Ln3/i/b/h/i;

    if-eqz v3, :cond_a

    .line 10
    move-object v3, p0

    check-cast v3, Ln3/i/b/h/i;

    move v4, v1

    .line 11
    :goto_3
    iget v5, v3, Ln3/i/b/h/i;->I0:I

    if-ge v4, v5, :cond_8

    .line 12
    iget-object v5, v3, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    aget-object v5, v5, v4

    if-nez p1, :cond_6

    .line 13
    iget v6, v5, Ln3/i/b/h/d;->F0:I

    if-eq v6, v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    .line 14
    iget v6, v5, Ln3/i/b/h/d;->G0:I

    if-eq v6, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v6, v2

    :goto_4
    if-eq v6, v2, :cond_a

    move v2, v1

    .line 15
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 16
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/m/n;

    .line 17
    iget v4, v3, Ln3/i/b/h/m/n;->b:I

    if-ne v4, v6, :cond_9

    move-object p3, v3

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p3, :cond_b

    .line 18
    new-instance p3, Ln3/i/b/h/m/n;

    invoke-direct {p3, p1}, Ln3/i/b/h/m/n;-><init>(I)V

    .line 19
    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_c
    invoke-virtual {p3, p0}, Ln3/i/b/h/m/n;->a(Ln3/i/b/h/d;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 21
    instance-of v2, p0, Ln3/i/b/h/g;

    if-eqz v2, :cond_e

    .line 22
    move-object v2, p0

    check-cast v2, Ln3/i/b/h/g;

    .line 23
    iget-object v3, v2, Ln3/i/b/h/g;->K0:Ln3/i/b/h/c;

    .line 24
    iget v2, v2, Ln3/i/b/h/g;->L0:I

    if-nez v2, :cond_d

    move v1, v0

    .line 25
    :cond_d
    invoke-virtual {v3, v1, p2, p3}, Ln3/i/b/h/c;->c(ILjava/util/ArrayList;Ln3/i/b/h/m/n;)V

    :cond_e
    if-nez p1, :cond_f

    .line 26
    iget v0, p3, Ln3/i/b/h/m/n;->b:I

    .line 27
    iput v0, p0, Ln3/i/b/h/d;->F0:I

    .line 28
    iget-object v0, p0, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    invoke-virtual {v0, p1, p2, p3}, Ln3/i/b/h/c;->c(ILjava/util/ArrayList;Ln3/i/b/h/m/n;)V

    .line 29
    iget-object v0, p0, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    invoke-virtual {v0, p1, p2, p3}, Ln3/i/b/h/c;->c(ILjava/util/ArrayList;Ln3/i/b/h/m/n;)V

    goto :goto_7

    .line 30
    :cond_f
    iget v0, p3, Ln3/i/b/h/m/n;->b:I

    .line 31
    iput v0, p0, Ln3/i/b/h/d;->G0:I

    .line 32
    iget-object v0, p0, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    invoke-virtual {v0, p1, p2, p3}, Ln3/i/b/h/c;->c(ILjava/util/ArrayList;Ln3/i/b/h/m/n;)V

    .line 33
    iget-object v0, p0, Ln3/i/b/h/d;->J:Ln3/i/b/h/c;

    invoke-virtual {v0, p1, p2, p3}, Ln3/i/b/h/c;->c(ILjava/util/ArrayList;Ln3/i/b/h/m/n;)V

    .line 34
    iget-object v0, p0, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    invoke-virtual {v0, p1, p2, p3}, Ln3/i/b/h/c;->c(ILjava/util/ArrayList;Ln3/i/b/h/m/n;)V

    .line 35
    :goto_7
    iget-object p0, p0, Ln3/i/b/h/d;->M:Ln3/i/b/h/c;

    invoke-virtual {p0, p1, p2, p3}, Ln3/i/b/h/c;->c(ILjava/util/ArrayList;Ln3/i/b/h/m/n;)V

    :cond_10
    return-object p3
.end method

.method public static a1(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 3
    :goto_0
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    instance-of v0, p2, Ln3/b/f/y0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p2, Ln3/b/f/y0;

    invoke-interface {p2}, Ln3/b/f/y0;->i5()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static final b(Ljava/util/List;Ljava/lang/Object;Ln3/z/g3;Ln3/z/g3;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T::TR;>(",
            "Ljava/util/List<",
            "Ln3/z/g3<",
            "TR;>;>;TR;",
            "Ln3/z/g3<",
            "TT;>;",
            "Ln3/z/g3<",
            "TT;>;II)V"
        }
    .end annotation

    const-string v0, "$this$addSeparatorPage"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p2, Ln3/z/g3;->a:[I

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 2
    iget-object v1, p3, Ln3/z/g3;->a:[I

    :cond_1
    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    const-string p3, "$this$plus"

    .line 3
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "elements"

    invoke-static {v1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length p3, p2

    .line 5
    array-length v2, v1

    add-int v3, p3, v2

    .line 6
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    const/4 v3, 0x0

    .line 7
    invoke-static {v1, v3, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p3, "result"

    .line 8
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this$distinct"

    .line 9
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this$toMutableSet"

    .line 10
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p3, Ljava/util/LinkedHashSet;

    array-length v1, p2

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    const-string v1, "$this$toCollection"

    .line 12
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "destination"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v1, p2

    :goto_1
    if-ge v3, v1, :cond_2

    aget v2, p2, v3

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {p3}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 16
    invoke-static {p2}, Ls1/u/i;->E0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Ls1/u/i;->R0(Ljava/util/Collection;)[I

    move-result-object p2

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    if-eqz v1, :cond_4

    move-object p2, v1

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    if-nez v1, :cond_6

    .line 17
    :goto_2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "originalPageOffsets"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    invoke-static {p1, p2, p4, p5}, Landroid/support/v4/media/session/MediaSessionCompat;->m1(Ljava/lang/Object;[III)Ln3/z/g3;

    move-result-object p1

    .line 19
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Separator page expected adjacentPageBefore or adjacentPageAfter, but both were null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b0(Ljava/util/ArrayList;I)Ln3/i/b/h/m/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ln3/i/b/h/m/n;",
            ">;I)",
            "Ln3/i/b/h/m/n;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/b/h/m/n;

    .line 3
    iget v3, v2, Ln3/i/b/h/m/n;->b:I

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b1(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ViewParent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedFling"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method public static c([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static c0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    sput-boolean v1, Landroid/support/v4/media/session/MediaSessionCompat;->d:Z

    .line 4
    :cond_0
    sget-object v0, Landroid/support/v4/media/session/MediaSessionCompat;->c:Ljava/lang/Class;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    sget-boolean v2, Landroid/support/v4/media/session/MediaSessionCompat;->f:Z

    if-nez v2, :cond_2

    :try_start_1
    const-string v2, "mUnthemedEntries"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat;->e:Ljava/lang/reflect/Field;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8
    :catch_1
    sput-boolean v1, Landroid/support/v4/media/session/MediaSessionCompat;->f:Z

    .line 9
    :cond_2
    sget-object v0, Landroid/support/v4/media/session/MediaSessionCompat;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 10
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p0

    :catch_2
    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_4
    return-void
.end method

.method public static c1(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ViewParent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedPreFling"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ln3/i/b/h/e;Ln3/i/b/d;Ljava/util/ArrayList;I)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/i/b/h/e;",
            "Ln3/i/b/d;",
            "Ljava/util/ArrayList<",
            "Ln3/i/b/h/d;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 1
    sget-object v12, Ln3/i/b/h/d$a;->c:Ln3/i/b/h/d$a;

    const/4 v13, 0x2

    if-nez p3, :cond_0

    .line 2
    iget v1, v0, Ln3/i/b/h/e;->P0:I

    .line 3
    iget-object v2, v0, Ln3/i/b/h/e;->S0:[Ln3/i/b/h/b;

    move v15, v1

    move-object/from16 v16, v2

    const/16 v17, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget v1, v0, Ln3/i/b/h/e;->Q0:I

    .line 5
    iget-object v2, v0, Ln3/i/b/h/e;->R0:[Ln3/i/b/h/b;

    move v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v13

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_70

    .line 6
    aget-object v1, v16, v9

    .line 7
    iget-boolean v2, v1, Ln3/i/b/h/b;->t:Z

    const/16 v18, 0x0

    const/16 v8, 0x8

    const/4 v4, 0x1

    if-nez v2, :cond_19

    .line 8
    iget v2, v1, Ln3/i/b/h/b;->o:I

    mul-int/2addr v2, v13

    .line 9
    iget-object v5, v1, Ln3/i/b/h/b;->a:Ln3/i/b/h/d;

    move-object v6, v5

    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_14

    .line 10
    iget v14, v1, Ln3/i/b/h/b;->i:I

    add-int/2addr v14, v4

    iput v14, v1, Ln3/i/b/h/b;->i:I

    .line 11
    iget-object v14, v5, Ln3/i/b/h/d;->C0:[Ln3/i/b/h/d;

    iget v3, v1, Ln3/i/b/h/b;->o:I

    aput-object v18, v14, v3

    .line 12
    iget-object v14, v5, Ln3/i/b/h/d;->B0:[Ln3/i/b/h/d;

    aput-object v18, v14, v3

    .line 13
    iget v14, v5, Ln3/i/b/h/d;->j0:I

    if-eq v14, v8, :cond_f

    .line 14
    iget v14, v1, Ln3/i/b/h/b;->l:I

    add-int/2addr v14, v4

    iput v14, v1, Ln3/i/b/h/b;->l:I

    .line 15
    invoke-virtual {v5, v3}, Ln3/i/b/h/d;->p(I)Ln3/i/b/h/d$a;

    move-result-object v3

    if-eq v3, v12, :cond_3

    .line 16
    iget v3, v1, Ln3/i/b/h/b;->m:I

    iget v14, v1, Ln3/i/b/h/b;->o:I

    if-nez v14, :cond_1

    .line 17
    invoke-virtual {v5}, Ln3/i/b/h/d;->w()I

    move-result v14

    goto :goto_3

    :cond_1
    if-ne v14, v4, :cond_2

    .line 18
    invoke-virtual {v5}, Ln3/i/b/h/d;->q()I

    move-result v14

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    add-int/2addr v3, v14

    .line 19
    iput v3, v1, Ln3/i/b/h/b;->m:I

    .line 20
    :cond_3
    iget v3, v1, Ln3/i/b/h/b;->m:I

    iget-object v14, v5, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v14, v14, v2

    invoke-virtual {v14}, Ln3/i/b/h/c;->e()I

    move-result v14

    add-int/2addr v14, v3

    iput v14, v1, Ln3/i/b/h/b;->m:I

    .line 21
    iget-object v3, v5, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v21, v2, 0x1

    aget-object v3, v3, v21

    invoke-virtual {v3}, Ln3/i/b/h/c;->e()I

    move-result v3

    add-int/2addr v3, v14

    iput v3, v1, Ln3/i/b/h/b;->m:I

    .line 22
    iget v3, v1, Ln3/i/b/h/b;->n:I

    iget-object v14, v5, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v14, v14, v2

    invoke-virtual {v14}, Ln3/i/b/h/c;->e()I

    move-result v14

    add-int/2addr v14, v3

    iput v14, v1, Ln3/i/b/h/b;->n:I

    .line 23
    iget-object v3, v5, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v3, v3, v21

    invoke-virtual {v3}, Ln3/i/b/h/c;->e()I

    move-result v3

    add-int/2addr v3, v14

    iput v3, v1, Ln3/i/b/h/b;->n:I

    .line 24
    iget-object v3, v1, Ln3/i/b/h/b;->b:Ln3/i/b/h/d;

    if-nez v3, :cond_4

    .line 25
    iput-object v5, v1, Ln3/i/b/h/b;->b:Ln3/i/b/h/d;

    .line 26
    :cond_4
    iput-object v5, v1, Ln3/i/b/h/b;->d:Ln3/i/b/h/d;

    .line 27
    iget-object v3, v5, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    iget v14, v1, Ln3/i/b/h/b;->o:I

    aget-object v8, v3, v14

    if-ne v8, v12, :cond_f

    .line 28
    iget-object v8, v5, Ln3/i/b/h/d;->n:[I

    aget v22, v8, v14

    const/4 v4, 0x3

    if-eqz v22, :cond_6

    aget v13, v8, v14

    if-eq v13, v4, :cond_6

    aget v13, v8, v14

    const/4 v4, 0x2

    if-ne v13, v4, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v25, v7

    goto :goto_8

    .line 29
    :cond_6
    :goto_4
    iget v4, v1, Ln3/i/b/h/b;->j:I

    const/4 v13, 0x1

    add-int/2addr v4, v13

    iput v4, v1, Ln3/i/b/h/b;->j:I

    .line 30
    iget-object v4, v5, Ln3/i/b/h/d;->A0:[F

    aget v13, v4, v14

    const/16 v20, 0x0

    cmpl-float v25, v13, v20

    if-lez v25, :cond_7

    move/from16 v25, v7

    .line 31
    iget v7, v1, Ln3/i/b/h/b;->k:F

    aget v4, v4, v14

    add-float/2addr v7, v4

    iput v7, v1, Ln3/i/b/h/b;->k:F

    goto :goto_5

    :cond_7
    move/from16 v25, v7

    .line 32
    :goto_5
    iget v4, v5, Ln3/i/b/h/d;->j0:I

    const/16 v7, 0x8

    if-eq v4, v7, :cond_9

    .line 33
    aget-object v3, v3, v14

    if-ne v3, v12, :cond_9

    aget v3, v8, v14

    if-eqz v3, :cond_8

    aget v3, v8, v14

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    :cond_8
    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_c

    const/4 v3, 0x0

    cmpg-float v4, v13, v3

    if-gez v4, :cond_a

    const/4 v3, 0x1

    .line 34
    iput-boolean v3, v1, Ln3/i/b/h/b;->q:Z

    goto :goto_7

    :cond_a
    const/4 v3, 0x1

    .line 35
    iput-boolean v3, v1, Ln3/i/b/h/b;->r:Z

    .line 36
    :goto_7
    iget-object v3, v1, Ln3/i/b/h/b;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_b

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Ln3/i/b/h/b;->h:Ljava/util/ArrayList;

    .line 38
    :cond_b
    iget-object v3, v1, Ln3/i/b/h/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_c
    iget-object v3, v1, Ln3/i/b/h/b;->f:Ln3/i/b/h/d;

    if-nez v3, :cond_d

    .line 40
    iput-object v5, v1, Ln3/i/b/h/b;->f:Ln3/i/b/h/d;

    .line 41
    :cond_d
    iget-object v3, v1, Ln3/i/b/h/b;->g:Ln3/i/b/h/d;

    if-eqz v3, :cond_e

    .line 42
    iget-object v3, v3, Ln3/i/b/h/d;->B0:[Ln3/i/b/h/d;

    iget v4, v1, Ln3/i/b/h/b;->o:I

    aput-object v5, v3, v4

    .line 43
    :cond_e
    iput-object v5, v1, Ln3/i/b/h/b;->g:Ln3/i/b/h/d;

    .line 44
    :goto_8
    iget v3, v1, Ln3/i/b/h/b;->o:I

    goto :goto_9

    :cond_f
    move/from16 v25, v7

    :goto_9
    if-eq v6, v5, :cond_10

    .line 45
    iget-object v3, v6, Ln3/i/b/h/d;->C0:[Ln3/i/b/h/d;

    iget v4, v1, Ln3/i/b/h/b;->o:I

    aput-object v5, v3, v4

    .line 46
    :cond_10
    iget-object v3, v5, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v3, :cond_11

    .line 47
    iget-object v3, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 48
    iget-object v4, v3, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v6, v4, v2

    iget-object v6, v6, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v6, :cond_11

    aget-object v4, v4, v2

    iget-object v4, v4, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    iget-object v4, v4, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    if-eq v4, v5, :cond_12

    :cond_11
    move-object/from16 v3, v18

    :cond_12
    if-eqz v3, :cond_13

    move/from16 v7, v25

    goto :goto_a

    :cond_13
    move-object v3, v5

    const/4 v7, 0x1

    :goto_a
    move-object v6, v5

    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v13, 0x2

    move-object v5, v3

    goto/16 :goto_2

    .line 49
    :cond_14
    iget-object v3, v1, Ln3/i/b/h/b;->b:Ln3/i/b/h/d;

    if-eqz v3, :cond_15

    .line 50
    iget v4, v1, Ln3/i/b/h/b;->m:I

    iget-object v3, v3, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ln3/i/b/h/c;->e()I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v1, Ln3/i/b/h/b;->m:I

    .line 51
    :cond_15
    iget-object v3, v1, Ln3/i/b/h/b;->d:Ln3/i/b/h/d;

    if-eqz v3, :cond_16

    .line 52
    iget v4, v1, Ln3/i/b/h/b;->m:I

    iget-object v3, v3, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ln3/i/b/h/c;->e()I

    move-result v2

    sub-int/2addr v4, v2

    iput v4, v1, Ln3/i/b/h/b;->m:I

    .line 53
    :cond_16
    iput-object v5, v1, Ln3/i/b/h/b;->c:Ln3/i/b/h/d;

    .line 54
    iget v2, v1, Ln3/i/b/h/b;->o:I

    if-nez v2, :cond_17

    iget-boolean v2, v1, Ln3/i/b/h/b;->p:Z

    if-eqz v2, :cond_17

    .line 55
    iput-object v5, v1, Ln3/i/b/h/b;->e:Ln3/i/b/h/d;

    goto :goto_b

    .line 56
    :cond_17
    iget-object v2, v1, Ln3/i/b/h/b;->a:Ln3/i/b/h/d;

    iput-object v2, v1, Ln3/i/b/h/b;->e:Ln3/i/b/h/d;

    .line 57
    :goto_b
    iget-boolean v2, v1, Ln3/i/b/h/b;->r:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Ln3/i/b/h/b;->q:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_c

    :cond_18
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, v1, Ln3/i/b/h/b;->s:Z

    const/4 v2, 0x1

    goto :goto_d

    :cond_19
    move v2, v4

    .line 58
    :goto_d
    iput-boolean v2, v1, Ln3/i/b/h/b;->t:Z

    if-eqz v11, :cond_1b

    .line 59
    iget-object v2, v1, Ln3/i/b/h/b;->a:Ln3/i/b/h/d;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_e

    :cond_1a
    move/from16 v29, v9

    move-object/from16 v35, v12

    move/from16 v30, v15

    const/16 v19, 0x0

    const/16 v20, 0x2

    goto/16 :goto_4d

    .line 60
    :cond_1b
    :goto_e
    iget-object v13, v1, Ln3/i/b/h/b;->a:Ln3/i/b/h/d;

    .line 61
    iget-object v14, v1, Ln3/i/b/h/b;->c:Ln3/i/b/h/d;

    .line 62
    iget-object v8, v1, Ln3/i/b/h/b;->b:Ln3/i/b/h/d;

    .line 63
    iget-object v7, v1, Ln3/i/b/h/b;->d:Ln3/i/b/h/d;

    .line 64
    iget-object v2, v1, Ln3/i/b/h/b;->e:Ln3/i/b/h/d;

    .line 65
    iget v3, v1, Ln3/i/b/h/b;->k:F

    .line 66
    iget-object v4, v0, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aget-object v4, v4, p3

    sget-object v5, Ln3/i/b/h/d$a;->b:Ln3/i/b/h/d$a;

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x1

    goto :goto_f

    :cond_1c
    const/4 v4, 0x0

    :goto_f
    if-nez p3, :cond_20

    .line 67
    iget v5, v2, Ln3/i/b/h/d;->w0:I

    const/4 v6, 0x1

    if-nez v5, :cond_1d

    const/16 v23, 0x1

    goto :goto_10

    :cond_1d
    const/16 v23, 0x0

    :goto_10
    if-ne v5, v6, :cond_1e

    move/from16 v22, v6

    move/from16 v24, v9

    const/4 v9, 0x2

    goto :goto_11

    :cond_1e
    move/from16 v24, v9

    const/4 v9, 0x2

    const/16 v22, 0x0

    :goto_11
    if-ne v5, v9, :cond_1f

    move/from16 v5, v23

    goto :goto_14

    :cond_1f
    move/from16 v5, v23

    goto :goto_15

    :cond_20
    move/from16 v24, v9

    const/4 v6, 0x1

    const/4 v9, 0x2

    .line 68
    iget v5, v2, Ln3/i/b/h/d;->x0:I

    if-nez v5, :cond_21

    move/from16 v22, v6

    goto :goto_12

    :cond_21
    const/16 v22, 0x0

    :goto_12
    if-ne v5, v6, :cond_22

    const/4 v6, 0x1

    goto :goto_13

    :cond_22
    const/4 v6, 0x0

    :goto_13
    if-ne v5, v9, :cond_23

    move/from16 v5, v22

    move/from16 v22, v6

    :goto_14
    move/from16 v25, v22

    move/from16 v22, v5

    const/4 v5, 0x1

    goto :goto_16

    :cond_23
    move/from16 v5, v22

    move/from16 v22, v6

    :goto_15
    move/from16 v25, v22

    move/from16 v22, v5

    const/4 v5, 0x0

    :goto_16
    move/from16 v27, v3

    move-object v9, v13

    const/4 v6, 0x0

    :goto_17
    if-nez v6, :cond_30

    .line 69
    iget-object v3, v9, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v3, v3, v17

    if-eqz v5, :cond_24

    const/16 v29, 0x1

    goto :goto_18

    :cond_24
    const/16 v29, 0x4

    .line 70
    :goto_18
    invoke-virtual {v3}, Ln3/i/b/h/c;->e()I

    move-result v30

    move/from16 v31, v6

    .line 71
    iget-object v6, v9, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aget-object v6, v6, p3

    if-ne v6, v12, :cond_25

    iget-object v6, v9, Ln3/i/b/h/d;->n:[I

    aget v6, v6, p3

    if-nez v6, :cond_25

    const/4 v6, 0x1

    goto :goto_19

    :cond_25
    const/4 v6, 0x0

    .line 72
    :goto_19
    iget-object v11, v3, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v11, :cond_26

    if-eq v9, v13, :cond_26

    .line 73
    invoke-virtual {v11}, Ln3/i/b/h/c;->e()I

    move-result v11

    add-int v30, v11, v30

    :cond_26
    move/from16 v11, v30

    if-eqz v5, :cond_27

    if-eq v9, v13, :cond_27

    if-eq v9, v8, :cond_27

    move/from16 v30, v15

    const/16 v29, 0x8

    goto :goto_1a

    :cond_27
    move/from16 v30, v15

    .line 74
    :goto_1a
    iget-object v15, v3, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v15, :cond_2a

    if-ne v9, v8, :cond_28

    move-object/from16 v32, v2

    .line 75
    iget-object v2, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v15, v15, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    move-object/from16 v33, v13

    const/4 v13, 0x6

    invoke-virtual {v10, v2, v15, v11, v13}, Ln3/i/b/d;->f(Ln3/i/b/g;Ln3/i/b/g;II)V

    goto :goto_1b

    :cond_28
    move-object/from16 v32, v2

    move-object/from16 v33, v13

    .line 76
    iget-object v2, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v13, v15, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v13, v11, v15}, Ln3/i/b/d;->f(Ln3/i/b/g;Ln3/i/b/g;II)V

    :goto_1b
    if-eqz v6, :cond_29

    if-nez v5, :cond_29

    const/4 v2, 0x5

    goto :goto_1c

    :cond_29
    move/from16 v2, v29

    .line 77
    :goto_1c
    iget-object v6, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v3, v3, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    iget-object v3, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    invoke-virtual {v10, v6, v3, v11, v2}, Ln3/i/b/d;->d(Ln3/i/b/g;Ln3/i/b/g;II)Ln3/i/b/b;

    goto :goto_1d

    :cond_2a
    move-object/from16 v32, v2

    move-object/from16 v33, v13

    :goto_1d
    if-eqz v4, :cond_2c

    .line 78
    iget v2, v9, Ln3/i/b/h/d;->j0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2b

    .line 79
    iget-object v2, v9, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aget-object v2, v2, p3

    if-ne v2, v12, :cond_2b

    .line 80
    iget-object v2, v9, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    aget-object v2, v2, v17

    iget-object v2, v2, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    const/4 v6, 0x5

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v2, v11, v6}, Ln3/i/b/d;->f(Ln3/i/b/g;Ln3/i/b/g;II)V

    goto :goto_1e

    :cond_2b
    const/4 v11, 0x0

    .line 81
    :goto_1e
    iget-object v2, v9, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v2, v2, v17

    iget-object v2, v2, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v3, v0, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v3, v3, v17

    iget-object v3, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v3, v11, v6}, Ln3/i/b/d;->f(Ln3/i/b/g;Ln3/i/b/g;II)V

    .line 82
    :cond_2c
    iget-object v2, v9, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v2, :cond_2d

    .line 83
    iget-object v2, v2, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 84
    iget-object v3, v2, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v6, v3, v17

    iget-object v6, v6, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v6, :cond_2d

    aget-object v3, v3, v17

    iget-object v3, v3, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    iget-object v3, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    if-eq v3, v9, :cond_2e

    :cond_2d
    move-object/from16 v2, v18

    :cond_2e
    if-eqz v2, :cond_2f

    move-object v9, v2

    move/from16 v6, v31

    goto :goto_1f

    :cond_2f
    const/4 v6, 0x1

    :goto_1f
    move-object/from16 v11, p2

    move/from16 v15, v30

    move-object/from16 v2, v32

    move-object/from16 v13, v33

    goto/16 :goto_17

    :cond_30
    move-object/from16 v32, v2

    move-object/from16 v33, v13

    move/from16 v30, v15

    if-eqz v7, :cond_34

    .line 85
    iget-object v2, v14, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v2, :cond_34

    .line 86
    iget-object v2, v7, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v2, v2, v3

    .line 87
    iget-object v6, v7, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aget-object v6, v6, p3

    if-ne v6, v12, :cond_31

    iget-object v6, v7, Ln3/i/b/h/d;->n:[I

    aget v6, v6, p3

    if-nez v6, :cond_31

    const/4 v6, 0x1

    goto :goto_20

    :cond_31
    const/4 v6, 0x0

    :goto_20
    if-eqz v6, :cond_32

    if-nez v5, :cond_32

    .line 88
    iget-object v6, v2, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    iget-object v9, v6, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    if-ne v9, v0, :cond_32

    .line 89
    iget-object v9, v2, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v6, v6, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    invoke-virtual {v2}, Ln3/i/b/h/c;->e()I

    move-result v11

    neg-int v11, v11

    const/4 v13, 0x5

    invoke-virtual {v10, v9, v6, v11, v13}, Ln3/i/b/d;->d(Ln3/i/b/g;Ln3/i/b/g;II)Ln3/i/b/b;

    goto :goto_21

    :cond_32
    const/4 v13, 0x5

    if-eqz v5, :cond_33

    .line 90
    iget-object v6, v2, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    iget-object v9, v6, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    if-ne v9, v0, :cond_33

    .line 91
    iget-object v9, v2, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v6, v6, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    invoke-virtual {v2}, Ln3/i/b/h/c;->e()I

    move-result v11

    neg-int v11, v11

    const/4 v15, 0x4

    invoke-virtual {v10, v9, v6, v11, v15}, Ln3/i/b/d;->d(Ln3/i/b/g;Ln3/i/b/g;II)Ln3/i/b/b;

    .line 92
    :cond_33
    :goto_21
    iget-object v6, v2, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v9, v14, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v3, v9, v3

    iget-object v3, v3, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    iget-object v3, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 93
    invoke-virtual {v2}, Ln3/i/b/h/c;->e()I

    move-result v2

    neg-int v2, v2

    const/4 v9, 0x6

    .line 94
    invoke-virtual {v10, v6, v3, v2, v9}, Ln3/i/b/d;->g(Ln3/i/b/g;Ln3/i/b/g;II)V

    goto :goto_22

    :cond_34
    const/4 v13, 0x5

    :goto_22
    if-eqz v4, :cond_35

    .line 95
    iget-object v2, v0, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v4, v14, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v6, v4, v3

    iget-object v6, v6, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    aget-object v3, v4, v3

    .line 96
    invoke-virtual {v3}, Ln3/i/b/h/c;->e()I

    move-result v3

    const/16 v4, 0x8

    .line 97
    invoke-virtual {v10, v2, v6, v3, v4}, Ln3/i/b/d;->f(Ln3/i/b/g;Ln3/i/b/g;II)V

    .line 98
    :cond_35
    iget-object v2, v1, Ln3/i/b/h/b;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3f

    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3f

    .line 100
    iget-boolean v6, v1, Ln3/i/b/h/b;->q:Z

    if-eqz v6, :cond_36

    iget-boolean v6, v1, Ln3/i/b/h/b;->s:Z

    if-nez v6, :cond_36

    .line 101
    iget v6, v1, Ln3/i/b/h/b;->j:I

    int-to-float v6, v6

    goto :goto_23

    :cond_36
    move/from16 v6, v27

    :goto_23
    move-object/from16 v15, v18

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_24
    if-ge v11, v3, :cond_3f

    .line 102
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v4, v23

    check-cast v4, Ln3/i/b/h/d;

    .line 103
    iget-object v13, v4, Ln3/i/b/h/d;->A0:[F

    aget v13, v13, p3

    const/16 v20, 0x0

    cmpg-float v23, v13, v20

    if-gez v23, :cond_38

    .line 104
    iget-boolean v13, v1, Ln3/i/b/h/b;->s:Z

    if-eqz v13, :cond_37

    .line 105
    iget-object v0, v4, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v4, v17, 0x1

    aget-object v4, v0, v4

    iget-object v4, v4, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    aget-object v0, v0, v17

    iget-object v0, v0, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    move-object/from16 v23, v2

    const/4 v2, 0x0

    const/4 v13, 0x4

    invoke-virtual {v10, v4, v0, v2, v13}, Ln3/i/b/d;->d(Ln3/i/b/g;Ln3/i/b/g;II)Ln3/i/b/b;

    move/from16 v28, v13

    move v13, v2

    goto :goto_26

    :cond_37
    move-object/from16 v23, v2

    const/4 v2, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v28, 0x4

    goto :goto_25

    :cond_38
    move-object/from16 v23, v2

    const/16 v28, 0x4

    const/4 v2, 0x0

    :goto_25
    cmpl-float v29, v13, v2

    if-nez v29, :cond_39

    .line 106
    iget-object v0, v4, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v2, v17, 0x1

    aget-object v2, v0, v2

    iget-object v2, v2, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    aget-object v0, v0, v17

    iget-object v0, v0, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    const/16 v4, 0x8

    const/4 v13, 0x0

    invoke-virtual {v10, v2, v0, v13, v4}, Ln3/i/b/d;->d(Ln3/i/b/g;Ln3/i/b/g;II)Ln3/i/b/b;

    :goto_26
    move/from16 v34, v3

    move/from16 v29, v6

    move-object/from16 v35, v12

    move/from16 v19, v13

    const/16 v20, 0x0

    goto/16 :goto_2b

    :cond_39
    const/16 v19, 0x0

    if-eqz v15, :cond_3e

    .line 107
    iget-object v2, v15, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v15, v2, v17

    iget-object v15, v15, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    add-int/lit8 v31, v17, 0x1

    .line 108
    aget-object v2, v2, v31

    iget-object v2, v2, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 109
    iget-object v0, v4, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    move/from16 v34, v3

    aget-object v3, v0, v17

    iget-object v3, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 110
    aget-object v0, v0, v31

    iget-object v0, v0, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    move-object/from16 v31, v4

    .line 111
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/d;->m()Ln3/i/b/b;

    move-result-object v4

    move-object/from16 v35, v12

    const/4 v12, 0x0

    .line 112
    iput v12, v4, Ln3/i/b/b;->b:F

    cmpl-float v20, v6, v12

    const/high16 v12, -0x40800000    # -1.0f

    if-eqz v20, :cond_3d

    cmpl-float v20, v9, v13

    if-nez v20, :cond_3a

    goto :goto_28

    :cond_3a
    const/16 v20, 0x0

    cmpl-float v36, v9, v20

    if-nez v36, :cond_3b

    .line 113
    iget-object v0, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v15, v3}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    .line 114
    iget-object v0, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    invoke-interface {v0, v2, v12}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    goto :goto_27

    :cond_3b
    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v29, :cond_3c

    .line 115
    iget-object v2, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    invoke-interface {v2, v3, v12}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    .line 116
    iget-object v2, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-interface {v2, v0, v3}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    :goto_27
    move/from16 v29, v6

    goto :goto_29

    :cond_3c
    div-float/2addr v9, v6

    div-float v29, v13, v6

    div-float v9, v9, v29

    move/from16 v29, v6

    .line 117
    iget-object v6, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    invoke-interface {v6, v15, v12}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    .line 118
    iget-object v6, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    const/high16 v12, -0x40800000    # -1.0f

    invoke-interface {v6, v2, v12}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    .line 119
    iget-object v2, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    invoke-interface {v2, v0, v9}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    .line 120
    iget-object v0, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    neg-float v2, v9

    invoke-interface {v0, v3, v2}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    goto :goto_29

    :cond_3d
    :goto_28
    move/from16 v29, v6

    move v6, v12

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    .line 121
    iget-object v9, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    invoke-interface {v9, v15, v12}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    .line 122
    iget-object v9, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    invoke-interface {v9, v2, v6}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    .line 123
    iget-object v2, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    invoke-interface {v2, v0, v12}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    .line 124
    iget-object v0, v4, Ln3/i/b/b;->d:Ln3/i/b/b$a;

    invoke-interface {v0, v3, v6}, Ln3/i/b/b$a;->d(Ln3/i/b/g;F)V

    .line 125
    :goto_29
    invoke-virtual {v10, v4}, Ln3/i/b/d;->c(Ln3/i/b/b;)V

    goto :goto_2a

    :cond_3e
    move/from16 v34, v3

    move-object/from16 v31, v4

    move/from16 v29, v6

    move-object/from16 v35, v12

    const/16 v20, 0x0

    :goto_2a
    move v9, v13

    move-object/from16 v15, v31

    :goto_2b
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    const/4 v13, 0x5

    move-object/from16 v0, p0

    move-object/from16 v2, v23

    move/from16 v6, v29

    move/from16 v3, v34

    move-object/from16 v12, v35

    goto/16 :goto_24

    :cond_3f
    move-object/from16 v35, v12

    const/16 v19, 0x0

    const/16 v28, 0x4

    if-eqz v8, :cond_46

    if-eq v8, v7, :cond_40

    if-eqz v5, :cond_46

    :cond_40
    move-object/from16 v0, v33

    .line 126
    iget-object v0, v0, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v0, v0, v17

    .line 127
    iget-object v1, v14, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v2, v17, 0x1

    aget-object v1, v1, v2

    .line 128
    iget-object v0, v0, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v0, :cond_41

    iget-object v0, v0, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    move-object v3, v0

    goto :goto_2c

    :cond_41
    move-object/from16 v3, v18

    .line 129
    :goto_2c
    iget-object v0, v1, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v0, :cond_42

    iget-object v0, v0, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    move-object v6, v0

    goto :goto_2d

    :cond_42
    move-object/from16 v6, v18

    .line 130
    :goto_2d
    iget-object v0, v8, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v0, v0, v17

    .line 131
    iget-object v1, v7, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v1, v1, v2

    if-eqz v3, :cond_44

    if-eqz v6, :cond_44

    if-nez p3, :cond_43

    move-object/from16 v2, v32

    .line 132
    iget v2, v2, Ln3/i/b/h/d;->f0:F

    goto :goto_2e

    :cond_43
    move-object/from16 v2, v32

    .line 133
    iget v2, v2, Ln3/i/b/h/d;->g0:F

    :goto_2e
    move v5, v2

    .line 134
    invoke-virtual {v0}, Ln3/i/b/h/c;->e()I

    move-result v4

    .line 135
    invoke-virtual {v1}, Ln3/i/b/h/c;->e()I

    move-result v9

    .line 136
    iget-object v2, v0, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v0, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    const/4 v11, 0x7

    move-object/from16 v1, p1

    move-object v12, v7

    move-object v7, v0

    move-object v13, v8

    move v8, v9

    move/from16 v15, v24

    const/16 v20, 0x2

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Ln3/i/b/d;->b(Ln3/i/b/g;Ln3/i/b/g;IFLn3/i/b/g;Ln3/i/b/g;II)V

    goto :goto_2f

    :cond_44
    move-object v12, v7

    move-object v13, v8

    move/from16 v15, v24

    const/16 v20, 0x2

    :cond_45
    :goto_2f
    move/from16 v29, v15

    goto/16 :goto_49

    :cond_46
    move-object v12, v7

    move-object v13, v8

    move/from16 v15, v24

    move-object/from16 v0, v33

    const/16 v20, 0x2

    if-eqz v22, :cond_59

    if-eqz v13, :cond_59

    .line 137
    iget v2, v1, Ln3/i/b/h/b;->j:I

    if-lez v2, :cond_47

    iget v1, v1, Ln3/i/b/h/b;->i:I

    if-ne v1, v2, :cond_47

    const/16 v27, 0x1

    goto :goto_30

    :cond_47
    move/from16 v27, v19

    :goto_30
    move-object v9, v13

    move-object v11, v9

    :goto_31
    if-eqz v11, :cond_45

    .line 138
    iget-object v1, v11, Ln3/i/b/h/d;->C0:[Ln3/i/b/h/d;

    aget-object v1, v1, p3

    move-object v8, v1

    :goto_32
    if-eqz v8, :cond_48

    .line 139
    iget v1, v8, Ln3/i/b/h/d;->j0:I

    const/16 v7, 0x8

    if-ne v1, v7, :cond_49

    .line 140
    iget-object v1, v8, Ln3/i/b/h/d;->C0:[Ln3/i/b/h/d;

    aget-object v8, v1, p3

    goto :goto_32

    :cond_48
    const/16 v7, 0x8

    :cond_49
    if-nez v8, :cond_4b

    if-ne v11, v12, :cond_4a

    goto :goto_33

    :cond_4a
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move/from16 v29, v15

    move v15, v7

    goto/16 :goto_3b

    .line 141
    :cond_4b
    :goto_33
    iget-object v1, v11, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v1, v1, v17

    .line 142
    iget-object v2, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 143
    iget-object v3, v1, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v3, :cond_4c

    iget-object v3, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    goto :goto_34

    :cond_4c
    move-object/from16 v3, v18

    :goto_34
    if-eq v9, v11, :cond_4d

    .line 144
    iget-object v3, v9, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v4, v17, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    goto :goto_35

    :cond_4d
    if-ne v11, v13, :cond_4f

    if-ne v9, v11, :cond_4f

    .line 145
    iget-object v3, v0, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v4, v3, v17

    iget-object v4, v4, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v4, :cond_4e

    aget-object v3, v3, v17

    iget-object v3, v3, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    iget-object v3, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    goto :goto_35

    :cond_4e
    move-object/from16 v3, v18

    .line 146
    :cond_4f
    :goto_35
    invoke-virtual {v1}, Ln3/i/b/h/c;->e()I

    move-result v1

    .line 147
    iget-object v4, v11, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v5, v17, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ln3/i/b/h/c;->e()I

    move-result v4

    if-eqz v8, :cond_50

    .line 148
    iget-object v6, v8, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v6, v6, v17

    .line 149
    iget-object v7, v6, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    move-object/from16 v23, v6

    .line 150
    iget-object v6, v11, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v6, v6, v5

    iget-object v6, v6, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    :goto_36
    move-object/from16 v37, v23

    move-object/from16 v23, v6

    move-object/from16 v6, v37

    goto :goto_38

    .line 151
    :cond_50
    iget-object v6, v14, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v6, v6, v5

    iget-object v6, v6, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v6, :cond_51

    .line 152
    iget-object v7, v6, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    move-object/from16 v23, v6

    goto :goto_37

    :cond_51
    move-object/from16 v23, v6

    move-object/from16 v7, v18

    .line 153
    :goto_37
    iget-object v6, v11, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v6, v6, v5

    iget-object v6, v6, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    goto :goto_36

    :goto_38
    if-eqz v6, :cond_52

    .line 154
    invoke-virtual {v6}, Ln3/i/b/h/c;->e()I

    move-result v6

    add-int/2addr v4, v6

    :cond_52
    if-eqz v9, :cond_53

    .line 155
    iget-object v6, v9, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ln3/i/b/h/c;->e()I

    move-result v6

    add-int/2addr v1, v6

    :cond_53
    if-eqz v2, :cond_57

    if-eqz v3, :cond_57

    if-eqz v7, :cond_57

    if-eqz v23, :cond_57

    if-ne v11, v13, :cond_54

    .line 156
    iget-object v1, v13, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v1, v1, v17

    invoke-virtual {v1}, Ln3/i/b/h/c;->e()I

    move-result v1

    :cond_54
    move v6, v1

    if-ne v11, v12, :cond_55

    .line 157
    iget-object v1, v12, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ln3/i/b/h/c;->e()I

    move-result v1

    move/from16 v24, v1

    goto :goto_39

    :cond_55
    move/from16 v24, v4

    :goto_39
    if-eqz v27, :cond_56

    const/16 v26, 0x8

    goto :goto_3a

    :cond_56
    const/16 v26, 0x5

    :goto_3a
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    const/4 v4, 0x5

    move/from16 v29, v15

    move v15, v4

    move v4, v6

    move-object v6, v7

    const/16 v21, 0x8

    move-object/from16 v7, v23

    move/from16 v15, v21

    move-object/from16 v21, v8

    move/from16 v8, v24

    move-object/from16 v23, v9

    move/from16 v9, v26

    .line 158
    invoke-virtual/range {v1 .. v9}, Ln3/i/b/d;->b(Ln3/i/b/g;Ln3/i/b/g;IFLn3/i/b/g;Ln3/i/b/g;II)V

    goto :goto_3b

    :cond_57
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move/from16 v29, v15

    const/16 v15, 0x8

    .line 159
    :goto_3b
    iget v1, v11, Ln3/i/b/h/d;->j0:I

    if-eq v1, v15, :cond_58

    move-object v9, v11

    goto :goto_3c

    :cond_58
    move-object/from16 v9, v23

    :goto_3c
    move-object/from16 v11, v21

    move/from16 v15, v29

    goto/16 :goto_31

    :cond_59
    move/from16 v29, v15

    const/16 v15, 0x8

    if-eqz v25, :cond_68

    if-eqz v13, :cond_68

    .line 160
    iget v2, v1, Ln3/i/b/h/b;->j:I

    if-lez v2, :cond_5a

    iget v1, v1, Ln3/i/b/h/b;->i:I

    if-ne v1, v2, :cond_5a

    const/16 v27, 0x1

    goto :goto_3d

    :cond_5a
    move/from16 v27, v19

    :goto_3d
    move-object v9, v13

    move-object v11, v9

    :goto_3e
    if-eqz v11, :cond_65

    .line 161
    iget-object v1, v11, Ln3/i/b/h/d;->C0:[Ln3/i/b/h/d;

    aget-object v1, v1, p3

    :goto_3f
    if-eqz v1, :cond_5b

    .line 162
    iget v2, v1, Ln3/i/b/h/d;->j0:I

    if-ne v2, v15, :cond_5b

    .line 163
    iget-object v1, v1, Ln3/i/b/h/d;->C0:[Ln3/i/b/h/d;

    aget-object v1, v1, p3

    goto :goto_3f

    :cond_5b
    if-eq v11, v13, :cond_63

    if-eq v11, v12, :cond_63

    if-eqz v1, :cond_63

    if-ne v1, v12, :cond_5c

    move-object/from16 v8, v18

    goto :goto_40

    :cond_5c
    move-object v8, v1

    .line 164
    :goto_40
    iget-object v1, v11, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v1, v1, v17

    .line 165
    iget-object v2, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 166
    iget-object v3, v9, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v4, v17, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 167
    invoke-virtual {v1}, Ln3/i/b/h/c;->e()I

    move-result v1

    .line 168
    iget-object v5, v11, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ln3/i/b/h/c;->e()I

    move-result v5

    if-eqz v8, :cond_5e

    .line 169
    iget-object v6, v8, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v6, v6, v17

    .line 170
    iget-object v7, v6, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 171
    iget-object v15, v6, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v15, :cond_5d

    iget-object v15, v15, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    goto :goto_42

    :cond_5d
    move-object/from16 v15, v18

    goto :goto_42

    .line 172
    :cond_5e
    iget-object v6, v12, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v6, v6, v17

    if-eqz v6, :cond_5f

    .line 173
    iget-object v7, v6, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    goto :goto_41

    :cond_5f
    move-object/from16 v7, v18

    .line 174
    :goto_41
    iget-object v15, v11, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v15, v15, v4

    iget-object v15, v15, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    :goto_42
    if-eqz v6, :cond_60

    .line 175
    invoke-virtual {v6}, Ln3/i/b/h/c;->e()I

    move-result v6

    add-int/2addr v6, v5

    move/from16 v23, v6

    goto :goto_43

    :cond_60
    move/from16 v23, v5

    .line 176
    :goto_43
    iget-object v5, v9, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ln3/i/b/h/c;->e()I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v27, :cond_61

    const/16 v24, 0x8

    goto :goto_44

    :cond_61
    move/from16 v24, v28

    :goto_44
    if-eqz v2, :cond_62

    if-eqz v3, :cond_62

    if-eqz v7, :cond_62

    if-eqz v15, :cond_62

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move/from16 v26, v28

    move-object v6, v7

    move-object v7, v15

    move-object v15, v8

    move/from16 v8, v23

    move-object/from16 v23, v9

    move/from16 v9, v24

    .line 177
    invoke-virtual/range {v1 .. v9}, Ln3/i/b/d;->b(Ln3/i/b/g;Ln3/i/b/g;IFLn3/i/b/g;Ln3/i/b/g;II)V

    goto :goto_45

    :cond_62
    move-object v15, v8

    move-object/from16 v23, v9

    move/from16 v26, v28

    :goto_45
    move-object v8, v15

    goto :goto_46

    :cond_63
    move-object/from16 v23, v9

    move/from16 v26, v28

    move-object v8, v1

    .line 178
    :goto_46
    iget v1, v11, Ln3/i/b/h/d;->j0:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_64

    move-object v9, v11

    goto :goto_47

    :cond_64
    move-object/from16 v9, v23

    :goto_47
    move v15, v2

    move-object v11, v8

    move/from16 v28, v26

    goto/16 :goto_3e

    .line 179
    :cond_65
    iget-object v1, v13, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v1, v1, v17

    .line 180
    iget-object v0, v0, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v0, v0, v17

    iget-object v0, v0, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    .line 181
    iget-object v2, v12, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v11, v2, v3

    .line 182
    iget-object v2, v14, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v2, v2, v3

    iget-object v15, v2, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v0, :cond_67

    if-eq v13, v12, :cond_66

    .line 183
    iget-object v2, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v0, v0, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    invoke-virtual {v1}, Ln3/i/b/h/c;->e()I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v0, v1, v3}, Ln3/i/b/d;->d(Ln3/i/b/g;Ln3/i/b/g;II)Ln3/i/b/b;

    goto :goto_48

    :cond_66
    if-eqz v15, :cond_67

    .line 184
    iget-object v2, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v3, v0, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    invoke-virtual {v1}, Ln3/i/b/h/c;->e()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v11, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v7, v15, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 185
    invoke-virtual {v11}, Ln3/i/b/h/c;->e()I

    move-result v8

    const/4 v9, 0x5

    move-object/from16 v1, p1

    .line 186
    invoke-virtual/range {v1 .. v9}, Ln3/i/b/d;->b(Ln3/i/b/g;Ln3/i/b/g;IFLn3/i/b/g;Ln3/i/b/g;II)V

    :cond_67
    :goto_48
    if-eqz v15, :cond_68

    if-eq v13, v12, :cond_68

    .line 187
    iget-object v0, v11, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v1, v15, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    invoke-virtual {v11}, Ln3/i/b/h/c;->e()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v10, v0, v1, v2, v3}, Ln3/i/b/d;->d(Ln3/i/b/g;Ln3/i/b/g;II)Ln3/i/b/b;

    :cond_68
    :goto_49
    if-nez v22, :cond_69

    if-eqz v25, :cond_6f

    :cond_69
    if-eqz v13, :cond_6f

    if-eq v13, v12, :cond_6f

    .line 188
    iget-object v0, v13, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v1, v0, v17

    .line 189
    iget-object v2, v12, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    .line 190
    iget-object v4, v1, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v4, :cond_6a

    iget-object v4, v4, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    goto :goto_4a

    :cond_6a
    move-object/from16 v4, v18

    .line 191
    :goto_4a
    iget-object v5, v2, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v5, :cond_6b

    iget-object v5, v5, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    goto :goto_4b

    :cond_6b
    move-object/from16 v5, v18

    :goto_4b
    if-eq v14, v12, :cond_6d

    .line 192
    iget-object v5, v14, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v5, v5, v3

    .line 193
    iget-object v5, v5, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v5, :cond_6c

    iget-object v5, v5, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    move-object/from16 v18, v5

    :cond_6c
    move-object/from16 v6, v18

    goto :goto_4c

    :cond_6d
    move-object v6, v5

    :goto_4c
    if-ne v13, v12, :cond_6e

    .line 194
    aget-object v1, v0, v17

    .line 195
    aget-object v2, v0, v3

    :cond_6e
    if-eqz v4, :cond_6f

    if-eqz v6, :cond_6f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 196
    invoke-virtual {v1}, Ln3/i/b/h/c;->e()I

    move-result v0

    .line 197
    iget-object v7, v12, Ln3/i/b/h/d;->N:[Ln3/i/b/h/c;

    aget-object v3, v7, v3

    invoke-virtual {v3}, Ln3/i/b/h/c;->e()I

    move-result v8

    .line 198
    iget-object v3, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget-object v7, v2, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v0

    invoke-virtual/range {v1 .. v9}, Ln3/i/b/d;->b(Ln3/i/b/g;Ln3/i/b/g;IFLn3/i/b/g;Ln3/i/b/g;II)V

    :cond_6f
    :goto_4d
    add-int/lit8 v9, v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v13, v20

    move/from16 v15, v30

    move-object/from16 v12, v35

    goto/16 :goto_1

    :cond_70
    return-void
.end method

.method public static d0(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static d1(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 7

    .line 1
    instance-of v0, p0, Ln3/k/i/k;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p0

    check-cast v1, Ln3/k/i/k;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ln3/k/i/k;->j0(Landroid/view/View;II[II)V

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ViewParent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedPreScroll"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Landroid/hardware/camera2/CaptureRequest$Builder;Ln3/e/b/j1/j0;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ln3/e/a/f/i$a;->b(Ln3/e/b/j1/j0;)Ln3/e/a/f/i$a;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/a/f/i$a;->a()Ln3/e/a/f/i;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ln3/e/b/j1/i1;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/j0$a;

    .line 3
    invoke-virtual {v1}, Ln3/e/b/j1/j0$a;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ln3/e/a/f/i;->getConfig()Ln3/e/b/j1/j0;

    move-result-object v3

    invoke-interface {v3, v1}, Ln3/e/b/j1/j0;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CaptureRequest.Key is not supported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "CaptureRequestBuilder"

    .line 7
    invoke-static {v3, v1, v2}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e0(Ln3/e/a/e/k2/e;)Ln3/e/b/j1/g1;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ln3/e/a/e/k2/p/a;

    invoke-direct {v1, p0}, Ln3/e/a/e/k2/p/a;-><init>(Ln3/e/a/e/k2/e;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 7
    :cond_2
    sget-object v1, Ln3/e/a/e/k2/p/i;->a:Ljava/util/Set;

    .line 8
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 9
    invoke-virtual {p0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 12
    sget-object v4, Ln3/e/a/e/k2/p/i;->a:Ljava/util/Set;

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Ln3/e/a/e/k2/p/i;->b:Ljava/util/Set;

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    .line 14
    new-instance v1, Ln3/e/a/e/k2/p/i;

    invoke-direct {v1}, Ln3/e/a/e/k2/p/i;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    sget-object v1, Ln3/e/a/e/k2/p/h;->a:Ljava/util/List;

    .line 16
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SAMSUNG"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Ln3/e/a/e/k2/p/h;->a:Ljava/util/List;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 17
    invoke-virtual {v7, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 18
    invoke-virtual {p0, v4}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    if-eqz v4, :cond_6

    .line 19
    new-instance v4, Ln3/e/a/e/k2/p/h;

    invoke-direct {v4}, Ln3/e/a/e/k2/p/h;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SM-N920"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 22
    invoke-virtual {p0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    if-eqz v2, :cond_8

    .line 23
    new-instance p0, Ln3/e/a/e/k2/p/c;

    invoke-direct {p0}, Ln3/e/a/e/k2/p/c;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_8
    new-instance p0, Ln3/e/b/j1/g1;

    invoke-direct {p0, v0}, Ln3/e/b/j1/g1;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static e1(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
    .locals 10

    move-object v0, p0

    .line 1
    instance-of v1, v0, Ln3/k/i/l;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ln3/k/i/l;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Ln3/k/i/l;->z0(Landroid/view/View;IIIII[I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    aget v2, p7, v1

    add-int/2addr v2, p4

    aput v2, p7, v1

    const/4 v1, 0x1

    .line 4
    aget v2, p7, v1

    add-int/2addr v2, p5

    aput v2, p7, v1

    .line 5
    instance-of v1, v0, Ln3/k/i/k;

    if-eqz v1, :cond_1

    .line 6
    move-object v3, v0

    check-cast v3, Ln3/k/i/k;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Ln3/k/i/k;->J(Landroid/view/View;IIIII)V

    goto :goto_0

    :cond_1
    if-nez p6, :cond_2

    .line 7
    :try_start_0
    invoke-interface/range {p0 .. p5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedScroll"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public static f(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    .line 1
    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->g(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 2
    invoke-static {p0, p1, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->g(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    const/16 v1, 0x82

    const/16 v3, 0x21

    const/16 v4, 0x42

    const/16 v5, 0x11

    const/4 v6, 0x1

    if-eq p0, v5, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v4, :cond_2

    if-ne p0, v1, :cond_1

    .line 3
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p3, Landroid/graphics/Rect;->top:I

    if-gt v7, v8, :cond_5

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p3, Landroid/graphics/Rect;->left:I

    if-gt v7, v8, :cond_5

    goto :goto_0

    .line 6
    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v8, :cond_5

    goto :goto_0

    .line 7
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_5

    :goto_0
    move v7, v6

    goto :goto_1

    :cond_5
    move v7, v2

    :goto_1
    if-nez v7, :cond_6

    return v6

    :cond_6
    if-eq p0, v5, :cond_d

    if-ne p0, v4, :cond_7

    goto :goto_3

    .line 8
    :cond_7
    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->P0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p2

    if-eq p0, v5, :cond_b

    if-eq p0, v3, :cond_a

    if-eq p0, v4, :cond_9

    if-ne p0, v1, :cond_8

    .line 9
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 10
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_9
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 12
    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 13
    :cond_b
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->left:I

    :goto_2
    sub-int/2addr p0, p1

    .line 14
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-ge p2, p0, :cond_c

    move v2, v6

    :cond_c
    return v2

    :cond_d
    :goto_3
    return v6

    :cond_e
    :goto_4
    return v2
.end method

.method public static f0(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    return v0

    .line 3
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, -0x1

    const/16 v3, 0x19

    if-le v0, v3, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 6
    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    .line 8
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_6

    .line 9
    aget-object v5, p0, v4

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    if-lt v6, v7, :cond_5

    .line 11
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x60

    if-ne v6, v7, :cond_5

    .line 13
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return v2
.end method

.method public static f1(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ln3/k/b/d/c;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_f

    const/4 v1, 0x0

    const-string v4, "font-family"

    move-object/from16 v5, p0

    .line 2
    invoke-interface {v5, v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 6
    sget-object v6, Landroidx/core/R$styleable;->FontFamily:[I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 7
    sget v6, Landroidx/core/R$styleable;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 8
    sget v7, Landroidx/core/R$styleable;->FontFamily_fontProviderPackage:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 9
    sget v8, Landroidx/core/R$styleable;->FontFamily_fontProviderQuery:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 10
    sget v9, Landroidx/core/R$styleable;->FontFamily_fontProviderCerts:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 11
    sget v11, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 12
    sget v12, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    const/16 v13, 0x1f4

    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 13
    sget v13, Landroidx/core/R$styleable;->FontFamily_fontProviderSystemFontFamily:I

    .line 14
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 15
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x3

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 16
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 17
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/MediaSessionCompat;->B1(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-static {v0, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->h1(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    .line 19
    new-instance v1, Ln3/k/b/d/f;

    new-instance v2, Ln3/k/f/e;

    invoke-direct {v2, v6, v7, v8, v0}, Ln3/k/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v1, v2, v11, v12, v13}, Ln3/k/b/d/f;-><init>(Ln3/k/f/e;IILjava/lang/String;)V

    goto/16 :goto_a

    .line 20
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_c

    .line 22
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v3, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "font"

    .line 24
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 25
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 26
    sget-object v8, Landroidx/core/R$styleable;->FontFamilyFont:[I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 27
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    .line 28
    :cond_4
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_fontWeight:I

    :goto_3
    const/16 v9, 0x190

    .line 29
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 30
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    .line 31
    :cond_5
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_fontStyle:I

    .line 32
    :goto_4
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-ne v2, v8, :cond_6

    move v14, v2

    goto :goto_5

    :cond_6
    move v14, v10

    .line 33
    :goto_5
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_6

    .line 34
    :cond_7
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_ttcIndex:I

    .line 35
    :goto_6
    sget v9, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_7

    .line 36
    :cond_8
    sget v9, Landroidx/core/R$styleable;->FontFamilyFont_android_fontVariationSettings:I

    .line 37
    :goto_7
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 38
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 39
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_8

    .line 40
    :cond_9
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_font:I

    .line 41
    :goto_8
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 42
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 43
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    :goto_9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_a

    .line 45
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/MediaSessionCompat;->B1(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 46
    :cond_a
    new-instance v7, Ln3/k/b/d/e;

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Ln3/k/b/d/e;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    .line 47
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 48
    :cond_b
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/MediaSessionCompat;->B1(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 49
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_a

    .line 50
    :cond_d
    new-instance v1, Ln3/k/b/d/d;

    .line 51
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ln3/k/b/d/e;

    .line 52
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/k/b/d/e;

    invoke-direct {v1, v0}, Ln3/k/b/d/d;-><init>([Ln3/k/b/d/e;)V

    goto :goto_a

    .line 53
    :cond_e
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/MediaSessionCompat;->B1(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_a
    return-object v1

    .line 54
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 3
    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_4

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public static g0(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->f0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column \'"

    const-string v2, "\' does not exist. Available columns: "

    invoke-static {v1, p1, v2, p0}, Le/d/c/a/a;->D2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g1(Ln3/y/b/a/q0/d;)Ln3/y/b/a/q0/x/b;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ln3/y/b/a/x0/m;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/m;-><init>(I)V

    .line 3
    invoke-static {p0, v0}, Ln3/y/b/a/q0/x/c;->a(Ln3/y/b/a/q0/d;Ln3/y/b/a/x0/m;)Ln3/y/b/a/q0/x/c;

    move-result-object v2

    .line 4
    iget v2, v2, Ln3/y/b/a/q0/x/c;->a:I

    const v3, 0x52494646

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return-object v4

    .line 5
    :cond_0
    iget-object v2, v0, Ln3/y/b/a/x0/m;->a:[B

    const/4 v3, 0x0

    const/4 v5, 0x4

    .line 6
    invoke-virtual {p0, v2, v3, v5, v3}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 7
    invoke-virtual {v0, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 8
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->d()I

    move-result v2

    const v6, 0x57415645

    if-eq v2, v6, :cond_1

    return-object v4

    .line 9
    :cond_1
    invoke-static {p0, v0}, Ln3/y/b/a/q0/x/c;->a(Ln3/y/b/a/q0/d;Ln3/y/b/a/x0/m;)Ln3/y/b/a/q0/x/c;

    move-result-object v2

    .line 10
    :goto_0
    iget v6, v2, Ln3/y/b/a/q0/x/c;->a:I

    const v7, 0x666d7420

    if-eq v6, v7, :cond_2

    .line 11
    iget-wide v6, v2, Ln3/y/b/a/q0/x/c;->b:J

    long-to-int v2, v6

    .line 12
    invoke-virtual {p0, v2, v3}, Ln3/y/b/a/q0/d;->a(IZ)Z

    .line 13
    invoke-static {p0, v0}, Ln3/y/b/a/q0/x/c;->a(Ln3/y/b/a/q0/d;Ln3/y/b/a/x0/m;)Ln3/y/b/a/q0/x/c;

    move-result-object v2

    goto :goto_0

    .line 14
    :cond_2
    iget-wide v6, v2, Ln3/y/b/a/q0/x/c;->b:J

    const-wide/16 v8, 0x10

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    if-ltz v6, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 15
    iget-object v6, v0, Ln3/y/b/a/x0/m;->a:[B

    .line 16
    invoke-virtual {p0, v6, v3, v1, v3}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 17
    invoke-virtual {v0, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 18
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->i()I

    move-result v6

    .line 19
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->i()I

    move-result v9

    .line 20
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->h()I

    move-result v10

    .line 21
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->h()I

    move-result v11

    .line 22
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->i()I

    move-result v12

    .line 23
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->i()I

    move-result v13

    mul-int v0, v9, v13

    .line 24
    div-int/lit8 v0, v0, 0x8

    if-ne v12, v0, :cond_a

    if-eq v6, v7, :cond_8

    const/4 v0, 0x3

    if-eq v6, v0, :cond_6

    const v0, 0xfffe

    if-eq v6, v0, :cond_8

    const/4 v0, 0x6

    if-eq v6, v0, :cond_5

    const/4 v0, 0x7

    if-eq v6, v0, :cond_4

    move v14, v3

    goto :goto_4

    :cond_4
    const/high16 v0, 0x10000000

    goto :goto_3

    :cond_5
    const/high16 v0, 0x20000000

    goto :goto_3

    :cond_6
    const/16 v0, 0x20

    if-ne v13, v0, :cond_7

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    move v14, v5

    goto :goto_4

    .line 25
    :cond_8
    invoke-static {v13}, Ln3/y/b/a/x0/x;->m(I)I

    move-result v0

    :goto_3
    move v14, v0

    :goto_4
    if-nez v14, :cond_9

    return-object v4

    .line 26
    :cond_9
    iget-wide v4, v2, Ln3/y/b/a/q0/x/c;->b:J

    long-to-int v0, v4

    sub-int/2addr v0, v1

    .line 27
    invoke-virtual {p0, v0, v3}, Ln3/y/b/a/q0/d;->a(IZ)Z

    .line 28
    new-instance p0, Ln3/y/b/a/q0/x/b;

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Ln3/y/b/a/q0/x/b;-><init>(IIIIII)V

    return-object p0

    .line 29
    :cond_a
    new-instance p0, Ln3/y/b/a/c0;

    const/16 v1, 0x37

    const-string v2, "Expected block alignment: "

    const-string v3, "; got: "

    invoke-static {v1, v2, v0, v3, v12}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final h0(Ln3/v/u;)Ln3/v/w;
    .locals 7

    const-string v0, "$this$coroutineScope"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :cond_0
    iget-object v0, p0, Ln3/v/u;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v1}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v1

    .line 4
    sget-object v3, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v3, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 5
    invoke-virtual {v3}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v4

    check-cast v1, Lq3/a/u1;

    .line 6
    invoke-static {v1, v4}, Ls1/w/f$a$a;->d(Ls1/w/f$a;Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;-><init>(Ln3/v/u;Ls1/w/f;)V

    .line 8
    iget-object v1, p0, Ln3/v/u;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v3}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object p0

    const/4 v3, 0x0

    new-instance v4, Ln3/v/x;

    invoke-direct {v4, v0, v2}, Ln3/v/x;-><init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0
.end method

.method public static h1(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 6
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move p1, v2

    .line 8
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 9
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->E1([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->E1([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    throw p0
.end method

.method public static i(Ln3/e/b/j1/g0;Landroid/hardware/camera2/CameraDevice;Ljava/util/Map;)Landroid/hardware/camera2/CaptureRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/g0;",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/Map<",
            "Ln3/e/b/j1/k0;",
            "Landroid/view/Surface;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ln3/e/b/j1/g0;->a()Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/b/j1/k0;

    .line 4
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DeferrableSurface not in configuredSurfaceMap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v0

    .line 8
    :cond_3
    iget p2, p0, Ln3/e/b/j1/g0;->c:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 10
    iget-object p2, p0, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 11
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->e(Landroid/hardware/camera2/CaptureRequest$Builder;Ln3/e/b/j1/j0;)V

    .line 12
    iget-object p2, p0, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 13
    sget-object v0, Ln3/e/b/j1/g0;->g:Ln3/e/b/j1/j0$a;

    invoke-interface {p2, v0}, Ln3/e/b/j1/j0;->c(Ln3/e/b/j1/j0$a;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 15
    iget-object v1, p0, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 16
    invoke-interface {v1, v0}, Ln3/e/b/j1/j0;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    :cond_4
    iget-object p2, p0, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 19
    sget-object v0, Ln3/e/b/j1/g0;->h:Ln3/e/b/j1/j0$a;

    invoke-interface {p2, v0}, Ln3/e/b/j1/j0;->c(Ln3/e/b/j1/j0$a;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 21
    iget-object v1, p0, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 22
    invoke-interface {v1, v0}, Ln3/e/b/j1/j0;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 26
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 27
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    .line 28
    :cond_6
    iget-object p0, p0, Ln3/e/b/j1/g0;->f:Ln3/e/b/j1/o1;

    .line 29
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method public static i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/h/a/d<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/h/a/b;

    invoke-direct {v0}, Ln3/h/a/b;-><init>()V

    .line 2
    new-instance v1, Ln3/h/a/e;

    invoke-direct {v1, v0}, Ln3/h/a/e;-><init>(Ln3/h/a/b;)V

    .line 3
    iput-object v1, v0, Ln3/h/a/b;->b:Ln3/h/a/e;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Ln3/h/a/b;->a:Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-interface {p0, v0}, Ln3/h/a/d;->a(Ln3/h/a/b;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    iput-object p0, v0, Ln3/h/a/b;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    iget-object v0, v1, Ln3/h/a/e;->b:Ln3/h/a/a;

    invoke-virtual {v0, p0}, Ln3/h/a/a;->i(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    return-object v1
.end method

.method public static i1(Ln3/y/b/a/x0/m;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->a()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->o()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static j0(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public static j1(Ln3/y/b/a/x0/m;II)J
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->a()I

    move-result p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x5

    if-ge p1, v2, :cond_0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->d()I

    move-result p1

    const/high16 v2, 0x800000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    const v2, 0x1fff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    if-eq v2, p2, :cond_2

    return-wide v0

    :cond_2
    and-int/lit8 p1, p1, 0x20

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    move p1, p2

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-nez p1, :cond_4

    return-wide v0

    .line 4
    :cond_4
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->o()I

    move-result p1

    const/4 v3, 0x7

    if-lt p1, v3, :cond_6

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->a()I

    move-result p1

    if-lt p1, v3, :cond_6

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->o()I

    move-result p1

    const/16 v4, 0x10

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_5

    move p1, p2

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    if-eqz p1, :cond_6

    const/4 p1, 0x6

    new-array v0, p1, [B

    .line 7
    iget-object v1, p0, Ln3/y/b/a/x0/m;->a:[B

    iget v4, p0, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v1, v4, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Ln3/y/b/a/x0/m;->b:I

    .line 9
    aget-byte p0, v0, v2

    int-to-long p0, p0

    const-wide/16 v1, 0xff

    and-long/2addr p0, v1

    const/16 v4, 0x19

    shl-long/2addr p0, v4

    aget-byte v4, v0, p2

    int-to-long v4, v4

    and-long/2addr v4, v1

    const/16 v6, 0x11

    shl-long/2addr v4, v6

    or-long/2addr p0, v4

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v1

    const/16 v6, 0x9

    shl-long/2addr v4, v6

    or-long/2addr p0, v4

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v1

    shl-long/2addr v4, p2

    or-long/2addr p0, v4

    const/4 p2, 0x4

    aget-byte p2, v0, p2

    int-to-long v4, p2

    and-long v0, v4, v1

    shr-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_6
    return-wide v0
.end method

.method public static final varargs k([Ls1/k;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ls1/k<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    .line 3
    iget-object v4, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 4
    check-cast v4, Ljava/lang/String;

    .line 5
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v5, v3, Ljava/lang/Byte;

    if-eqz v5, :cond_2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v5, v3, Ljava/lang/Character;

    if-eqz v5, :cond_3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_0

    .line 10
    :cond_3
    instance-of v5, v3, Ljava/lang/Double;

    if-eqz v5, :cond_4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 11
    :cond_4
    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_5

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 12
    :cond_5
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 13
    :cond_6
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_7

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 14
    :cond_7
    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_8

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 15
    :cond_8
    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_9

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 16
    :cond_9
    instance-of v5, v3, Ljava/lang/CharSequence;

    if-eqz v5, :cond_a

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 17
    :cond_a
    instance-of v5, v3, Landroid/os/Parcelable;

    if-eqz v5, :cond_b

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 18
    :cond_b
    instance-of v5, v3, [Z

    if-eqz v5, :cond_c

    check-cast v3, [Z

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_0

    .line 19
    :cond_c
    instance-of v5, v3, [B

    if-eqz v5, :cond_d

    check-cast v3, [B

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 20
    :cond_d
    instance-of v5, v3, [C

    if-eqz v5, :cond_e

    check-cast v3, [C

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 21
    :cond_e
    instance-of v5, v3, [D

    if-eqz v5, :cond_f

    check-cast v3, [D

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_0

    .line 22
    :cond_f
    instance-of v5, v3, [F

    if-eqz v5, :cond_10

    check-cast v3, [F

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 23
    :cond_10
    instance-of v5, v3, [I

    if-eqz v5, :cond_11

    check-cast v3, [I

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 24
    :cond_11
    instance-of v5, v3, [J

    if-eqz v5, :cond_12

    check-cast v3, [J

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 25
    :cond_12
    instance-of v5, v3, [S

    if-eqz v5, :cond_13

    check-cast v3, [S

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 26
    :cond_13
    instance-of v5, v3, [Ljava/lang/Object;

    const/16 v6, 0x22

    const-string v7, " for key \""

    if-eqz v5, :cond_18

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 28
    const-class v8, Landroid/os/Parcelable;

    .line 29
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 30
    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_0

    :cond_14
    const-class v8, Ljava/lang/String;

    .line 31
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 32
    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-class v8, Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 34
    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_16
    const-class v8, Ljava/io/Serializable;

    .line 35
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 36
    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 37
    :cond_17
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value array type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_18
    instance-of v5, v3, Ljava/io/Serializable;

    if-eqz v5, :cond_19

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 42
    :cond_19
    instance-of v5, v3, Landroid/os/IBinder;

    if-eqz v5, :cond_1a

    .line 43
    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 44
    :cond_1a
    instance-of v5, v3, Landroid/util/Size;

    if-eqz v5, :cond_1b

    .line 45
    check-cast v3, Landroid/util/Size;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    goto/16 :goto_0

    .line 46
    :cond_1b
    instance-of v5, v3, Landroid/util/SizeF;

    if-eqz v5, :cond_1c

    .line 47
    check-cast v3, Landroid/util/SizeF;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    goto/16 :goto_0

    .line 48
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    return-object v0
.end method

.method public static k0(Landroid/content/res/Configuration;)Ln3/k/e/d;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 3
    new-instance v0, Ln3/k/e/d;

    new-instance v1, Ln3/k/e/g;

    invoke-direct {v1, p0}, Ln3/k/e/g;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v0, v1}, Ln3/k/e/d;-><init>(Ln3/k/e/f;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object p0, v0, v1

    invoke-static {v0}, Ln3/k/e/d;->a([Ljava/util/Locale;)Ln3/k/e/d;

    move-result-object p0

    return-object p0
.end method

.method public static k1(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 7

    if-lt p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    move v0, p1

    move v2, v0

    :goto_0
    if-gt v0, p2, :cond_7

    if-ne v0, p2, :cond_2

    move v3, v0

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_6

    add-int/lit8 v3, v0, 0x1

    :goto_1
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2e

    if-ne v0, v4, :cond_3

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_3

    .line 5
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v2, 0x2

    if-ne v0, v6, :cond_5

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_5

    .line 7
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5

    add-int/lit8 v2, v2, -0x2

    const-string v0, "/"

    .line 8
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, p1

    .line 9
    :goto_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_3
    move v2, v0

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/graphics/Rect;ZLandroid/util/Rational;IIILjava/util/Map;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/util/Rational;",
            "III",
            "Ljava/util/Map<",
            "Ln3/e/b/g1;",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/Map<",
            "Ln3/e/b/g1;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const-string v6, "Cannot compute viewport crop rects zero sized sensor rect."

    .line 2
    invoke-static {v3, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->o(ZLjava/lang/Object;)V

    .line 3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 6
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 7
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    new-instance v11, Landroid/graphics/RectF;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    int-to-float v12, v12

    .line 9
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v11, v9, v9, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10
    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v11, v3, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 11
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/e/b/g1;

    invoke-virtual {v6, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 13
    invoke-virtual {v10, v8, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 14
    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto :goto_1

    :cond_1
    const/16 v0, 0x10e

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_3

    if-ne v1, v0, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    new-instance v8, Landroid/util/Rational;

    invoke-virtual/range {p2 .. p2}, Landroid/util/Rational;->getNumerator()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/util/Rational;->getDenominator()I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/util/Rational;-><init>(II)V

    goto :goto_3

    :cond_3
    :goto_2
    if-nez p2, :cond_4

    move-object/from16 v8, p2

    goto :goto_3

    .line 16
    :cond_4
    new-instance v8, Landroid/util/Rational;

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/util/Rational;->getDenominator()I

    move-result v10

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/util/Rational;->getNumerator()I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/util/Rational;-><init>(II)V

    :goto_3
    const/4 v10, 0x3

    if-ne v2, v10, :cond_5

    goto/16 :goto_13

    .line 19
    :cond_5
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 20
    new-instance v11, Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/util/Rational;->getNumerator()I

    move-result v12

    int-to-float v12, v12

    .line 21
    invoke-virtual {v8}, Landroid/util/Rational;->getDenominator()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v11, v9, v9, v12, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v2, :cond_8

    if-eq v2, v4, :cond_7

    const/4 v8, 0x2

    if-ne v2, v8, :cond_6

    .line 22
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v11, v7, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_4

    .line 23
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected scale type: "

    invoke-static {v1, v2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_7
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v11, v7, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_4

    .line 25
    :cond_8
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v11, v7, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 26
    :goto_4
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 27
    invoke-virtual {v10, v2, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move/from16 v8, p5

    if-ne v8, v4, :cond_9

    move v8, v4

    goto :goto_5

    :cond_9
    move v8, v5

    :goto_5
    xor-int/2addr v8, p1

    if-nez v1, :cond_a

    if-nez v8, :cond_a

    move v9, v4

    goto :goto_6

    :cond_a
    move v9, v5

    :goto_6
    if-ne v1, v3, :cond_b

    if-eqz v8, :cond_b

    move v10, v4

    goto :goto_7

    :cond_b
    move v10, v5

    :goto_7
    if-nez v9, :cond_19

    if-eqz v10, :cond_c

    goto/16 :goto_12

    :cond_c
    if-nez v1, :cond_d

    if-eqz v8, :cond_d

    move v9, v4

    goto :goto_8

    :cond_d
    move v9, v5

    :goto_8
    if-ne v1, v0, :cond_e

    if-nez v8, :cond_e

    move v10, v4

    goto :goto_9

    :cond_e
    move v10, v5

    :goto_9
    if-nez v9, :cond_18

    if-eqz v10, :cond_f

    goto/16 :goto_10

    :cond_f
    if-ne v1, v3, :cond_10

    if-nez v8, :cond_10

    move v3, v4

    goto :goto_a

    :cond_10
    move v3, v5

    :goto_a
    const/16 v9, 0xb4

    if-ne v1, v9, :cond_11

    if-eqz v8, :cond_11

    move v10, v4

    goto :goto_b

    :cond_11
    move v10, v5

    :goto_b
    if-nez v3, :cond_17

    if-eqz v10, :cond_12

    goto :goto_f

    :cond_12
    if-ne v1, v9, :cond_13

    if-nez v8, :cond_13

    move v3, v4

    goto :goto_c

    :cond_13
    move v3, v5

    :goto_c
    if-ne v1, v0, :cond_14

    if-eqz v8, :cond_14

    goto :goto_d

    :cond_14
    move v4, v5

    :goto_d
    if-nez v3, :cond_16

    if-eqz v4, :cond_15

    goto :goto_e

    .line 28
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument: mirrored "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_16
    :goto_e
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 30
    new-instance v1, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v0

    sub-float v4, v0, v4

    .line 31
    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    .line 32
    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 33
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 34
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v0

    sub-float v3, v0, v3

    .line 35
    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v5

    .line 36
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_12

    .line 37
    :cond_17
    :goto_f
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v0

    sub-float v4, v0, v4

    .line 39
    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    .line 40
    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_11

    .line 41
    :cond_18
    :goto_10
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v0

    sub-float v3, v0, v3

    .line 43
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v5

    .line 44
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_11
    move-object v7, v1

    goto :goto_13

    :cond_19
    :goto_12
    move-object v7, v2

    .line 45
    :goto_13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 47
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 50
    invoke-virtual {v2, v1, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 51
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 52
    invoke-virtual {v1, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 53
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/e/b/g1;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_1a
    return-object v0
.end method

.method public static l0()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, ".("

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v1

    .line 2
    :cond_1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->B0(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    aget v3, v1, v2

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    aget p0, v1, v6

    aget p1, v1, v5

    invoke-static {v0, p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->k1(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 7
    :cond_2
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->B0(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v7, 0x3

    .line 8
    aget v8, v1, v7

    if-nez v8, :cond_3

    .line 9
    aget v1, v3, v7

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 10
    :cond_3
    aget v7, v1, v5

    if-nez v7, :cond_4

    .line 11
    aget v1, v3, v5

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 12
    :cond_4
    aget v7, v1, v6

    if-eqz v7, :cond_5

    .line 13
    aget v3, v3, v2

    add-int/2addr v3, v6

    .line 14
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    aget p0, v1, v6

    add-int/2addr p0, v3

    aget p1, v1, v5

    add-int/2addr v3, p1

    invoke-static {v0, p0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->k1(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 16
    :cond_5
    aget v7, v1, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_6

    .line 17
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    aget p0, v3, v6

    aget p1, v3, v6

    aget v1, v1, v5

    add-int/2addr p1, v1

    invoke-static {v0, p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->k1(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 19
    :cond_6
    aget v7, v3, v2

    add-int/2addr v7, v5

    aget v9, v3, v6

    if-ge v7, v9, :cond_7

    aget v7, v3, v6

    aget v9, v3, v5

    if-ne v7, v9, :cond_7

    .line 20
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    aget p0, v3, v6

    aget p1, v3, v6

    aget v1, v1, v5

    add-int/2addr p1, v1

    add-int/2addr p1, v6

    invoke-static {v0, p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->k1(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 22
    :cond_7
    aget v7, v3, v5

    sub-int/2addr v7, v6

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    if-ne v7, v4, :cond_8

    .line 23
    aget v4, v3, v6

    goto :goto_0

    :cond_8
    add-int/lit8 v4, v7, 0x1

    .line 24
    :goto_0
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    aget p0, v3, v6

    aget p1, v1, v5

    add-int/2addr v4, p1

    invoke-static {v0, p0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->k1(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    .line 26
    :goto_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static m([Ln3/k/c/c;[Ln3/k/c/c;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 3
    aget-object v2, p0, v1

    iget-char v2, v2, Ln3/k/c/c;->a:C

    aget-object v3, p1, v1

    iget-char v3, v3, Ln3/k/c/c;->a:C

    if-ne v2, v3, :cond_3

    aget-object v2, p0, v1

    iget-object v2, v2, Ln3/k/c/c;->b:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Ln3/k/c/c;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static m0(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "UNKNOWN"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "?"

    .line 2
    invoke-static {p0, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final m1(Ljava/lang/Object;[III)Ln3/z/g3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[III)",
            "Ln3/z/g3<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "separator"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalPageOffsets"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/z/g3;

    .line 2
    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 4
    invoke-direct {v0, p1, p0, p2, p3}, Ln3/z/g3;-><init>([ILjava/util/List;ILjava/util/List;)V

    return-object v0
.end method

.method public static n(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static n0(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public static n1(Landroid/widget/TextView;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Ln3/k/j/f;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ln3/k/j/f;

    invoke-interface {p0, p1, p2, p3, p4}, Ln3/k/j/f;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static o(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Ln3/k/b/d/b;
    .locals 2

    .line 1
    invoke-static {p1, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0, p4, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 5
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 6
    new-instance p1, Ln3/k/b/d/b;

    invoke-direct {p1, p3, p3, p0}, Ln3/k/b/d/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    .line 9
    :try_start_0
    invoke-static {p1, p0, p2}, Ln3/k/b/d/b;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Ln3/k/b/d/b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, p3

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Ln3/k/b/d/b;

    invoke-direct {p0, p3, p3, p5}, Ln3/k/b/d/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object p0
.end method

.method public static o1(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Ln3/k/j/j;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ln3/k/j/j;

    invoke-interface {p0, p1}, Ln3/k/j/j;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static p(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static p0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p1(Landroid/media/MediaFormat;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0xf

    const-string v2, "csd-"

    .line 2
    invoke-static {v1, v2, v0}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static q(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q0(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->s0(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-static {p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->t0(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 5
    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    return-object v1
.end method

.method public static q1(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->r(I)I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    .line 7
    :cond_1
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 8
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_2

    add-int/2addr p1, v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 11
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public static r(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static r0(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->t0(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    .line 3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->t0(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 5
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final r1(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "$this$setFragmentResult"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->o0(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static s(III)I
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static s0(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->t0(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static s1(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->r(I)I

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    .line 5
    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 6
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 9
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public static t()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->L0()Z

    move-result v0

    const-string v1, "Not in application\'s main thread"

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    return-void
.end method

.method public static t0(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/16 v3, 0x280

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_0

    const v3, 0x100c0280

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_1

    const v3, 0xc0280

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 4
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "android.support.PARENT_ACTIVITY"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public static t1(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->r(I)I

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public static u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final u0(Ln3/c0/q;)Lq3/a/g0;
    .locals 3

    const-string v0, "$this$queryDispatcher"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ln3/c0/q;->getBackingFieldMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "backingFieldMap"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "QueryDispatcher"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/c0/q;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const-string v2, "queryExecutor"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->b1(Ljava/util/concurrent/Executor;)Lq3/a/g0;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    check-cast v2, Lq3/a/g0;

    return-object v2
.end method

.method public static u1(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq p1, v0, :cond_a

    if-nez p1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 3
    :cond_0
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-nez v0, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eq v3, v4, :cond_4

    :goto_2
    move v1, v2

    goto :goto_4

    :cond_4
    if-nez p1, :cond_5

    goto :goto_4

    .line 5
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_6

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_8

    .line 7
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-nez v1, :cond_9

    return-void

    .line 8
    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    return p2

    :cond_1
    if-nez p4, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 4
    array-length p4, p3

    if-gtz p4, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    aget-object p4, p3, p2

    goto :goto_1

    :cond_3
    :goto_0
    return v0

    .line 6
    :cond_4
    :goto_1
    const-class p3, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 7
    invoke-virtual {p0, p1, p4}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, -0x2

    return p0

    :cond_5
    return p2
.end method

.method public static v0(IIZ)I
    .locals 4

    if-eqz p2, :cond_0

    sub-int v0, p1, p0

    add-int/lit16 v0, v0, 0x168

    .line 1
    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_0
    add-int v0, p1, p0

    .line 2
    rem-int/lit16 v0, v0, 0x168

    :goto_0
    const-string v1, "CameraOrientationUtil"

    .line 3
    invoke-static {v1}, Ln3/e/b/y0;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "getRelativeImageRotation: destRotationDegrees=%s, sourceRotationDegrees=%s, isOppositeFacing=%s, result=%s"

    .line 5
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 6
    invoke-static {v1, p0, p1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public static v1(Landroid/widget/TextView;Ln3/n/o/d;Ln3/n/o/e;Ln3/n/o/c;Ln3/n/h;)V
    .locals 0

    const/4 p1, 0x0

    if-nez p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Ln3/n/o/b;

    invoke-direct {p2, p1, p1, p4, p1}, Ln3/n/o/b;-><init>(Ln3/n/o/d;Ln3/n/o/e;Ln3/n/h;Ln3/n/o/c;)V

    move-object p1, p2

    .line 2
    :goto_0
    sget p2, Landroidx/databinding/library/baseAdapters/R$id;->textWatcher:I

    .line 3
    sget-object p3, Ln3/n/o/a;->a:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p0, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    check-cast p3, Landroid/text/TextWatcher;

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {p0, p1, v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->v(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w0(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, "UNDEFINED"

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w1(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static x(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x0(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ".font"

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-static {v1, v2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return-object v3

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static x1(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static y(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static y0(Landroid/widget/TextView;)Ln3/k/g/b$a;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ln3/k/g/b$a;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-direct {v0, p0}, Ln3/k/g/b$a;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 5
    sget-object v3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v4

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v5

    instance-of v5, v5, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v5, :cond_1

    .line 9
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v0, v1, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v5

    .line 13
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result p0

    if-eq p0, v6, :cond_3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 16
    :cond_3
    :goto_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v6, :cond_5

    move v5, v6

    .line 18
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    if-eqz v5, :cond_6

    .line 19
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 20
    :pswitch_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 21
    :pswitch_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 22
    :pswitch_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 23
    :pswitch_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 24
    :pswitch_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 25
    :pswitch_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 26
    :cond_6
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 27
    :goto_1
    new-instance v0, Ln3/k/g/b$a;

    invoke-direct {v0, v2, p0, v3, v4}, Ln3/k/g/b$a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static y1(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static z(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static z0(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z1(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ln3/b/f/u0;->j:Ln3/b/f/u0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Ln3/b/f/u0;->a:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 4
    invoke-static {v1}, Ln3/b/f/u0;->c(Ln3/b/f/u0;)V

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object p1, Ln3/b/f/u0;->k:Ln3/b/f/u0;

    if-eqz p1, :cond_2

    iget-object v0, p1, Ln3/b/f/u0;->a:Landroid/view/View;

    if-ne v0, p0, :cond_2

    .line 7
    invoke-virtual {p1}, Ln3/b/f/u0;->b()V

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    .line 11
    :cond_3
    new-instance v0, Ln3/b/f/u0;

    invoke-direct {v0, p0, p1}, Ln3/b/f/u0;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
