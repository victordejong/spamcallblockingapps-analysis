.class public final Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0087\u0008\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008+\u0010,J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJd\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00022\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00082\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\rH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u0010\u0010\u001b\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\nJ\u001a\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0019\u0010\u0013\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010 \u001a\u0004\u0008!\u0010\u0004R\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010 \u001a\u0004\u0008\"\u0010\u0004R\u0019\u0010\u0015\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010#\u001a\u0004\u0008$\u0010\nR\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010 \u001a\u0004\u0008%\u0010\u0004R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010&\u001a\u0004\u0008\'\u0010\u000fR\u0019\u0010\u0016\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010#\u001a\u0004\u0008(\u0010\nR\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010 \u001a\u0004\u0008)\u0010\u0004R\u0019\u0010\u0014\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010#\u001a\u0004\u0008*\u0010\n\u00a8\u0006-"
    }
    d2 = {
        "Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "component4",
        "",
        "component5",
        "()I",
        "component6",
        "component7",
        "",
        "component8",
        "()Ljava/lang/Long;",
        "name",
        "image",
        "deeplink",
        "category",
        "maxShowCount",
        "shownCount",
        "clickedCount",
        "lastShownTime",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getCategory",
        "getImage",
        "I",
        "getShownCount",
        "getName",
        "Ljava/lang/Long;",
        "getLastShownTime",
        "getClickedCount",
        "getDeeplink",
        "getMaxShowCount",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)V",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field private final clickedCount:I

.field private final deeplink:Ljava/lang/String;

.field private final image:Ljava/lang/String;

.field private final lastShownTime:Ljava/lang/Long;

.field private final maxShowCount:I

.field private final name:Ljava/lang/String;

.field private final shownCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)V
    .locals 6

    const-string v1, "name"

    const-string v3, "image"

    const-string v5, "category"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->image:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->deeplink:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->category:Ljava/lang/String;

    iput p5, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->maxShowCount:I

    iput p6, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->shownCount:I

    iput p7, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->clickedCount:I

    iput-object p8, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->lastShownTime:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;ILs1/z/c/f;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v2 .. v10}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;ILjava/lang/Object;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->image:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->deeplink:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->category:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->maxShowCount:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->shownCount:I

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->clickedCount:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->lastShownTime:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move p5, v6

    move p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->deeplink:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->maxShowCount:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->shownCount:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->clickedCount:I

    return v0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->lastShownTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;
    .locals 10

    const-string v0, "name"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image"

    move-object v3, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    move-object v5, p4

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-object v1, v0

    move-object v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->image:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->image:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->deeplink:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->deeplink:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->maxShowCount:I

    iget v1, p1, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->maxShowCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->shownCount:I

    iget v1, p1, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->shownCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->clickedCount:I

    iget v1, p1, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->clickedCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->lastShownTime:Ljava/lang/Long;

    iget-object p1, p1, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->lastShownTime:Ljava/lang/Long;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickedCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->clickedCount:I

    return v0
.end method

.method public final getDeeplink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->deeplink:Ljava/lang/String;

    return-object v0
.end method

.method public final getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastShownTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->lastShownTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getMaxShowCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->maxShowCount:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getShownCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->shownCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->image:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->deeplink:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->category:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->maxShowCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->shownCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->clickedCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->lastShownTime:Ljava/lang/Long;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "NotificationBanner(name="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deeplink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->deeplink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxShowCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->maxShowCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shownCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->shownCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clickedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->clickedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastShownTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->lastShownTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
