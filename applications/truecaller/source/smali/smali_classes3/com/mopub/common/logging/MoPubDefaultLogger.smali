.class public Lcom/mopub/common/logging/MoPubDefaultLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/logging/MoPubLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    new-array p4, v1, [Ljava/lang/String;

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit16 v2, v2, 0xc00

    add-int/2addr v2, v1

    .line 2
    new-array v3, v2, [Ljava/lang/String;

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    mul-int/lit16 v5, v4, 0xc00

    add-int/lit8 v6, v4, 0x1

    mul-int/lit16 v7, v6, 0xc00

    .line 3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 4
    invoke-virtual {p4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, v6

    goto :goto_0

    :cond_1
    move-object p4, v3

    .line 5
    :goto_1
    array-length v2, p4

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, p4, v3

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-nez p3, :cond_2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object p2, v5, v1

    aput-object v4, v5, v6

    const-string v4, "[%s][%s] %s"

    .line 6
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_3

    :cond_2
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v0

    aput-object p2, v7, v1

    aput-object p3, v7, v6

    aput-object v4, v7, v5

    const-string v4, "[%s][%s][%s] %s"

    .line 7
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
