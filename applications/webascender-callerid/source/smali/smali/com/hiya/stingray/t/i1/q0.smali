.class public Lcom/hiya/stingray/t/i1/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/l/m;)Lcom/hiya/stingray/t/h1/h;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/i/l/m;->getRatingProvider()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/l/m;->getRatingImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lg/g/a/a/i/l/m;->getAvgRating()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_4

    :cond_4
    const-wide/16 v6, 0x0

    :goto_4
    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Lg/g/a/a/i/l/m;->getRatingCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v8, v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_5
    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Lg/g/a/a/i/l/m;->getRatingsUrl()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    move-object v9, v0

    goto :goto_6

    :cond_7
    move-object v9, v2

    .line 6
    :goto_6
    new-instance p1, Lcom/hiya/stingray/t/h1/h;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/hiya/stingray/t/h1/h;-><init>(Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    return-object p1
.end method
