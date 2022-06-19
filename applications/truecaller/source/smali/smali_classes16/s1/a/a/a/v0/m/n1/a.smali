.class public final Ls1/a/a/a/v0/m/n1/a;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/n1/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ls1/a/a/a/v0/m/n1/k;",
        ">;",
        "Ls1/a/a/a/v0/m/n1/j;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/m/n1/k;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/m/n1/k;

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/m/n1/k;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/m/n1/k;

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/m/n1/k;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/m/n1/k;

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/m/n1/k;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/m/n1/k;

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
