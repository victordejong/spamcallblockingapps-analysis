.class public final enum Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum c:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum d:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum e:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum f:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum g:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum h:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum i:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum j:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum k:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum l:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum m:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum n:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum o:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum p:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum q:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum r:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum s:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final enum t:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

.field public static final synthetic u:[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->b:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 2
    new-instance v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v3, "MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->c:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 3
    new-instance v3, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->d:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 4
    new-instance v5, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v7, "MOBILE_MMS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->e:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 5
    new-instance v7, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v9, "MOBILE_SUPL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->f:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 6
    new-instance v9, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v11, "MOBILE_DUN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->g:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 7
    new-instance v11, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v13, "MOBILE_HIPRI"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->h:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 8
    new-instance v13, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v15, "WIMAX"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->i:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 9
    new-instance v15, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v14, "BLUETOOTH"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->j:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 10
    new-instance v14, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v12, "DUMMY"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->k:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 11
    new-instance v12, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v10, "ETHERNET"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->l:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 12
    new-instance v10, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v8, "MOBILE_FOTA"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->m:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 13
    new-instance v8, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v6, "MOBILE_IMS"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->n:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 14
    new-instance v6, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v4, "MOBILE_CBS"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->o:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 15
    new-instance v4, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v2, "WIFI_P2P"

    move-object/from16 v18, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v8}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->p:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 16
    new-instance v2, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v8, "MOBILE_IA"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v2, v8, v4, v6}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->q:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 17
    new-instance v8, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v6, "MOBILE_EMERGENCY"

    move-object/from16 v20, v2

    const/16 v2, 0x10

    invoke-direct {v8, v6, v2, v4}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->r:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 18
    new-instance v6, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v4, "PROXY"

    move-object/from16 v21, v8

    const/16 v8, 0x11

    invoke-direct {v6, v4, v8, v2}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->s:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    .line 19
    new-instance v4, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const-string v2, "VPN"

    move-object/from16 v22, v6

    const/16 v6, 0x12

    invoke-direct {v4, v2, v6, v8}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->t:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const/16 v2, 0x13

    new-array v2, v2, [Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    aput-object v22, v2, v8

    aput-object v4, v2, v6

    .line 20
    sput-object v2, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->u:[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->a:I

    return-void
.end method

.method public static a(I)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->t:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->s:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->r:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->q:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->p:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->o:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->n:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->m:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->l:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->k:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->j:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->i:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->h:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 14
    :pswitch_d
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->g:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 15
    :pswitch_e
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->f:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 16
    :pswitch_f
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->e:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 17
    :pswitch_10
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->d:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 18
    :pswitch_11
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->c:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    .line 19
    :pswitch_12
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->b:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->u:[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    invoke-virtual {v0}, [Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$d;->a:I

    return v0
.end method
