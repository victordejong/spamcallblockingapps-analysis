.class public Ln3/e/d/b0/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln3/e/b/j1/g1;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ln3/e/b/j1/g1;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON5XELTE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 5
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "A3Y17LTE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v3, :cond_2

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v5

    :goto_2
    if-eqz v3, :cond_3

    .line 6
    new-instance v3, Ln3/e/d/b0/a/a/b;

    invoke-direct {v3}, Ln3/e/d/b0/a/a/b;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_3
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SAMSUNG"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "F2Q"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    if-eqz v4, :cond_5

    .line 10
    new-instance v2, Ln3/e/d/b0/a/a/c;

    invoke-direct {v2}, Ln3/e/d/b0/a/a/c;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_5
    invoke-static {}, Ln3/e/d/b0/a/a/d;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12
    new-instance v2, Ln3/e/d/b0/a/a/d;

    invoke-direct {v2}, Ln3/e/d/b0/a/a/d;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_6
    invoke-direct {v0, v1}, Ln3/e/b/j1/g1;-><init>(Ljava/util/List;)V

    sput-object v0, Ln3/e/d/b0/a/a/a;->a:Ln3/e/b/j1/g1;

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
    sget-object v0, Ln3/e/d/b0/a/a/a;->a:Ln3/e/b/j1/g1;

    invoke-virtual {v0, p0}, Ln3/e/b/j1/g1;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object p0

    return-object p0
.end method
