.class public abstract Lcom/hiya/stingray/t/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/n0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hiya/stingray/t/n0$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/h$a;

    invoke-direct {v0}, Lcom/hiya/stingray/t/h$a;-><init>()V

    return-object v0
.end method

.method public static b()Lcom/hiya/stingray/t/n0$a;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/n0;->a()Lcom/hiya/stingray/t/n0$a;

    move-result-object v0

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->i(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 3
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    sget-object v2, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    .line 4
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/n0$a;->e(Lcom/hiya/stingray/t/m0;)Lcom/hiya/stingray/t/n0$a;

    sget-object v2, Lcom/hiya/stingray/t/o0;->UNAVAILABLE:Lcom/hiya/stingray/t/o0;

    .line 5
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/n0$a;->d(Lcom/hiya/stingray/t/o0;)Lcom/hiya/stingray/t/n0$a;

    .line 6
    invoke-static {}, Lcom/hiya/stingray/t/r0;->b()Lcom/hiya/stingray/t/r0$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/t/r0$a;->a()Lcom/hiya/stingray/t/r0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/n0$a;->f(Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/t/n0$a;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/n0$a;->b(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;

    .line 8
    invoke-static {}, Lcom/google/common/collect/z;->y()Lcom/google/common/collect/z;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/n0$a;->j(Lcom/google/common/collect/z;)Lcom/hiya/stingray/t/n0$a;

    .line 9
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->h(Ljava/util/Map;)Lcom/hiya/stingray/t/n0$a;

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lcom/hiya/stingray/t/o0;
.end method

.method public abstract f()Lcom/hiya/stingray/t/m0;
.end method

.method public abstract g()Lcom/hiya/stingray/t/r0;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()Lcom/google/common/collect/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
