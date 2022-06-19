.class public abstract Lcom/hiya/stingray/t/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/hiya/stingray/t/d0;",
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

.method public static c()Lcom/hiya/stingray/t/d0$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/t/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/d0;->d(Lcom/hiya/stingray/t/d0;)I

    move-result p1

    return p1
.end method

.method public d(Lcom/hiya/stingray/t/d0;)I
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/hiya/stingray/t/d0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/hiya/stingray/t/d0;

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract h()Lcom/hiya/stingray/t/b0;
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public abstract j()Lcom/hiya/stingray/t/f0;
.end method

.method public abstract k()I
.end method

.method public abstract m()Ljava/lang/Integer;
.end method

.method public abstract n()Lcom/hiya/stingray/t/n0;
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public abstract q()Lcom/hiya/stingray/t/y0;
.end method

.method public abstract s()J
.end method

.method public abstract t()Z
.end method
