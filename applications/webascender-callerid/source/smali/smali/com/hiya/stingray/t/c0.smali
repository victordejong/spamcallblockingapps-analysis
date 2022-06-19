.class public abstract Lcom/hiya/stingray/t/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/hiya/stingray/t/c0;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/hiya/stingray/t/j0;Ljava/lang/String;JLcom/google/common/collect/z;Ljava/lang/String;)Lcom/hiya/stingray/t/c0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/j0;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/collect/z<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hiya/stingray/t/c0;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/hiya/stingray/t/p;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/t/p;-><init>(Lcom/hiya/stingray/t/j0;Ljava/lang/String;JLcom/google/common/collect/z;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public c(Lcom/hiya/stingray/t/c0;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c0;->n()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/hiya/stingray/t/c0;->n()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/c0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/c0;->c(Lcom/hiya/stingray/t/c0;)I

    move-result p1

    return p1
.end method

.method public abstract h()Lcom/google/common/collect/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract j()Lcom/hiya/stingray/t/j0;
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()J
.end method
