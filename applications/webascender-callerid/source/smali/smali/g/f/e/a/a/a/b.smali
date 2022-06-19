.class public final Lg/f/e/a/a/a/b;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/e/a/a/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lg/f/e/a/a/a/b;",
        "Lg/f/e/a/a/a/b$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final CAMPAIGN_ID_FIELD_NUMBER:I = 0x1

.field public static final CAMPAIGN_NAME_FIELD_NUMBER:I = 0x5

.field public static final CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lg/f/e/a/a/a/b;

.field public static final EXPERIMENT_PAYLOAD_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lg/f/e/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private campaignEndTimeMillis_:J

.field private campaignId_:Ljava/lang/String;

.field private campaignName_:Ljava/lang/String;

.field private campaignStartTimeMillis_:J

.field private experimentPayload_:Lcom/google/firebase/inappmessaging/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/e/a/a/a/b;

    invoke-direct {v0}, Lg/f/e/a/a/a/b;-><init>()V

    .line 2
    sput-object v0, Lg/f/e/a/a/a/b;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/b;

    .line 3
    const-class v1, Lg/f/e/a/a/a/b;

    invoke-static {v1, v0}, Lcom/google/protobuf/y;->U(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/f/e/a/a/a/b;->campaignId_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lg/f/e/a/a/a/b;->campaignName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic W()Lg/f/e/a/a/a/b;
    .locals 1

    .line 1
    sget-object v0, Lg/f/e/a/a/a/b;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/b;

    return-object v0
.end method

.method public static b0()Lg/f/e/a/a/a/b;
    .locals 1

    .line 1
    sget-object v0, Lg/f/e/a/a/a/b;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method protected final D(Lcom/google/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lg/f/e/a/a/a/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lg/f/e/a/a/a/b;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lg/f/e/a/a/a/b;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lg/f/e/a/a/a/b;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lg/f/e/a/a/a/b;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/b;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lg/f/e/a/a/a/b;->PARSER:Lcom/google/protobuf/z0;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lg/f/e/a/a/a/b;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/b;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "campaignId_"

    aput-object v0, p1, p3

    const-string p3, "experimentPayload_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "campaignStartTimeMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "campaignEndTimeMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "campaignName_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\t\u0003\u0002\u0004\u0002\u0005\u0208"

    .line 11
    sget-object p3, Lg/f/e/a/a/a/b;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/b;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lg/f/e/a/a/a/b$a;

    invoke-direct {p1, p3}, Lg/f/e/a/a/a/b$a;-><init>(Lg/f/e/a/a/a/a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lg/f/e/a/a/a/b;

    invoke-direct {p1}, Lg/f/e/a/a/a/b;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public X()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/f/e/a/a/a/b;->campaignEndTimeMillis_:J

    return-wide v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/e/a/a/a/b;->campaignId_:Ljava/lang/String;

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/e/a/a/a/b;->campaignName_:Ljava/lang/String;

    return-object v0
.end method

.method public a0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/f/e/a/a/a/b;->campaignStartTimeMillis_:J

    return-wide v0
.end method

.method public c0()Lcom/google/firebase/inappmessaging/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/e/a/a/a/b;->experimentPayload_:Lcom/google/firebase/inappmessaging/m;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/m;->X()Lcom/google/firebase/inappmessaging/m;

    move-result-object v0

    :cond_0
    return-object v0
.end method
