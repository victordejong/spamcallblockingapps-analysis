.class public final Landroidx/work/OverwritingInputMerger;
.super Ln3/m0/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/m0/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ln3/m0/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/m0/f;",
            ">;)",
            "Ln3/m0/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/m0/f$a;

    invoke-direct {v0}, Ln3/m0/f$a;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/m0/f;

    .line 4
    invoke-virtual {v2}, Ln3/m0/f;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Ln3/m0/f$a;->b(Ljava/util/Map;)Ln3/m0/f$a;

    .line 6
    invoke-virtual {v0}, Ln3/m0/f$a;->a()Ln3/m0/f;

    move-result-object p1

    return-object p1
.end method
