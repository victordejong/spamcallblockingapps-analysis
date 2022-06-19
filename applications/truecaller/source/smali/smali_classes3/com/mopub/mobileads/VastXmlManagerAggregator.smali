.class public Lcom/mopub/mobileads/VastXmlManagerAggregator;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastXmlManagerAggregator$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADS_BY_AD_SLOT_ID:Ljava/lang/String; = "adsBy"

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:D

.field public final c:Landroid/content/Context;

.field public final d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "video/mp4"

    const-string v1, "video/3gpp"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$a;DILandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a:Ljava/lang/ref/WeakReference;

    .line 5
    iput-wide p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:D

    .line 6
    iput p4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:I

    .line 7
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 22
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "vastXml cannot be null"

    .line 1
    invoke-static {v0, v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "errorTrackers cannot be null"

    .line 2
    invoke-static {v2, v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Le/n/b/a1;

    invoke-direct {v3}, Le/n/b/a1;-><init>()V

    const/4 v4, 0x2

    const/4 v7, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v3, v0}, Le/n/b/a1;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v8, v3, Le/n/b/a1;->a:Lorg/w3c/dom/Document;

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "Ad"

    .line 7
    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v9, 0x0

    .line 8
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 9
    new-instance v10, Le/n/b/q0;

    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-direct {v10, v11}, Le/n/b/q0;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    iget-object v8, v1, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Le/n/b/a1;->a()Lcom/mopub/mobileads/VastTracker;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 12
    invoke-virtual {v3}, Le/n/b/a1;->a()Lcom/mopub/mobileads/VastTracker;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iget v10, v1, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:I

    if-lez v10, :cond_2

    sget-object v10, Lcom/mopub/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

    goto :goto_2

    :cond_2
    sget-object v10, Lcom/mopub/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    .line 13
    :goto_2
    invoke-static {v9, v10, v7, v7, v8}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_4

    return-object v7

    .line 14
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v0, v2

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/n/b/q0;

    .line 15
    iget-object v10, v9, Le/n/b/q0;->a:Lorg/w3c/dom/Node;

    const-string v11, "sequence"

    invoke-static {v10, v11}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_5

    .line 17
    :cond_5
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v10, v4, :cond_6

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    goto :goto_6

    :catch_0
    :goto_5
    const/4 v10, 0x1

    :goto_6
    if-nez v10, :cond_7

    goto :goto_4

    .line 18
    :cond_7
    iget-object v10, v9, Le/n/b/q0;->a:Lorg/w3c/dom/Node;

    const-string v11, "InLine"

    invoke-static {v10, v11}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 19
    new-instance v11, Le/n/b/t0;

    invoke-direct {v11, v10}, Le/n/b/t0;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_7

    :cond_8
    move-object v11, v7

    :goto_7
    if-eqz v11, :cond_20

    .line 20
    invoke-static {v11}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    invoke-static/range {p2 .. p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v11}, Le/n/b/r0;->d()Ljava/util/List;

    move-result-object v10

    .line 23
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/n/b/u0;

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v13, v0, Le/n/b/u0;->a:Lorg/w3c/dom/Node;

    const-string v14, "MediaFiles"

    invoke-static {v13, v14}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    if-nez v13, :cond_9

    goto :goto_a

    :cond_9
    const-string v14, "MediaFile"

    .line 27
    invoke-static {v13, v14}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 28
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Node;

    .line 29
    new-instance v15, Le/n/b/w0;

    invoke-direct {v15, v14}, Le/n/b/w0;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    :goto_a
    const-string v13, "managers cannot be null"

    .line 30
    invoke-static {v12, v13}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/high16 v13, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-object v15, v7

    .line 33
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 34
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Le/n/b/w0;

    .line 35
    iget-object v5, v7, Le/n/b/w0;->a:Lorg/w3c/dom/Node;

    const-string v6, "type"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    iget-object v6, v7, Le/n/b/w0;->a:Lorg/w3c/dom/Node;

    invoke-static {v6}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 37
    sget-object v4, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-nez v6, :cond_b

    goto/16 :goto_14

    .line 38
    :cond_b
    iget-object v4, v7, Le/n/b/w0;->a:Lorg/w3c/dom/Node;

    move-object/from16 p1, v6

    const-string v6, "width"

    invoke-static {v4, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 39
    iget-object v6, v7, Le/n/b/w0;->a:Lorg/w3c/dom/Node;

    move-object/from16 v17, v8

    const-string v8, "height"

    invoke-static {v6, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 40
    iget-object v8, v7, Le/n/b/w0;->a:Lorg/w3c/dom/Node;

    move-object/from16 v18, v10

    const-string v10, "bitrate"

    invoke-static {v8, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_c

    goto :goto_c

    .line 41
    :cond_c
    iget-object v8, v7, Le/n/b/w0;->a:Lorg/w3c/dom/Node;

    const-string v10, "minBitrate"

    invoke-static {v8, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 42
    iget-object v7, v7, Le/n/b/w0;->a:Lorg/w3c/dom/Node;

    const-string v10, "maxBitrate"

    invoke-static {v7, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v8, :cond_d

    if-eqz v7, :cond_d

    .line 43
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_c

    :cond_d
    if-eqz v8, :cond_e

    goto :goto_c

    :cond_e
    move-object v8, v7

    :goto_c
    if-eqz v4, :cond_18

    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_18

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gtz v7, :cond_f

    goto/16 :goto_13

    .line 45
    :cond_f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 46
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v9

    int-to-double v9, v4

    move-object/from16 v19, v7

    int-to-double v6, v6

    div-double/2addr v9, v6

    .line 47
    iget-wide v6, v1, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:D

    sub-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 48
    iget v9, v1, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:I

    sub-int v4, v9, v4

    div-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v9, v4

    add-double/2addr v6, v9

    if-eqz v8, :cond_11

    .line 49
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_e

    :cond_11
    :goto_d
    const/4 v4, 0x0

    :goto_e
    const/16 v8, 0x2bc

    if-gt v8, v4, :cond_12

    const/16 v8, 0x5dc

    if-gt v4, v8, :cond_12

    const-wide/16 v8, 0x0

    move-object v10, v3

    goto :goto_f

    :cond_12
    rsub-int v8, v4, 0x2bc

    .line 50
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x442f0000    # 700.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    rsub-int v4, v4, 0x5dc

    .line 51
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const v10, 0x44bb8000    # 1500.0f

    div-float/2addr v4, v10

    move-object v10, v3

    float-to-double v3, v4

    .line 52
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    :goto_f
    if-nez v5, :cond_13

    const-string v5, ""

    .line 53
    :cond_13
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x63306f58

    if-eq v3, v4, :cond_15

    const v4, 0x4f62635d

    if-eq v3, v4, :cond_14

    goto :goto_10

    :cond_14
    const-string v3, "video/mp4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    goto :goto_11

    :cond_15
    const-string v3, "video/3gpp"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    goto :goto_11

    :cond_16
    :goto_10
    const/4 v3, -0x1

    :goto_11
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_17

    move-wide/from16 v20, v4

    goto :goto_12

    :cond_17
    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    :goto_12
    add-double/2addr v6, v4

    add-double/2addr v6, v8

    div-double/2addr v4, v6

    mul-double v3, v4, v20

    cmpl-double v5, v3, v13

    if-lez v5, :cond_1a

    move-object/from16 v15, p1

    move-wide v13, v3

    goto :goto_15

    :cond_18
    :goto_13
    move-object v10, v3

    move-object/from16 v19, v9

    goto :goto_15

    :cond_19
    :goto_14
    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object/from16 v18, v10

    move-object v10, v3

    .line 54
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    :cond_1a
    :goto_15
    move-object v3, v10

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    const/4 v4, 0x2

    const/4 v7, 0x0

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object/from16 v18, v10

    move-object v10, v3

    if-eqz v15, :cond_1d

    .line 55
    new-instance v3, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v3}, Lcom/mopub/mobileads/VastVideoConfig;-><init>()V

    .line 56
    invoke-virtual {v11}, Le/n/b/r0;->c()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 57
    invoke-virtual {v1, v0, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d(Le/n/b/u0;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 58
    iget-object v0, v0, Le/n/b/u0;->a:Lorg/w3c/dom/Node;

    const-string v4, "VideoClicks"

    invoke-static {v0, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_16

    :cond_1c
    const-string v4, "ClickThrough"

    .line 59
    invoke-static {v0, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_16
    invoke-virtual {v3, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setClickThroughUrl(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3, v15}, Lcom/mopub/mobileads/VastVideoConfig;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v11}, Le/n/b/r0;->a()Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addVastCompanionAdConfigs(Ljava/lang/Iterable;)V

    .line 64
    invoke-virtual {v11}, Le/n/b/r0;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual {v3, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addErrorTrackers(Ljava/util/List;)V

    .line 66
    invoke-virtual {v1, v11, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f(Le/n/b/r0;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 67
    invoke-virtual {v1, v11, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->g(Le/n/b/r0;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 68
    iget-object v0, v11, Le/n/b/r0;->a:Lorg/w3c/dom/Node;

    invoke-virtual {v1, v0, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V

    move-object v0, v2

    goto :goto_17

    :cond_1d
    move-object v0, v2

    move-object v3, v10

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    const/4 v4, 0x2

    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_1e
    move-object v10, v3

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    const/4 v3, 0x0

    :goto_17
    if-eqz v3, :cond_1f

    .line 69
    invoke-virtual {v1, v10, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e(Le/n/b/a1;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v3

    :cond_1f
    move-object v3, v0

    move-object/from16 v9, v19

    goto :goto_18

    :cond_20
    move-object v10, v3

    move-object/from16 v17, v8

    move-object v3, v0

    .line 70
    :goto_18
    iget-object v0, v9, Le/n/b/q0;->a:Lorg/w3c/dom/Node;

    const-string v4, "Wrapper"

    invoke-static {v0, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 71
    new-instance v4, Le/n/b/z0;

    invoke-direct {v4, v0}, Le/n/b/z0;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_19

    :cond_21
    const/4 v4, 0x0

    :goto_19
    if-eqz v4, :cond_2e

    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    invoke-virtual {v4}, Le/n/b/r0;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, v4, Le/n/b/r0;->a:Lorg/w3c/dom/Node;

    const-string v6, "VASTAdTagURI"

    invoke-static {v0, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    const/4 v7, 0x0

    goto :goto_1d

    .line 76
    :cond_22
    :try_start_2
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    iget v6, v1, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_24

    add-int/lit8 v6, v6, 0x1

    .line 78
    iput v6, v1, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 79
    :try_start_3
    invoke-static {v0}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 80
    :try_start_4
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    :try_start_5
    invoke-static {v7}, Lcom/mopub/common/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    :try_start_6
    invoke-static {v7}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 83
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1c

    :catchall_0
    move-exception v0

    goto :goto_1b

    :catchall_1
    move-exception v0

    goto :goto_1a

    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    :goto_1a
    const/4 v7, 0x0

    .line 84
    :goto_1b
    invoke-static {v7}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz v6, :cond_23

    .line 85
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_23
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .line 86
    sget-object v6, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const-string v7, "Failed to follow VAST redirect"

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v0, v8, v7

    invoke-static {v6, v8}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 88
    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v6, v1, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v5, v0, v7, v7, v6}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    :cond_24
    const/4 v0, 0x0

    :goto_1c
    move-object v7, v0

    :goto_1d
    if-nez v7, :cond_25

    goto/16 :goto_23

    .line 89
    :cond_25
    invoke-virtual {v1, v7, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    if-nez v0, :cond_26

    goto/16 :goto_23

    .line 90
    :cond_26
    invoke-virtual {v4}, Le/n/b/r0;->c()Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 92
    invoke-virtual {v4}, Le/n/b/r0;->d()Ljava/util/List;

    move-result-object v2

    .line 93
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/n/b/u0;

    .line 94
    invoke-virtual {v1, v3, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d(Le/n/b/u0;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_1e

    .line 95
    :cond_27
    invoke-virtual {v1, v4, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f(Le/n/b/r0;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 96
    invoke-virtual {v1, v4, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->g(Le/n/b/r0;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 97
    iget-object v2, v4, Le/n/b/r0;->a:Lorg/w3c/dom/Node;

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 98
    invoke-virtual {v4}, Le/n/b/r0;->a()Ljava/util/List;

    move-result-object v2

    .line 99
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result v3

    if-nez v3, :cond_28

    .line 100
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 101
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addVastCompanionAdConfigs(Ljava/lang/Iterable;)V

    goto/16 :goto_22

    .line 102
    :cond_28
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAdConfigs()Ljava/util/Set;

    move-result-object v3

    .line 103
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 104
    move-object v5, v2

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a
    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/n/b/s0;

    .line 105
    iget-object v7, v6, Le/n/b/s0;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 106
    iget-object v7, v7, Lcom/mopub/mobileads/VastResourceXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v8, "StaticResource"

    invoke-static {v7, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2c

    iget-object v7, v6, Le/n/b/s0;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 108
    iget-object v7, v7, Lcom/mopub/mobileads/VastResourceXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v8, "HTMLResource"

    invoke-static {v7, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2c

    iget-object v7, v6, Le/n/b/s0;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 110
    iget-object v7, v7, Lcom/mopub/mobileads/VastResourceXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v8, "IFrameResource"

    invoke-static {v7, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2b

    goto :goto_20

    :cond_2b
    const/4 v9, 0x0

    goto :goto_21

    :cond_2c
    :goto_20
    const/4 v9, 0x1

    :goto_21
    if-nez v9, :cond_2a

    .line 112
    invoke-virtual {v6}, Le/n/b/s0;->a()Ljava/util/List;

    move-result-object v7

    .line 113
    invoke-virtual {v4, v7}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/Collection;)V

    .line 114
    invoke-virtual {v6}, Le/n/b/s0;->b()Ljava/util/List;

    move-result-object v6

    .line 115
    invoke-virtual {v4, v6}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/Collection;)V

    goto :goto_1f

    .line 116
    :cond_2d
    :goto_22
    invoke-virtual {v1, v10, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e(Le/n/b/a1;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v0

    :cond_2e
    :goto_23
    move-object v0, v3

    move-object v3, v10

    move-object/from16 v8, v17

    const/4 v4, 0x2

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_2f
    move-object v3, v7

    return-object v3

    :catch_2
    move-exception v0

    move-object v3, v7

    move-object v4, v0

    .line 117
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Failed to parse VAST XML"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v0, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v4, v1, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {v2, v0, v3, v3, v4}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-object v3
.end method

.method public b(Ljava/util/List;)Ljava/util/Set;
    .locals 20
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/n/b/s0;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "managers cannot be null"

    .line 1
    invoke-static {v1, v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_9

    aget-object v5, v1, v4

    .line 5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/n/b/s0;

    .line 6
    iget-object v8, v7, Le/n/b/s0;->a:Lorg/w3c/dom/Node;

    const-string v9, "width"

    invoke-static {v8, v9}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 7
    iget-object v9, v7, Le/n/b/s0;->a:Lorg/w3c/dom/Node;

    const-string v10, "height"

    invoke-static {v9, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v8, :cond_0

    .line 8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x12c

    if-lt v10, v11, :cond_0

    if-eqz v9, :cond_0

    .line 9
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0xfa

    if-ge v10, v11, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 11
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 12
    iget-object v11, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 13
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 14
    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 15
    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v11

    int-to-float v8, v8

    .line 16
    iget-object v13, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {v8, v13}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    int-to-float v9, v9

    .line 17
    iget-object v13, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {v9, v13}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v9

    add-int/lit8 v13, v12, -0x10

    if-gt v8, v13, :cond_2

    add-int/lit8 v13, v11, -0x10

    if-gt v9, v13, :cond_2

    goto :goto_3

    .line 18
    :cond_2
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 19
    sget-object v14, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne v14, v5, :cond_3

    .line 20
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v13, Landroid/graphics/Point;->x:I

    .line 21
    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v13, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_3
    int-to-float v8, v8

    int-to-float v14, v12

    div-float v14, v8, v14

    int-to-float v9, v9

    int-to-float v15, v11

    div-float v15, v9, v15

    cmpl-float v16, v14, v15

    if-ltz v16, :cond_4

    .line 22
    iput v12, v13, Landroid/graphics/Point;->x:I

    div-float/2addr v9, v14

    float-to-int v8, v9

    .line 23
    iput v8, v13, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_4
    div-float/2addr v8, v15

    float-to-int v8, v8

    .line 24
    iput v8, v13, Landroid/graphics/Point;->x:I

    .line 25
    iput v11, v13, Landroid/graphics/Point;->y:I

    .line 26
    :goto_2
    iget v8, v13, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, v8, -0x10

    iput v8, v13, Landroid/graphics/Point;->x:I

    .line 27
    iget v9, v13, Landroid/graphics/Point;->y:I

    add-int/lit8 v9, v9, -0x10

    iput v9, v13, Landroid/graphics/Point;->y:I

    if-ltz v8, :cond_6

    if-gez v9, :cond_5

    goto :goto_3

    :cond_5
    int-to-float v8, v8

    .line 28
    iget-object v9, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v8

    iput v8, v13, Landroid/graphics/Point;->x:I

    .line 29
    iget v8, v13, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget-object v9, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v8

    iput v8, v13, Landroid/graphics/Point;->y:I

    move-object v10, v13

    .line 30
    :cond_6
    :goto_3
    iget-object v8, v7, Le/n/b/s0;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 31
    iget v9, v10, Landroid/graphics/Point;->x:I

    iget v11, v10, Landroid/graphics/Point;->y:I

    .line 32
    invoke-static {v8, v5, v9, v11}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v15

    if-nez v15, :cond_7

    goto/16 :goto_1

    .line 33
    :cond_7
    new-instance v8, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget v13, v10, Landroid/graphics/Point;->x:I

    iget v14, v10, Landroid/graphics/Point;->y:I

    .line 34
    iget-object v9, v7, Le/n/b/s0;->a:Lorg/w3c/dom/Node;

    const-string v10, "CompanionClickThrough"

    invoke-static {v9, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 35
    invoke-static {v9}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v16

    .line 36
    invoke-virtual {v7}, Le/n/b/s0;->a()Ljava/util/List;

    move-result-object v17

    .line 37
    invoke-virtual {v7}, Le/n/b/s0;->b()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v19}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v2
.end method

.method public final c(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_2

    const-string v1, "AdVerifications"

    .line 2
    invoke-static {p1, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    const-string v1, "Verification"

    .line 3
    invoke-static {p1, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    const-string v2, "omid"

    .line 6
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "JavaScriptResource"

    const-string v5, "apiFramework"

    .line 7
    invoke-static {v1, v4, v5, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "TrackingEvents"

    .line 8
    invoke-static {v1, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    const-string v5, "verificationNotExecuted"

    .line 9
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "Tracking"

    const-string v7, "event"

    .line 10
    invoke-static {v4, v6, v7, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/w3c/dom/Node;

    move-result-object v4

    const-string v5, "VerificationParameters"

    .line 11
    invoke-static {v1, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 12
    invoke-static {v3}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v6, Lcom/mopub/common/ViewabilityVendor$Builder;

    invoke-direct {v6, v3}, Lcom/mopub/common/ViewabilityVendor$Builder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v6, v2}, Lcom/mopub/common/ViewabilityVendor$Builder;->withApiFramework(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;

    move-result-object v2

    const-string v3, "vendor"

    .line 15
    invoke-static {v1, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mopub/common/ViewabilityVendor$Builder;->withVendorKey(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;

    move-result-object v1

    .line 16
    invoke-static {v5}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/ViewabilityVendor$Builder;->withVerificationParameters(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;

    move-result-object v1

    .line 17
    invoke-static {v4}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/ViewabilityVendor$Builder;->withVerificationNotExecuted(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;

    .line 18
    invoke-virtual {v6}, Lcom/mopub/common/ViewabilityVendor$Builder;->build()Lcom/mopub/common/ViewabilityVendor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addViewabilityVendors(Ljava/util/Set;)V

    return-void
.end method

.method public final d(Le/n/b/u0;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "linearXmlManager cannot be null"

    .line 1
    invoke-static {v0, v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vastVideoConfig cannot be null"

    .line 2
    invoke-static {v1, v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "start"

    .line 5
    invoke-virtual {v0, v3}, Le/n/b/u0;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    new-instance v6, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;

    invoke-direct {v6, v4, v5}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;-><init>(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    move-result-object v4

    .line 9
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, v0, Le/n/b/u0;->a:Lorg/w3c/dom/Node;

    const-string v4, "TrackingEvents"

    invoke-static {v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v6, "Failed to parse VAST progress tracker %s"

    const-string v7, "event"

    const-string v8, "Tracking"

    const-string v9, "progress"

    const-string v10, "offset"

    const/4 v11, 0x1

    if-eqz v3, :cond_5

    .line 11
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 12
    invoke-static {v3, v8, v7, v12}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 13
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Node;

    .line 14
    invoke-static {v13, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 16
    sget-object v15, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;

    invoke-virtual {v15, v14}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 17
    invoke-static {v13}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    .line 18
    :try_start_0
    invoke-virtual {v15, v14}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 19
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-ltz v16, :cond_1

    .line 20
    new-instance v5, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v5, v13, v15}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 21
    :catch_0
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v13, v11, [Ljava/lang/Object;

    new-array v15, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v16

    invoke-static {v5, v13}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const-string v5, "creativeView"

    .line 22
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 23
    invoke-static {v3, v8, v7, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 24
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    .line 25
    invoke-static {v5}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 26
    new-instance v12, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;

    const/4 v13, 0x0

    invoke-direct {v12, v5, v13}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;-><init>(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v12}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    move-result-object v5

    .line 28
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_5
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 30
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "firstQuartile"

    .line 32
    invoke-virtual {v0, v3}, Le/n/b/u0;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-virtual {v0, v2, v3, v5}, Le/n/b/u0;->a(Ljava/util/List;Ljava/util/List;F)V

    const-string v3, "midpoint"

    .line 33
    invoke-virtual {v0, v3}, Le/n/b/u0;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v3, v5}, Le/n/b/u0;->a(Ljava/util/List;Ljava/util/List;F)V

    const-string v3, "thirdQuartile"

    .line 34
    invoke-virtual {v0, v3}, Le/n/b/u0;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-virtual {v0, v2, v3, v5}, Le/n/b/u0;->a(Ljava/util/List;Ljava/util/List;F)V

    .line 35
    iget-object v3, v0, Le/n/b/u0;->a:Lorg/w3c/dom/Node;

    invoke-static {v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 36
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 37
    invoke-static {v3, v8, v7, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 39
    invoke-static {v4, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_4

    .line 40
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 41
    sget-object v7, Lcom/mopub/mobileads/VastFractionalProgressTracker;->Companion:Lcom/mopub/mobileads/VastFractionalProgressTracker$Companion;

    invoke-virtual {v7, v5}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Companion;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 42
    invoke-static {v4}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    :try_start_1
    const-string v7, "%"

    const-string v8, ""

    .line 43
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_6

    .line 44
    new-instance v8, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;

    invoke-direct {v8, v4, v7}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;-><init>(Ljava/lang/String;F)V

    .line 45
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTracker;

    move-result-object v4

    .line 46
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 47
    :catch_1
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v7, v11, [Ljava/lang/Object;

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v4, v7}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_4

    .line 48
    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 49
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    const-string v2, "pause"

    .line 50
    invoke-virtual {v0, v2}, Le/n/b/u0;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 53
    new-instance v5, Lcom/mopub/mobileads/VastTracker$Builder;

    invoke-direct {v5, v4}, Lcom/mopub/mobileads/VastTracker$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lcom/mopub/mobileads/VastTracker$Builder;->isRepeatable(Z)Lcom/mopub/mobileads/VastTracker$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastTracker$Builder;->build()Lcom/mopub/mobileads/VastTracker;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 54
    :cond_9
    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/VastVideoConfig;->addPauseTrackers(Ljava/util/List;)V

    const-string v2, "resume"

    .line 55
    invoke-virtual {v0, v2}, Le/n/b/u0;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    new-instance v5, Lcom/mopub/mobileads/VastTracker$Builder;

    invoke-direct {v5, v4}, Lcom/mopub/mobileads/VastTracker$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lcom/mopub/mobileads/VastTracker$Builder;->isRepeatable(Z)Lcom/mopub/mobileads/VastTracker$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastTracker$Builder;->build()Lcom/mopub/mobileads/VastTracker;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 59
    :cond_a
    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/VastVideoConfig;->addResumeTrackers(Ljava/util/List;)V

    const-string v2, "complete"

    .line 60
    invoke-virtual {v0, v2}, Le/n/b/u0;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    const-string v2, "close"

    .line 62
    invoke-virtual {v0, v2}, Le/n/b/u0;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "closeLinear"

    .line 63
    invoke-virtual {v0, v3}, Le/n/b/u0;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addCloseTrackers(Ljava/util/List;)V

    const-string v2, "skip"

    .line 65
    invoke-virtual {v0, v2}, Le/n/b/u0;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addSkipTrackers(Ljava/util/List;)V

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v3, v0, Le/n/b/u0;->a:Lorg/w3c/dom/Node;

    const-string v4, "VideoClicks"

    invoke-static {v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_8

    :cond_b
    const-string v4, "ClickTracking"

    .line 69
    invoke-static {v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 71
    invoke-static {v4}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 72
    new-instance v5, Lcom/mopub/mobileads/VastTracker$Builder;

    invoke-direct {v5, v4}, Lcom/mopub/mobileads/VastTracker$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastTracker$Builder;->build()Lcom/mopub/mobileads/VastTracker;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 73
    :cond_d
    :goto_8
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addClickTrackers(Ljava/util/List;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffset()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 75
    iget-object v2, v0, Le/n/b/u0;->a:Lorg/w3c/dom/Node;

    const-string v4, "skipoffset"

    invoke-static {v2, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_9

    .line 76
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_9
    move-object v2, v3

    goto :goto_a

    .line 77
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 78
    :goto_a
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->setSkipOffset(Ljava/lang/String;)V

    .line 79
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v0, v0, Le/n/b/u0;->a:Lorg/w3c/dom/Node;

    const-string v4, "Icons"

    invoke-static {v0, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_c

    :cond_11
    const-string v4, "Icon"

    .line 82
    invoke-static {v0, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 84
    new-instance v5, Lcom/mopub/mobileads/VastIconXmlManager;

    invoke-direct {v5, v4}, Lcom/mopub/mobileads/VastIconXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    :goto_c
    const-string v0, "managers cannot be null"

    .line 85
    invoke-static {v2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v2

    const/4 v4, 0x0

    :goto_d
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1d

    aget-object v5, v2, v4

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 89
    :cond_13
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 90
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mopub/mobileads/VastIconXmlManager;

    .line 91
    iget-object v8, v7, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v9, "width"

    invoke-static {v8, v9}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 92
    iget-object v12, v7, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v13, "height"

    invoke-static {v12, v13}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v8, :cond_13

    .line 93
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_13

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v15, 0x12c

    if-gt v14, v15, :cond_13

    if-eqz v12, :cond_13

    .line 94
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_13

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v14, v15, :cond_14

    goto :goto_e

    .line 95
    :cond_14
    iget-object v14, v7, Lcom/mopub/mobileads/VastIconXmlManager;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 96
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 97
    invoke-static {v14, v5, v8, v12}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v22

    if-nez v22, :cond_15

    goto :goto_e

    .line 98
    :cond_15
    new-instance v0, Lcom/mopub/mobileads/VastIconConfig;

    .line 99
    iget-object v2, v7, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    invoke-static {v2, v9}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 101
    iget-object v2, v7, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    invoke-static {v2, v13}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 103
    iget-object v2, v7, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    invoke-static {v2, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    :try_start_2
    sget-object v4, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;

    invoke-virtual {v4, v2}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v20, v2

    goto :goto_f

    .line 105
    :catch_2
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v11, [Ljava/lang/Object;

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    const-string v2, "Invalid VAST icon offset format: %s:"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object/from16 v20, v3

    .line 106
    :goto_f
    iget-object v2, v7, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v4, "duration"

    invoke-static {v2, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    :try_start_3
    sget-object v4, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;

    invoke-virtual {v4, v2}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v21, v2

    goto :goto_10

    .line 108
    :catch_3
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v11, [Ljava/lang/Object;

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    const-string v2, "Invalid VAST icon duration format: %s:"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object/from16 v21, v3

    .line 109
    :goto_10
    iget-object v2, v7, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v4, "IconClicks"

    invoke-static {v2, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_16

    goto :goto_12

    :cond_16
    const-string v6, "IconClickTracking"

    .line 111
    invoke-static {v2, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 112
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    .line 113
    invoke-static {v6}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 114
    new-instance v8, Lcom/mopub/mobileads/VastTracker$Builder;

    invoke-direct {v8, v6}, Lcom/mopub/mobileads/VastTracker$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/mopub/mobileads/VastTracker$Builder;->build()Lcom/mopub/mobileads/VastTracker;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 115
    :cond_18
    :goto_12
    iget-object v2, v7, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    invoke-static {v2, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_13

    :cond_19
    const-string v3, "IconClickThrough"

    .line 116
    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    :goto_13
    move-object/from16 v24, v3

    .line 118
    iget-object v2, v7, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v3, "IconViewTracking"

    .line 119
    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 122
    invoke-static {v4}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 123
    new-instance v6, Lcom/mopub/mobileads/VastTracker$Builder;

    invoke-direct {v6, v4}, Lcom/mopub/mobileads/VastTracker$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastTracker$Builder;->build()Lcom/mopub/mobileads/VastTracker;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1b
    move-object/from16 v17, v0

    move-object/from16 v23, v5

    move-object/from16 v25, v3

    .line 124
    invoke-direct/range {v17 .. v25}, Lcom/mopub/mobileads/VastIconConfig;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    move-object v3, v0

    goto :goto_15

    :cond_1c
    const/4 v8, 0x0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    .line 125
    :cond_1d
    :goto_15
    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/VastVideoConfig;->setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V

    :cond_1e
    return-void
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    array-length v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    aget-object p1, p1, v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to generate VastVideoConfig."

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final e(Le/n/b/a1;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 4

    const-string v0, "xmlManager cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig cannot be null"

    .line 2
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/n/b/a1;->a:Lorg/w3c/dom/Document;

    const-string v1, "MP_TRACKING_URL"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    new-instance v3, Lcom/mopub/mobileads/VastTracker$Builder;

    invoke-direct {v3, v2}, Lcom/mopub/mobileads/VastTracker$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker$Builder;->build()Lcom/mopub/mobileads/VastTracker;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 8
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p1, Le/n/b/a1;->a:Lorg/w3c/dom/Document;

    const-string v2, "MoPubCtaText"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 11
    :goto_1
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCtaText(Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p1, Le/n/b/a1;->a:Lorg/w3c/dom/Document;

    const-string v2, "MoPubSkipText"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_3

    move-object v1, v0

    .line 15
    :cond_3
    invoke-virtual {p2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomSkipText(Ljava/lang/String;)V

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 17
    iget-object p1, p1, Le/n/b/a1;->a:Lorg/w3c/dom/Document;

    const-string v0, "MoPubCloseIcon"

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCloseIconUrl(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final f(Le/n/b/r0;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p1, Le/n/b/r0;->a:Lorg/w3c/dom/Node;

    const-string v0, "Extensions"

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    :goto_0
    if-eqz v1, :cond_d

    .line 6
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->a()Ljava/util/List;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/VastExtensionXmlManager;

    .line 8
    iget-object v2, v1, Lcom/mopub/mobileads/VastExtensionXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v3, "type"

    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MoPub"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object p1, v1, Lcom/mopub/mobileads/VastExtensionXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v1, "MoPubViewabilityTracker"

    .line 11
    invoke-static {p1, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_3

    goto/16 :goto_6

    .line 12
    :cond_3
    new-instance v1, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    .line 13
    iget-object p1, v1, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v2, "viewablePlaytime"

    .line 14
    invoke-static {p1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    sget-object v4, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;

    invoke-virtual {v4, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 16
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 17
    :catch_0
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v2, [Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v3

    const-string p1, "Invalid VAST viewablePlaytime format for \"HH:MM:SS[.mmm]\": %s:"

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_5
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 19
    :catch_1
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v2, [Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v3

    const-string p1, "Invalid VAST viewablePlaytime format for \"SS[.mmm]\": %s:"

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_1
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_7

    :cond_6
    :goto_3
    move-object p1, v0

    .line 21
    :cond_7
    iget-object v4, v1, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v5, "percentViewable"

    .line 22
    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    :try_start_2
    const-string v5, "%"

    const-string v6, ""

    .line 23
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 24
    :catch_2
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v6, v2, [Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    const-string v4, "Invalid VAST percentViewable format for \"d{1,3}%%\": %s:"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_9

    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_a

    :cond_9
    :goto_5
    move-object v2, v0

    .line 26
    :cond_a
    iget-object v1, v1, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->a:Lorg/w3c/dom/Node;

    invoke-static {v1}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_c

    if-eqz v2, :cond_c

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_6

    .line 28
    :cond_b
    new-instance v0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0}, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->build()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v0

    .line 30
    :cond_c
    :goto_6
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V

    :cond_d
    return-void
.end method

.method public final g(Le/n/b/r0;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    .line 1
    iget-object p1, p1, Le/n/b/r0;->a:Lorg/w3c/dom/Node;

    const-string v0, "Extensions"

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->a()Ljava/util/List;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastExtensionXmlManager;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/mopub/mobileads/VastExtensionXmlManager;->a:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onCancelled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_0
    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/mopub/mobileads/VastVideoConfig;

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method
