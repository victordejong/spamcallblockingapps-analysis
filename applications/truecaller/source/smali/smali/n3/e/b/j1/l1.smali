.class public final Ln3/e/b/j1/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/b/j1/m1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/List;I[II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;I[II)V"
        }
    .end annotation

    .line 1
    array-length v0, p2

    if-lt p3, v0, :cond_0

    .line 2
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_2

    .line 3
    aget v3, p2, v2

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_2
    if-nez v2, :cond_3

    .line 4
    aput v1, p2, p3

    add-int/lit8 v2, p3, 0x1

    .line 5
    invoke-static {p0, p1, p2, v2}, Ln3/e/b/j1/l1;->a(Ljava/util/List;I[II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
