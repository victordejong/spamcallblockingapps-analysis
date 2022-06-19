.class public abstract Ln3/m0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static k(Landroid/content/Context;)Ln3/m0/y;
    .locals 0

    .line 1
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/w;
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Ln3/m0/y;->b(Ljava/lang/String;Ln3/m0/h;Ljava/util/List;)Ln3/m0/w;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Ljava/lang/String;Ln3/m0/h;Ljava/util/List;)Ln3/m0/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ln3/m0/h;",
            "Ljava/util/List<",
            "Ln3/m0/r;",
            ">;)",
            "Ln3/m0/w;"
        }
    .end annotation
.end method

.method public final c(Ln3/m0/r;)Ln3/m0/w;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/m0/y;->d(Ljava/util/List;)Ln3/m0/w;

    move-result-object p1

    return-object p1
.end method

.method public abstract d(Ljava/util/List;)Ln3/m0/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/m0/r;",
            ">;)",
            "Ln3/m0/w;"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)Ln3/m0/s;
.end method

.method public final f(Ln3/m0/z;)Ln3/m0/s;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/m0/y;->g(Ljava/util/List;)Ln3/m0/s;

    move-result-object p1

    return-object p1
.end method

.method public abstract g(Ljava/util/List;)Ln3/m0/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ln3/m0/z;",
            ">;)",
            "Ln3/m0/s;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Ln3/m0/g;Ln3/m0/u;)Ln3/m0/s;
.end method

.method public i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ln3/m0/y;->j(Ljava/lang/String;Ln3/m0/h;Ljava/util/List;)Ln3/m0/s;

    move-result-object p1

    return-object p1
.end method

.method public abstract j(Ljava/lang/String;Ln3/m0/h;Ljava/util/List;)Ln3/m0/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ln3/m0/h;",
            "Ljava/util/List<",
            "Ln3/m0/r;",
            ">;)",
            "Ln3/m0/s;"
        }
    .end annotation
.end method

.method public abstract l(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ln3/m0/x;",
            ">;"
        }
    .end annotation
.end method

.method public abstract m(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ln3/m0/x;",
            ">;>;"
        }
    .end annotation
.end method
