.class public final Lcom/truecaller/insights/models/InsightsReminder;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008,\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bu\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000e\u0012\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u000e\u00a2\u0006\u0004\u00088\u00109J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0012\u0010\n\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u0010\u0010\u000c\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0008J\u0010\u0010\u0014\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J\u0082\u0001\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000e2\u0008\u0008\u0003\u0010\u001c\u001a\u00020\u00022\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u000eH\u00c6\u0001\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\"\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0004J\u0010\u0010#\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008#\u0010\rJ\u001a\u0010%\u001a\u00020\u000e2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008%\u0010&R\"\u0010\u001b\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\'\u001a\u0004\u0008(\u0010\u0010\"\u0004\u0008)\u0010*R\u001c\u0010\u0018\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010+\u001a\u0004\u0008,\u0010\u0008R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010-\u001a\u0004\u0008.\u0010\u0004R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010-\u001a\u0004\u0008/\u0010\u0004R\u001c\u0010\u001f\u001a\u00020\u000e8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\'\u001a\u0004\u00080\u0010\u0010R\u001c\u0010\u0016\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010-\u001a\u0004\u00081\u0010\u0004R\u001c\u0010\u001a\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u00102\u001a\u0004\u00083\u0010\rR\u001c\u0010\u001c\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010-\u001a\u0004\u00084\u0010\u0004R\u001c\u0010\u001e\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010+\u001a\u0004\u00085\u0010\u0008R\u001c\u0010\u0017\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010+\u001a\u0004\u00086\u0010\u0008R\u001c\u0010\u0015\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010-\u001a\u0004\u00087\u0010\u0004\u00a8\u0006:"
    }
    d2 = {
        "Lcom/truecaller/insights/models/InsightsReminder;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "Ljava/util/Date;",
        "component3",
        "()Ljava/util/Date;",
        "component4",
        "component5",
        "",
        "component6",
        "()I",
        "",
        "component7",
        "()Z",
        "component8",
        "component9",
        "component10",
        "component11",
        "uniqueRefId",
        "vendorName",
        "dueDate",
        "generatedDate",
        "imageUrl",
        "timesNotified",
        "dismissed",
        "category",
        "metaJsonString",
        "createdAt",
        "pendingNotification",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Lcom/truecaller/insights/models/InsightsReminder;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Z",
        "getDismissed",
        "setDismissed",
        "(Z)V",
        "Ljava/util/Date;",
        "getGeneratedDate",
        "Ljava/lang/String;",
        "getImageUrl",
        "getMetaJsonString",
        "getPendingNotification",
        "getVendorName",
        "I",
        "getTimesNotified",
        "getCategory",
        "getCreatedAt",
        "getDueDate",
        "getUniqueRefId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V",
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

.field private final createdAt:Ljava/util/Date;

.field private dismissed:Z

.field private final dueDate:Ljava/util/Date;

.field private final generatedDate:Ljava/util/Date;

.field private final imageUrl:Ljava/lang/String;

.field private final metaJsonString:Ljava/lang/String;

.field private final pendingNotification:Z

.field private final timesNotified:I

.field private final uniqueRefId:Ljava/lang/String;

.field private final vendorName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V
    .locals 1

    const-string v0, "uniqueRefId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dueDate"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generatedDate"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/models/InsightsReminder;->uniqueRefId:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/insights/models/InsightsReminder;->vendorName:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/insights/models/InsightsReminder;->dueDate:Ljava/util/Date;

    iput-object p4, p0, Lcom/truecaller/insights/models/InsightsReminder;->generatedDate:Ljava/util/Date;

    iput-object p5, p0, Lcom/truecaller/insights/models/InsightsReminder;->imageUrl:Ljava/lang/String;

    iput p6, p0, Lcom/truecaller/insights/models/InsightsReminder;->timesNotified:I

    iput-boolean p7, p0, Lcom/truecaller/insights/models/InsightsReminder;->dismissed:Z

    iput-object p8, p0, Lcom/truecaller/insights/models/InsightsReminder;->category:Ljava/lang/String;

    iput-object p9, p0, Lcom/truecaller/insights/models/InsightsReminder;->metaJsonString:Ljava/lang/String;

    iput-object p10, p0, Lcom/truecaller/insights/models/InsightsReminder;->createdAt:Ljava/util/Date;

    iput-boolean p11, p0, Lcom/truecaller/insights/models/InsightsReminder;->pendingNotification:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;ZILs1/z/c/f;)V
    .locals 14

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    .line 4
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    move-object v12, v1

    goto :goto_6

    :cond_6
    move-object/from16 v12, p10

    :goto_6
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v13, v0

    goto :goto_7

    :cond_7
    move/from16 v13, p11

    :goto_7
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p8

    .line 5
    invoke-direct/range {v2 .. v13}, Lcom/truecaller/insights/models/InsightsReminder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/models/InsightsReminder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;ZILjava/lang/Object;)Lcom/truecaller/insights/models/InsightsReminder;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/truecaller/insights/models/InsightsReminder;->uniqueRefId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/truecaller/insights/models/InsightsReminder;->vendorName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/truecaller/insights/models/InsightsReminder;->dueDate:Ljava/util/Date;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/truecaller/insights/models/InsightsReminder;->generatedDate:Ljava/util/Date;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/truecaller/insights/models/InsightsReminder;->imageUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/truecaller/insights/models/InsightsReminder;->timesNotified:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/truecaller/insights/models/InsightsReminder;->dismissed:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/truecaller/insights/models/InsightsReminder;->category:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/truecaller/insights/models/InsightsReminder;->metaJsonString:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/truecaller/insights/models/InsightsReminder;->createdAt:Ljava/util/Date;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/truecaller/insights/models/InsightsReminder;->pendingNotification:Z

    goto :goto_a

    :cond_a
    move/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/truecaller/insights/models/InsightsReminder;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Lcom/truecaller/insights/models/InsightsReminder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->uniqueRefId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->pendingNotification:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->vendorName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->dueDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component4()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->generatedDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->timesNotified:I

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->dismissed:Z

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->metaJsonString:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Lcom/truecaller/insights/models/InsightsReminder;
    .locals 13

    const-string v0, "uniqueRefId"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorName"

    move-object v3, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dueDate"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generatedDate"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/insights/models/InsightsReminder;

    move-object v1, v0

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/truecaller/insights/models/InsightsReminder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/models/InsightsReminder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/models/InsightsReminder;

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->uniqueRefId:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/InsightsReminder;->uniqueRefId:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->vendorName:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/InsightsReminder;->vendorName:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->dueDate:Ljava/util/Date;

    iget-object v1, p1, Lcom/truecaller/insights/models/InsightsReminder;->dueDate:Ljava/util/Date;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->generatedDate:Ljava/util/Date;

    iget-object v1, p1, Lcom/truecaller/insights/models/InsightsReminder;->generatedDate:Ljava/util/Date;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->imageUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/InsightsReminder;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->timesNotified:I

    iget v1, p1, Lcom/truecaller/insights/models/InsightsReminder;->timesNotified:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->dismissed:Z

    iget-boolean v1, p1, Lcom/truecaller/insights/models/InsightsReminder;->dismissed:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/InsightsReminder;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->metaJsonString:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/InsightsReminder;->metaJsonString:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->createdAt:Ljava/util/Date;

    iget-object v1, p1, Lcom/truecaller/insights/models/InsightsReminder;->createdAt:Ljava/util/Date;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->pendingNotification:Z

    iget-boolean p1, p1, Lcom/truecaller/insights/models/InsightsReminder;->pendingNotification:Z

    if-ne v0, p1, :cond_0

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
    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getDismissed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->dismissed:Z

    return v0
