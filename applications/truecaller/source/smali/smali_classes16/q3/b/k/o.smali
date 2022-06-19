.class public final Lq3/b/k/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lq3/b/i/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lq3/b/i/d;

    .line 1
    sput-object v0, Lq3/b/k/o;->a:[Lq3/b/i/d;

    return-void
.end method

.method public static final a(Ljava/util/List;)[Lq3/b/i/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lq3/b/i/d;",
            ">;)[",
            "Lq3/b/i/d;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_3

    new-array v0, v0, [Lq3/b/i/d;

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Lq3/b/i/d;

    goto :goto_3

    .line 3
    :cond_3
    sget-object p0, Lq3/b/k/o;->a:[Lq3/b/i/d;

    :goto_3
    return-object p0
.end method
