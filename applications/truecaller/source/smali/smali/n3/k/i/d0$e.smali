.class public Ln3/k/i/d0$e;
.super Ln3/k/i/d0$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/i/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static h:Z = false

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static l:Ljava/lang/reflect/Field;

.field public static m:Ljava/lang/reflect/Field;


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:[Ln3/k/c/b;

.field public e:Ln3/k/c/b;

.field public f:Ln3/k/i/d0;

.field public g:Ln3/k/c/b;


# direct methods
.method public constructor <init>(Ln3/k/i/d0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/k/i/d0$j;-><init>(Ln3/k/i/d0;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/k/i/d0$e;->e:Ln3/k/c/b;

    .line 3
    iput-object p2, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_5

    .line 2
    sget-boolean v0, Ln3/k/i/d0$e;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "getViewRootImpl"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ln3/k/i/d0$e;->i:Ljava/lang/reflect/Method;

    const-string v2, "android.view.ViewRootImpl"

    .line 4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Ln3/k/i/d0$e;->j:Ljava/lang/Class;

    const-string v2, "android.view.View$AttachInfo"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Ln3/k/i/d0$e;->k:Ljava/lang/Class;

    const-string v3, "mVisibleInsets"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ln3/k/i/d0$e;->l:Ljava/lang/reflect/Field;

    .line 7
    sget-object v2, Ln3/k/i/d0$e;->j:Ljava/lang/Class;

    const-string v3, "mAttachInfo"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ln3/k/i/d0$e;->m:Ljava/lang/reflect/Field;

    .line 8
    sget-object v2, Ln3/k/i/d0$e;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    sget-object v2, Ln3/k/i/d0$e;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    .line 11
    :goto_0
    sput-boolean v0, Ln3/k/i/d0$e;->h:Z

    .line 12
    :cond_0
    sget-object v0, Ln3/k/i/d0$e;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v3, Ln3/k/i/d0$e;->k:Ljava/lang/Class;

    if-eqz v3, :cond_3

    sget-object v3, Ln3/k/i/d0$e;->l:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    sget-object v0, Ln3/k/i/d0$e;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    sget-object v0, Ln3/k/i/d0$e;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    .line 16
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v3, p1}, Ln3/k/c/b;->b(IIII)Ln3/k/c/b;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 18
    sget-object v2, Ln3/k/c/b;->e:Ln3/k/c/b;

    .line 19
    :cond_4
    iput-object v2, p0, Ln3/k/i/d0$e;->g:Ln3/k/c/b;

    return-void

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/k/i/d0$j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Ln3/k/i/d0$e;

    .line 3
    iget-object v0, p0, Ln3/k/i/d0$e;->g:Ln3/k/c/b;

    iget-object p1, p1, Ln3/k/i/d0$e;->g:Ln3/k/c/b;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Ln3/k/c/b;
    .locals 11

    .line 1
    sget-object v0, Ln3/k/c/b;->e:Ln3/k/c/b;

    const/4 v1, 0x1

    move-object v3, v0

    move v2, v1

    :goto_0
    const/16 v4, 0x100

    if-gt v2, v4, :cond_13

    and-int v4, p1, v2

    if-nez v4, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v4, 0x0

    if-eq v2, v1, :cond_12

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v2, v5, :cond_f

    const/16 v5, 0x8

    if-eq v2, v5, :cond_a

    const/16 v5, 0x10

    if-eq v2, v5, :cond_9

    const/16 v5, 0x20

    if-eq v2, v5, :cond_8

    const/16 v5, 0x40

    if-eq v2, v5, :cond_7

    const/16 v5, 0x80

    if-eq v2, v5, :cond_1

    goto/16 :goto_5

    .line 2
    :cond_1
    iget-object v5, p0, Ln3/k/i/d0$e;->f:Ln3/k/i/d0;

    if-eqz v5, :cond_2

    .line 3
    iget-object v5, v5, Ln3/k/i/d0;->a:Ln3/k/i/d0$j;

    invoke-virtual {v5}, Ln3/k/i/d0$j;->e()Ln3/k/i/d;

    move-result-object v5

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Ln3/k/i/d0$j;->e()Ln3/k/i/d;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_e

    .line 5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_3

    .line 6
    iget-object v8, v5, Ln3/k/i/d;->a:Ljava/lang/Object;

    check-cast v8, Landroid/view/DisplayCutout;

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    if-lt v6, v7, :cond_4

    .line 7
    iget-object v9, v5, Ln3/k/i/d;->a:Ljava/lang/Object;

    check-cast v9, Landroid/view/DisplayCutout;

    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v9

    goto :goto_3

    :cond_4
    move v9, v4

    :goto_3
    if-lt v6, v7, :cond_5

    .line 8
    iget-object v10, v5, Ln3/k/i/d;->a:Ljava/lang/Object;

    check-cast v10, Landroid/view/DisplayCutout;

    invoke-virtual {v10}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v10

    goto :goto_4

    :cond_5
    move v10, v4

    :goto_4
    if-lt v6, v7, :cond_6

    .line 9
    iget-object v4, v5, Ln3/k/i/d;->a:Ljava/lang/Object;

    check-cast v4, Landroid/view/DisplayCutout;

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v4

    .line 10
    :cond_6
    invoke-static {v8, v9, v10, v4}, Ln3/k/c/b;->b(IIII)Ln3/k/c/b;

    move-result-object v4

    goto/16 :goto_6

    .line 11
    :cond_7
    invoke-virtual {p0}, Ln3/k/i/d0$j;->k()Ln3/k/c/b;

    move-result-object v4

    goto/16 :goto_6

    .line 12
    :cond_8
    invoke-virtual {p0}, Ln3/k/i/d0$j;->g()Ln3/k/c/b;

    move-result-object v4

    goto/16 :goto_6

    .line 13
    :cond_9
    invoke-virtual {p0}, Ln3/k/i/d0$j;->i()Ln3/k/c/b;

    move-result-object v4

    goto :goto_6

    .line 14
    :cond_a
    iget-object v7, p0, Ln3/k/i/d0$e;->d:[Ln3/k/c/b;

    if-eqz v7, :cond_b

    .line 15
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->F0(I)I

    move-result v5

    aget-object v6, v7, v5

    :cond_b
    if-eqz v6, :cond_c

    move-object v4, v6

    goto :goto_6

    .line 16
    :cond_c
    invoke-virtual {p0}, Ln3/k/i/d0$e;->j()Ln3/k/c/b;

    move-result-object v5

    .line 17
    invoke-virtual {p0}, Ln3/k/i/d0$e;->r()Ln3/k/c/b;

    move-result-object v6

    .line 18
    iget v5, v5, Ln3/k/c/b;->d:I

    iget v7, v6, Ln3/k/c/b;->d:I

    if-le v5, v7, :cond_d

    .line 19
    invoke-static {v4, v4, v4, v5}, Ln3/k/c/b;->b(IIII)Ln3/k/c/b;

    move-result-object v4

    goto :goto_6

    .line 20
    :cond_d
    iget-object v5, p0, Ln3/k/i/d0$e;->g:Ln3/k/c/b;

    if-eqz v5, :cond_e

    .line 21
    invoke-virtual {v5, v0}, Ln3/k/c/b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 22
    iget-object v5, p0, Ln3/k/i/d0$e;->g:Ln3/k/c/b;

    iget v5, v5, Ln3/k/c/b;->d:I

    iget v6, v6, Ln3/k/c/b;->d:I

    if-le v5, v6, :cond_e

    .line 23
    invoke-static {v4, v4, v4, v5}, Ln3/k/c/b;->b(IIII)Ln3/k/c/b;

    move-result-object v4

    goto :goto_6

    :cond_e
    :goto_5
    move-object v4, v0

    goto :goto_6

    .line 24
    :cond_f
    invoke-virtual {p0}, Ln3/k/i/d0$e;->j()Ln3/k/c/b;

    move-result-object v5

    .line 25
    iget-object v7, p0, Ln3/k/i/d0$e;->f:Ln3/k/i/d0;

    if-eqz v7, :cond_10

    .line 26
    iget-object v6, v7, Ln3/k/i/d0;->a:Ln3/k/i/d0$j;

    invoke-virtual {v6}, Ln3/k/i/d0$j;->h()Ln3/k/c/b;

    move-result-object v6

    .line 27
    :cond_10
    iget v7, v5, Ln3/k/c/b;->d:I

    if-eqz v6, :cond_11

    .line 28
    iget v6, v6, Ln3/k/c/b;->d:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 29
    :cond_11
    iget v6, v5, Ln3/k/c/b;->a:I

    iget v5, v5, Ln3/k/c/b;->c:I

    invoke-static {v6, v4, v5, v7}, Ln3/k/c/b;->b(IIII)Ln3/k/c/b;

    move-result-object v4

    goto :goto_6

    .line 30
    :cond_12
    invoke-virtual {p0}, Ln3/k/i/d0$e;->j()Ln3/k/c/b;

    move-result-object v5

    iget v5, v5, Ln3/k/c/b;->b:I

    invoke-static {v4, v5, v4, v4}, Ln3/k/c/b;->b(IIII)Ln3/k/c/b;

    move-result-object v4

    .line 31
    :goto_6
    invoke-static {v3, v4}, Ln3/k/c/b;->a(Ln3/k/c/b;Ln3/k/c/b;)Ln3/k/c/b;

    move-result-object v3

    :goto_7
    shl-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_13
    return-object v3
.end method

.method public final j()Ln3/k/c/b;
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$e;->e:Ln3/k/c/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Ln3/k/c/b;->b(IIII)Ln3/k/c/b;

    move-result-object v0

    iput-object v0, p0, Ln3/k/i/d0$e;->e:Ln3/k/c/b;

    .line 8
    :cond_0
    iget-object v0, p0, Ln3/k/i/d0$e;->e:Ln3/k/c/b;

    return-object v0
.end method

.method public l(IIII)Ln3/k/i/d0;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Ln3/k/i/d0;->k(Landroid/view/WindowInsets;)Ln3/k/i/d0;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 3
    new-instance v1, Ln3/k/i/d0$c;

    invoke-direct {v1, v0}, Ln3/k/i/d0$c;-><init>(Ln3/k/i/d0;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 4
    new-instance v1, Ln3/k/i/d0$b;

    invoke-direct {v1, v0}, Ln3/k/i/d0$b;-><init>(Ln3/k/i/d0;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ln3/k/i/d0$a;

    invoke-direct {v1, v0}, Ln3/k/i/d0$a;-><init>(Ln3/k/i/d0;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Ln3/k/i/d0$e;->j()Ln3/k/c/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Ln3/k/i/d0;->g(Ln3/k/c/b;IIII)Ln3/k/c/b;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Ln3/k/i/d0$d;->c(Ln3/k/c/b;)V

    .line 8
    invoke-virtual {p0}, Ln3/k/i/d0$j;->h()Ln3/k/c/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Ln3/k/i/d0;->g(Ln3/k/c/b;IIII)Ln3/k/c/b;

    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Ln3/k/i/d0$d;->b(Ln3/k/c/b;)V

    .line 10
    invoke-virtual {v1}, Ln3/k/i/d0$d;->a()Ln3/k/i/d0;

    move-result-object p1

    return-object p1
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public o([Ln3/k/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/i/d0$e;->d:[Ln3/k/c/b;

    return-void
.end method

.method public p(Ln3/k/i/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/i/d0$e;->f:Ln3/k/i/d0;

    return-void
.end method

.method public final r()Ln3/k/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$e;->f:Ln3/k/i/d0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ln3/k/i/d0;->a:Ln3/k/i/d0$j;

    invoke-virtual {v0}, Ln3/k/i/d0$j;->h()Ln3/k/c/b;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Ln3/k/c/b;->e:Ln3/k/c/b;

    return-object v0
.end method
