.class public Ln3/e/b/k1/j/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln3/e/b/j1/g1;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ln3/e/b/j1/g1;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Ln3/e/b/k1/j/a/c;->a:Ljava/util/List;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Ln3/e/b/k1/j/a/c;

    invoke-direct {v2}, Ln3/e/b/k1/j/a/c;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "HUAWEI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "SNE-LX1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-nez v3, :cond_4

    const-string v3, "HONOR"

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "STK-LX1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 7
    new-instance v2, Ln3/e/b/k1/j/a/b;

    invoke-direct {v2}, Ln3/e/b/k1/j/a/b;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_5
    invoke-direct {v0, v1}, Ln3/e/b/j1/g1;-><init>(Ljava/util/List;)V

    sput-object v0, Ln3/e/b/k1/j/a/a;->a:Ln3/e/b/j1/g1;

    return-void
.end method
