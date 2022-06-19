.class public Ln3/e/a/e/k2/p/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln3/e/b/j1/g1;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ln3/e/b/j1/g1;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Google"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "Pixel 2"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-nez v4, :cond_2

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "Pixel 3"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_3

    .line 5
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v4, v7, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    if-eqz v4, :cond_4

    .line 6
    new-instance v4, Ln3/e/a/e/k2/p/g;

    invoke-direct {v4}, Ln3/e/a/e/k2/p/g;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_4
    sget-object v4, Ln3/e/a/e/k2/p/l;->a:Ljava/util/List;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SAMSUNG"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Ln3/e/a/e/k2/p/l;->a:Ljava/util/List;

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 8
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_3

    :cond_5
    move v7, v5

    :goto_3
    if-eqz v7, :cond_6

    .line 9
    new-instance v7, Ln3/e/a/e/k2/p/l;

    invoke-direct {v7}, Ln3/e/a/e/k2/p/l;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_6
    sget-object v7, Ln3/e/a/e/k2/p/j;->a:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "GOOGLE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Ln3/e/a/e/k2/p/f;->a()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Ln3/e/a/e/k2/p/f;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    goto :goto_5

    :cond_8
    :goto_4
    move v4, v6

    :goto_5
    if-eqz v4, :cond_9

    .line 12
    new-instance v4, Ln3/e/a/e/k2/p/f;

    invoke-direct {v4}, Ln3/e/a/e/k2/p/f;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "SM-A300"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v6

    goto :goto_6

    :cond_a
    move v4, v5

    :goto_6
    if-eqz v4, :cond_b

    .line 15
    new-instance v4, Ln3/e/a/e/k2/p/d;

    invoke-direct {v4}, Ln3/e/a/e/k2/p/d;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_b
    sget-object v4, Ln3/e/a/e/k2/p/k;->a:Ljava/util/List;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Ln3/e/a/e/k2/p/k;->a:Ljava/util/List;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v6

    goto :goto_7

    :cond_c
    move v3, v5

    :goto_7
    if-eqz v3, :cond_d

    .line 19
    new-instance v3, Ln3/e/a/e/k2/p/k;

    invoke-direct {v3}, Ln3/e/a/e/k2/p/k;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_d
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SM-A716"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v5, v6

    :cond_e
    if-eqz v5, :cond_f

    .line 22
    new-instance v2, Ln3/e/a/e/k2/p/m;

    invoke-direct {v2}, Ln3/e/a/e/k2/p/m;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_f
    invoke-direct {v0, v1}, Ln3/e/b/j1/g1;-><init>(Ljava/util/List;)V

    sput-object v0, Ln3/e/a/e/k2/p/e;->a:Ln3/e/b/j1/g1;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ln3/e/b/j1/f1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ln3/e/b/j1/f1;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/e/a/e/k2/p/e;->a:Ln3/e/b/j1/g1;

    invoke-virtual {v0, p0}, Ln3/e/b/j1/g1;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object p0

    return-object p0
.end method
