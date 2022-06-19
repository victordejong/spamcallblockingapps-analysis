.class public final Le/a/v2/v/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/v2/v/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/v2/v/d;

    invoke-direct {v0}, Le/a/v2/v/d;-><init>()V

    sput-object v0, Le/a/v2/v/d;->a:Le/a/v2/v/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, v1, p1

    if-ltz v0, :cond_1

    const-string p1, "0-1"

    goto/16 :goto_d

    :cond_1
    :goto_0
    const/4 v0, 0x2

    int-to-long v3, v0

    cmp-long v0, v1, p1

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v0, v3, p1

    if-ltz v0, :cond_3

    const-string p1, "1-2"

    goto/16 :goto_d

    :cond_3
    :goto_1
    const/4 v0, 0x5

    int-to-long v0, v0

    cmp-long v2, v3, p1

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    cmp-long v2, v0, p1

    if-ltz v2, :cond_5

    const-string p1, "2-5"

    goto/16 :goto_d

    :cond_5
    :goto_2
    const/16 v2, 0x8

    int-to-long v2, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    cmp-long v0, v2, p1

    if-ltz v0, :cond_7

    const-string p1, "5-8"

    goto/16 :goto_d

    :cond_7
    :goto_3
    const/16 v0, 0xa

    int-to-long v0, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_8

    goto :goto_4

    :cond_8
    cmp-long v2, v0, p1

    if-ltz v2, :cond_9

    const-string p1, "8-10"

    goto/16 :goto_d

    :cond_9
    :goto_4
    const/16 v2, 0xf

    int-to-long v2, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_a

    goto :goto_5

    :cond_a
    cmp-long v0, v2, p1

    if-ltz v0, :cond_b

    const-string p1, "10-15"

    goto/16 :goto_d

    :cond_b
    :goto_5
    const/16 v0, 0x14

    int-to-long v0, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_c

    goto :goto_6

    :cond_c
    cmp-long v2, v0, p1

    if-ltz v2, :cond_d

    const-string p1, "15-20"

    goto/16 :goto_d

    :cond_d
    :goto_6
    const/16 v2, 0x19

    int-to-long v2, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_e

    goto :goto_7

    :cond_e
    cmp-long v0, v2, p1

    if-ltz v0, :cond_f

    const-string p1, "20-25"

    goto :goto_d

    :cond_f
    :goto_7
    const/16 v0, 0x28

    int-to-long v0, v0

    const/16 v2, 0x1e

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_10

    goto :goto_8

    :cond_10
    cmp-long v2, v0, p1

    if-ltz v2, :cond_11

    const-string p1, "30-40"

    goto :goto_d

    :cond_11
    :goto_8
    const/16 v2, 0x32

    int-to-long v2, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_12

    goto :goto_9

    :cond_12
    cmp-long v0, v2, p1

    if-ltz v0, :cond_13

    const-string p1, "40-50"

    goto :goto_d

    :cond_13
    :goto_9
    const/16 v0, 0x3c

    int-to-long v0, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_14

    goto :goto_a

    :cond_14
    cmp-long v2, v0, p1

    if-ltz v2, :cond_15

    const-string p1, "50-60"

    goto :goto_d

    :cond_15
    :goto_a
    const/16 v2, 0x5a

    int-to-long v2, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_16

    goto :goto_b

    :cond_16
    cmp-long v0, v2, p1

    if-ltz v0, :cond_17

    const-string p1, "60-90"

    goto :goto_d

    :cond_17
    :goto_b
    const/16 v0, 0x78

    int-to-long v0, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_18

    goto :goto_c

    :cond_18
    cmp-long p1, v0, p1

    if-ltz p1, :cond_19

    const-string p1, "90-120"

    goto :goto_d

    :cond_19
    :goto_c
    const-string p1, ">120"

    :goto_d
    return-object p1
.end method
