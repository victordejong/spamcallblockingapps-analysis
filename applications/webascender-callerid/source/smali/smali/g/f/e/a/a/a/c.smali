.class public final Lg/f/e/a/a/a/c;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/e/a/a/a/c$a;,
        Lg/f/e/a/a/a/c$b;,
        Lg/f/e/a/a/a/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lg/f/e/a/a/a/c;",
        "Lg/f/e/a/a/a/c$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x3

.field public static final DATA_BUNDLE_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lg/f/e/a/a/a/c;

.field public static final EXPERIMENTAL_PAYLOAD_FIELD_NUMBER:I = 0x2

.field public static final IS_TEST_CAMPAIGN_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/z0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lg/f/e/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x4

.field public static final TRIGGERING_CONDITIONS_FIELD_NUMBER:I = 0x5

.field public static final VANILLA_PAYLOAD_FIELD_NUMBER:I = 0x1


# instance fields
.field private content_:Lcom/google/firebase/inappmessaging/d0;

.field private dataBundle_:Lcom/google/protobuf/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isTestCampaign_:Z

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private priority_:Lcom/google/firebase/inappmessaging/e;

.field private triggeringConditions_:Lcom/google/protobuf/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0$i<",
            "Lcom/google/firebase/inappmessaging/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/e/a/a/a/c;

    invoke-direct {v0}, Lg/f/e/a/a/a/c;-><init>()V

    .line 2
    sput-object v0, Lg/f/e/a/a/a/c;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/c;

    .line 3
    const-class v1, Lg/f/e/a/a/a/c;

    invoke-static {v1, v0}, Lcom/google/protobuf/y;->U(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg/f/e/a/a/a/c;->payloadCase_:I

    .line 3
    invoke-static {}, Lcom/google/protobuf/l0;->f()Lcom/google/protobuf/l0;

    move-result-object v0

    iput-object v0, p0, Lg/f/e/a/a/a/c;->dataBundle_:Lcom/google/protobuf/l0;

    .line 4
    invoke-static {}, Lcom/google/protobuf/y;->F()Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lg/f/e/a/a/a/c;->triggeringConditions_:Lcom/google/protobuf/a0$i;

    return-void
.end method

.method static synthetic W()Lg/f/e/a/a/a/c;
    .locals 1

    .line 1
    sget-object v0, Lg/f/e/a/a/a/c;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/c;

    return-object v0
.end method

.method private f0()Lcom/google/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/e/a/a/a/c;->dataBundle_:Lcom/google/protobuf/l0;

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
    sget-object p1, Lg/f/e/a/a/a/c;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lg/f/e/a/a/a/c;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lg/f/e/a/a/a/c;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lg/f/e/a/a/a/c;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/c;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lg/f/e/a/a/a/c;->PARSER:Lcom/google/protobuf/z0;

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
    sget-object p1, Lg/f/e/a/a/a/c;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/c;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "payload_"

    aput-object v0, p1, p3

    const-string p3, "payloadCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    const-class p3, Lg/f/e/a/a/a/d;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lg/f/e/a/a/a/b;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "content_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "priority_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "triggeringConditions_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/google/firebase/inappmessaging/h;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "isTestCampaign_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "dataBundle_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    sget-object p3, Lg/f/e/a/a/a/c$b;->a:Lcom/google/protobuf/k0;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0008\u0007\u0001\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003\t\u0004\t\u0005\u001b\u0007\u0007\u00082"

    .line 12
    sget-object p3, Lg/f/e/a/a/a/c;->DEFAULT_INSTANCE:Lg/f/e/a/a/a/c;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lg/f/e/a/a/a/c$a;

    invoke-direct {p1, p3}, Lg/f/e/a/a/a/c$a;-><init>(Lg/f/e/a/a/a/a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lg/f/e/a/a/a/c;

    invoke-direct {p1}, Lg/f/e/a/a/a/c;-><init>()V

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

.method public X()Lcom/google/firebase/inappmessaging/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/e/a/a/a/c;->content_:Lcom/google/firebase/inappmessaging/d0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/d0;->Z()Lcom/google/firebase/inappmessaging/d0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public Y()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg/f/e/a/a/a/c;->f0()Lcom/google/protobuf/l0;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public Z()Lg/f/e/a/a/a/b;
    .locals 2

    .line 1
    iget v0, p0, Lg/f/e/a/a/a/c;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lg/f/e/a/a/a/c;->payload_:Ljava/lang/Object;

    check-cast v0, Lg/f/e/a/a/a/b;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lg/f/e/a/a/a/b;->b0()Lg/f/e/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/f/e/a/a/a/c;->isTestCampaign_:Z

    return v0
.end method

.method public b0()Lg/f/e/a/a/a/c$c;
    .locals 1

    .line 1
    iget v0, p0, Lg/f/e/a/a/a/c;->payloadCase_:I

    invoke-static {v0}, Lg/f/e/a/a/a/c$c;->forNumber(I)Lg/f/e/a/a/a/c$c;

    move-result-object v0

    return-object v0
.end method

.method public c0()Lcom/google/firebase/inappmessaging/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/e/a/a/a/c;->priority_:Lcom/google/firebase/inappmessaging/e;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/e;->X()Lcom/google/firebase/inappmessaging/e;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/e/a/a/a/c;->triggeringConditions_:Lcom/google/protobuf/a0$i;

    return-object v0
.end method

.method public e0()Lg/f/e/a/a/a/d;
    .locals 2

    .line 1
    iget v0, p0, Lg/f/e/a/a/a/c;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lg/f/e/a/a/a/c;->payload_:Ljava/lang/Object;

    check-cast v0, Lg/f/e/a/a/a/d;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lg/f/e/a/a/a/d;->b0()Lg/f/e/a/a/a/d;

    move-result-object v0

    return-object v0
.end method