.end method

.method public final getDueDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->dueDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getGeneratedDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->generatedDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetaJsonString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->metaJsonString:Ljava/lang/String;

    return-object v0
.end method

.method public final getPendingNotification()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->pendingNotification:Z

    return v0
.end method

.method public final getTimesNotified()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->timesNotified:I

    return v0
.end method

.method public final getUniqueRefId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->uniqueRefId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVendorName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->vendorName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/truecaller/insights/models/InsightsReminder;->uniqueRefId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/InsightsReminder;->vendorName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/InsightsReminder;->dueDate:Ljava/util/Date;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/InsightsReminder;->generatedDate:Ljava/util/Date;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/InsightsReminder;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/insights/models/InsightsReminder;->timesNotified:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/insights/models/InsightsReminder;->dismissed:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    move v2, v3

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/InsightsReminder;->category:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/InsightsReminder;->metaJsonString:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/InsightsReminder;->createdAt:Ljava/util/Date;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->pendingNotification:Z

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    move v3, v1

    :goto_7
    add-int/2addr v0, v3

    return v0
.end method

.method public final setDismissed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/insights/models/InsightsReminder;->dismissed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "InsightsReminder(uniqueRefId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->uniqueRefId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vendorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->vendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dueDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->dueDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", generatedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->generatedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timesNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->timesNotified:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dismissed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->dismissed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metaJsonString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->metaJsonString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pendingNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/insights/models/InsightsReminder;->pendingNotification:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
