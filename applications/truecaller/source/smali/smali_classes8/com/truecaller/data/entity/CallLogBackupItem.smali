.class public final Lcom/truecaller/data/entity/CallLogBackupItem;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008,\u0008\u0087\u0008\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0019\u001a\u00020\t\u0012\u0006\u0010\u001a\u001a\u00020\u000c\u0012\u0006\u0010\u001b\u001a\u00020\t\u0012\u0006\u0010\u001c\u001a\u00020\t\u0012\u0006\u0010\u001d\u001a\u00020\u0006\u0012\u0006\u0010\u001e\u001a\u00020\u0006\u0012\u0006\u0010\u001f\u001a\u00020\u0006\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010#\u001a\u00020\t\u00a2\u0006\u0004\u00086\u00107J\u001a\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\n\u001a\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u000bJ\u0010\u0010\u0010\u001a\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u0010\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0008J\u0010\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0008J\u0010\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0008J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u000eJ\u0010\u0010\u0018\u001a\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u000bJ\u0084\u0001\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00062\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010#\u001a\u00020\tH\u00c6\u0001\u00a2\u0006\u0004\u0008$\u0010%J\u0010\u0010&\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008&\u0010\u000eR\u0019\u0010\u001c\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\'\u001a\u0004\u0008(\u0010\u000bR\u001b\u0010 \u001a\u0004\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010)\u001a\u0004\u0008*\u0010\u000eR\u0019\u0010\u001a\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010)\u001a\u0004\u0008+\u0010\u000eR\u001b\u0010\"\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010)\u001a\u0004\u0008,\u0010\u000eR\u0019\u0010\u001b\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\'\u001a\u0004\u0008-\u0010\u000bR\u001b\u0010!\u001a\u0004\u0018\u00010\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010.\u001a\u0004\u0008/\u0010\u0016R\u0019\u0010#\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010\'\u001a\u0004\u00080\u0010\u000bR\u0019\u0010\u0019\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\'\u001a\u0004\u00081\u0010\u000bR\u0019\u0010\u001e\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u00102\u001a\u0004\u00083\u0010\u0008R\u0019\u0010\u001d\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u00102\u001a\u0004\u00084\u0010\u0008R\u0019\u0010\u001f\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u00102\u001a\u0004\u00085\u0010\u0008\u00a8\u00068"
    }
    d2 = {
        "Lcom/truecaller/data/entity/CallLogBackupItem;",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "component1",
        "()J",
        "",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "()Ljava/lang/Integer;",
        "component10",
        "component11",
        "callLogId",
        "number",
        "timestamp",
        "duration",
        "type",
        "action",
        "features",
        "componentName",
        "flag",
        "filterSource",
        "ringingDuration",
        "copy",
        "(JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;J)Lcom/truecaller/data/entity/CallLogBackupItem;",
        "toString",
        "J",
        "getDuration",
        "Ljava/lang/String;",
        "getComponentName",
        "getNumber",
        "getFilterSource",
        "getTimestamp",
        "Ljava/lang/Integer;",
        "getFlag",
        "getRingingDuration",
        "getCallLogId",
        "I",
        "getAction",
        "getType",
        "getFeatures",
        "<init>",
        "(JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;J)V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final action:I

.field private final callLogId:J

.field private final componentName:Ljava/lang/String;

.field private final duration:J

.field private final features:I

.field private final filterSource:Ljava/lang/String;

.field private final transient flag:Ljava/lang/Integer;

.field private final number:Ljava/lang/String;

.field private final ringingDuration:J

.field private final timestamp:J

.field private final type:I


# direct methods
.method public constructor <init>(JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;J)V
    .locals 4

    move-object v0, p0

    move-object v1, p3

    const-string v2, "number"

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v2, p1

    iput-wide v2, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->callLogId:J

    iput-object v1, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->number:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->timestamp:J

    move-wide v1, p6

    iput-wide v1, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->duration:J

    move v1, p8

    iput v1, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->type:I

    move v1, p9

    iput v1, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->action:I

    move v1, p10

    iput v1, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->features:I

    move-object v1, p11

    iput-object v1, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->componentName:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->flag:Ljava/lang/Integer;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->filterSource:Ljava/lang/String;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->ringingDuration:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/data/entity/CallLogBackupItem;JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JILjava/lang/Object;)Lcom/truecaller/data/entity/CallLogBackupItem;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->callLogId:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->number:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->timestamp:J

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->duration:J

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p6

    :goto_3
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_4

    iget v9, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->type:I

    goto :goto_4

    :cond_4
    move/from16 v9, p8

    :goto_4
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_5

    iget v10, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->action:I

    goto :goto_5

    :cond_5
    move/from16 v10, p9

    :goto_5
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_6

    iget v11, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->features:I

    goto :goto_6

    :cond_6
    move/from16 v11, p10

    :goto_6
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_7

    iget-object v12, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->componentName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v12, p11

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    iget-object v13, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->flag:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->filterSource:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v1, v1, 0x400

    move-object/from16 p13, v14

    if-eqz v1, :cond_a

    iget-wide v14, v0, Lcom/truecaller/data/entity/CallLogBackupItem;->ringingDuration:J

    goto :goto_a

    :cond_a
    move-wide/from16 v14, p14

    :goto_a
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-wide/from16 p14, v14

    invoke-virtual/range {p0 .. p15}, Lcom/truecaller/data/entity/CallLogBackupItem;->copy(JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;J)Lcom/truecaller/data/entity/CallLogBackupItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->callLogId:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->filterSource:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->ringingDuration:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->timestamp:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->duration:J

    return-wide v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->type:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->action:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->features:I

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->flag:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;J)Lcom/truecaller/data/entity/CallLogBackupItem;
    .locals 17

    const-string v0, "number"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/data/entity/CallLogBackupItem;

    move-object v1, v0

    move-wide/from16 v2, p1

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-wide/from16 v15, p14

    invoke-direct/range {v1 .. v16}, Lcom/truecaller/data/entity/CallLogBackupItem;-><init>(JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/truecaller/data/entity/CallLogBackupItem;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->callLogId:J

    check-cast p1, Lcom/truecaller/data/entity/CallLogBackupItem;

    iget-wide v2, p1, Lcom/truecaller/data/entity/CallLogBackupItem;->callLogId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->timestamp:J

    iget-wide v2, p1, Lcom/truecaller/data/entity/CallLogBackupItem;->timestamp:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->action:I

    return v0
.end method

.method public final getCallLogId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->callLogId:J

    return-wide v0
.end method

.method public final getComponentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->duration:J

    return-wide v0
.end method

.method public final getFeatures()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->features:I

    return v0
.end method

.method public final getFilterSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->filterSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlag()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->flag:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final getRingingDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->ringingDuration:J

    return-wide v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->timestamp:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->callLogId:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->timestamp:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "CallLogBackupItem(callLogId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->callLogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->features:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->flag:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->filterSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ringingDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/entity/CallLogBackupItem;->ringingDuration:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
