.class public Ln3/m0/c0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/m0/c0/l;->l(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/c/a/c/a<",
        "Ljava/util/List<",
        "Ln3/m0/c0/s/p$c;",
        ">;",
        "Ln3/m0/x;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln3/m0/c0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/m0/c0/s/p$c;

    invoke-virtual {p1}, Ln3/m0/c0/s/p$c;->a()Ln3/m0/x;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
