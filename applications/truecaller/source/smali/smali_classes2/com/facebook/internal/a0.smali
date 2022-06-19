.class public final Lcom/facebook/internal/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/a0$b;,
        Lcom/facebook/internal/a0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0008\u0010\u0014\u001a\u00020\nH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/internal/FeatureManager;",
        "",
        "()V",
        "FEATURE_MANAGER_STORE",
        "",
        "featureMapping",
        "",
        "Lcom/facebook/internal/FeatureManager$Feature;",
        "",
        "checkFeature",
        "",
        "feature",
        "callback",
        "Lcom/facebook/internal/FeatureManager$Callback;",
        "defaultStatus",
        "",
        "disableFeature",
        "getFeature",
        "className",
        "getGKStatus",
        "initializeFeatureMapping",
        "isEnabled",
        "Callback",
        "Feature",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/a0;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/a0$b;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/a0;

    invoke-direct {v0}, Lcom/facebook/internal/a0;-><init>()V

    sput-object v0, Lcom/facebook/internal/a0;->a:Lcom/facebook/internal/a0;

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/a0;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/facebook/internal/a0$b;Lcom/facebook/internal/a0$a;)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/internal/b0;->a:Lcom/facebook/internal/b0;

    .line 2
    new-instance v0, Lcom/facebook/internal/a0$c;

    invoke-direct {v0, p1, p0}, Lcom/facebook/internal/a0$c;-><init>(Lcom/facebook/internal/a0$a;Lcom/facebook/internal/a0$b;)V

    .line 3
    invoke-static {v0}, Lcom/facebook/internal/b0;->c(Lcom/facebook/internal/b0$a;)V

    return-void
.end method

.method public static final b(Lcom/facebook/internal/a0$b;)Z
    .locals 9

    const-string v0, "feature"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/internal/a0$b;->c:Lcom/facebook/internal/a0$b;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Lcom/facebook/internal/a0$b;->d:Lcom/facebook/internal/a0$b;

    const/4 v3, 0x1

    if-ne v2, p0, :cond_1

    return v3

    .line 3
    :cond_1
    sget-object v2, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.facebook.internal.FEATURE_MANAGER"

    .line 4
    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/facebook/internal/a0$b;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    sget-object v4, Le/j/f0;->a:Le/j/f0;

    const-string v4, "13.0.0"

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 7
    :cond_2
    iget v2, p0, Lcom/facebook/internal/a0$b;->a:I

    and-int/lit16 v4, v2, 0xff

    const/16 v5, 0x1c

    if-lez v4, :cond_4

    and-int/lit16 v2, v2, -0x100

    .line 8
    invoke-static {}, Lcom/facebook/internal/a0$b;->values()[Lcom/facebook/internal/a0$b;

    move-result-object v4

    move v6, v1

    :cond_3
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    .line 9
    iget v8, v7, Lcom/facebook/internal/a0$b;->a:I

    if-ne v8, v2, :cond_3

    :goto_0
    move-object v0, v7

    goto :goto_1

    :cond_4
    const v4, 0xff00

    and-int/2addr v4, v2

    if-lez v4, :cond_6

    const/high16 v4, -0x10000

    and-int/2addr v2, v4

    .line 10
    invoke-static {}, Lcom/facebook/internal/a0$b;->values()[Lcom/facebook/internal/a0$b;

    move-result-object v4

    move v6, v1

    :cond_5
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    .line 11
    iget v8, v7, Lcom/facebook/internal/a0$b;->a:I

    if-ne v8, v2, :cond_5

    goto :goto_0

    :cond_6
    const/high16 v4, 0xff0000

    and-int/2addr v4, v2

    if-lez v4, :cond_8

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    .line 12
    invoke-static {}, Lcom/facebook/internal/a0$b;->values()[Lcom/facebook/internal/a0$b;

    move-result-object v4

    move v6, v1

    :cond_7
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    .line 13
    iget v8, v7, Lcom/facebook/internal/a0$b;->a:I

    if-ne v8, v2, :cond_7

    goto :goto_0

    .line 14
    :cond_8
    invoke-static {}, Lcom/facebook/internal/a0$b;->values()[Lcom/facebook/internal/a0$b;

    move-result-object v2

    move v4, v1

    :cond_9
    if-ge v4, v5, :cond_a

    aget-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 15
    iget v7, v6, Lcom/facebook/internal/a0$b;->a:I

    if-nez v7, :cond_9

    move-object v0, v6

    :cond_a
    :goto_1
    if-ne v0, p0, :cond_b

    .line 16
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v3

    .line 17
    :pswitch_1
    sget-object v0, Lcom/facebook/internal/b0;->a:Lcom/facebook/internal/b0;

    .line 18
    invoke-virtual {p0}, Lcom/facebook/internal/a0$b;->a()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {p0, v0, v1}, Lcom/facebook/internal/b0;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_3

    .line 20
    :cond_b
    invoke-static {v0}, Lcom/facebook/internal/a0;->b(Lcom/facebook/internal/a0$b;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 21
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    move v0, v3

    goto :goto_2

    :pswitch_3
    move v0, v1

    .line 22
    :goto_2
    sget-object v2, Lcom/facebook/internal/b0;->a:Lcom/facebook/internal/b0;

    .line 23
    invoke-virtual {p0}, Lcom/facebook/internal/a0$b;->a()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {p0, v2, v0}, Lcom/facebook/internal/b0;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_c

    move v1, v3

    :cond_c
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
