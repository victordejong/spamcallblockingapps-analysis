.class public final Lcom/facebook/ads/redexgen/X/TZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KX;->A03(JLcom/facebook/ads/redexgen/X/KU;)Lcom/facebook/ads/redexgen/X/Qg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KU;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/KX;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TZ;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/KU;J)V
    .locals 0

    .line 54141
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/KU;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TZ;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TZ;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x69t
        0x63t
        0x33t
        0x31t
        0x34t
        0x35t
        0x32t
        0x12t
        0x44t
        0x46t
        0x15t
        0x46t
        0x13t
        0x41t
        0x11t
        0x1t
        0x18t
        0x4t
        0x5t
        0xet
        0x33t
        0x28t
        0x2et
        0x3bt
        0x3ft
        0x22t
        0x24t
        0x25t
        0x71t
        0x6bt
        0x6ct
        0x5at
        0x4dt
        0x49t
        0x5at
        0x4dt
        0x1ft
        0x5at
        0x4dt
        0x4dt
        0x50t
        0x4dt
        0x1ft
        0x50t
        0x5ct
        0x5ct
        0x4at
        0x4dt
        0x4dt
        0x5at
        0x5bt
        0x4bt
        0x7dt
        0x6at
        0x6et
        0x7dt
        0x6at
        0x38t
        0x6at
        0x7dt
        0x68t
        0x74t
        0x71t
        0x7dt
        0x7ct
        0x38t
        0x6bt
        0x6dt
        0x7bt
        0x7bt
        0x7dt
        0x6bt
        0x6bt
        0x7et
        0x6dt
        0x74t
        0x74t
        0x61t
        0x4bt
        0x4at
        0x67t
        0x4bt
        0x49t
        0x54t
        0x48t
        0x41t
        0x50t
        0x41t
        0x5ft
        0x5et
        0x75t
        0x42t
        0x42t
        0x5ft
        0x42t
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Qs;)V
    .locals 13

    .line 54142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/KU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KT;->A06(Lcom/facebook/ads/redexgen/X/KU;)V

    .line 54143
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qs;->A00()Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v0

    .line 54144
    .local p0, "response":Lcom/facebook/ads/redexgen/X/Qe;
    if-eqz v0, :cond_1

    .line 54145
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qe;->A5m()Ljava/lang/String;

    move-result-object v7

    .line 54146
    .local p1, "content":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    .line 54147
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A02(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/KY;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:J

    invoke-virtual {v3, v2, v7, v0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A06(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Ka;

    move-result-object v2

    .line 54148
    .local v0, "serverResponse":Lcom/facebook/ads/redexgen/X/Ka;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ka;->A01()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A03:Lcom/facebook/ads/redexgen/X/KZ;

    if-ne v1, v0, :cond_1

    .line 54149
    check-cast v2, Lcom/facebook/ads/redexgen/X/TV;

    .line 54150
    .local v0, "serverResponseError":Lcom/facebook/ads/redexgen/X/TV;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/TV;->A04()Ljava/lang/String;

    move-result-object v3

    .line 54151
    .local v7, "errorMsg":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/TV;->A03()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 54152
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v2

    .line 54153
    .local v0, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    if-nez v3, :cond_0

    .line 54154
    .local v3, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 54155
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    .line 54156
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A00(Lcom/facebook/ads/redexgen/X/KX;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v4

    .line 54157
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 54158
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 54159
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2j(JILjava/lang/String;Z)V

    .line 54160
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0F(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/K3;)V

    goto :goto_1

    .line 54161
    :cond_0
    move-object v7, v3

    goto :goto_0

    .line 54162
    :goto_1
    return-void
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54163
    .end local p0    # "response":Lcom/facebook/ads/redexgen/X/Qe;
    .end local p1    # "content":Ljava/lang/String;
    .end local v0    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v0
    .end local v7    # "errorMsg":Ljava/lang/String;
    .end local v0
    .end local v3    # "finalErrMessage":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 54164
    .local p0, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qs;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 54165
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 54166
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    .line 54167
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A00(Lcom/facebook/ads/redexgen/X/KX;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v4

    .line 54168
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 54169
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 54170
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2j(JILjava/lang/String;Z)V

    .line 54171
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0F(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/K3;)V

    .line 54172
    return-void

    .line 54173
    .end local p0    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v0    # "errorMessage":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 54174
    .local p0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 54175
    .local p1, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qs;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 54176
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 54177
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    .line 54178
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A00(Lcom/facebook/ads/redexgen/X/KX;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v8

    .line 54179
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    const/16 v1, 0xf

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54180
    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 54181
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v12

    .line 54182
    invoke-interface/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/0R;->A2j(JILjava/lang/String;Z)V

    .line 54183
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0F(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/K3;)V

    .line 54184
    return-void
.end method


# virtual methods
.method public final AAA(Lcom/facebook/ads/redexgen/X/Qe;)V
    .locals 5

    const/16 v2, 0x4f

    const/16 v1, 0xa

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TZ;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x34

    const/16 v1, 0x1b

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TZ;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54185
    if-eqz p1, :cond_0

    .line 54186
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Qe;->A5m()Ljava/lang/String;

    move-result-object v4

    .line 54187
    .local p0, "response":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/KU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KT;->A06(Lcom/facebook/ads/redexgen/X/KU;)V

    .line 54188
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/KU;

    invoke-static {v3, v4, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0I(Lcom/facebook/ads/redexgen/X/KX;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V

    .line 54189
    .end local p0    # "response":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final AAX(Ljava/lang/Exception;)V
    .locals 9

    const/16 v2, 0x59

    const/4 v1, 0x7

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TZ;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1f

    const/16 v1, 0x15

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TZ;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54190
    const-class v1, Lcom/facebook/ads/redexgen/X/Qs;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54191
    check-cast p1, Lcom/facebook/ads/redexgen/X/Qs;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TZ;->A02(Lcom/facebook/ads/redexgen/X/Qs;)V

    .line 54192
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/TZ;
    .end local v1
    :goto_0
    return-void

    .line 54193
    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 54194
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 54195
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 54196
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    .line 54197
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A00(Lcom/facebook/ads/redexgen/X/KX;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v4

    .line 54198
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 54199
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 54200
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2j(JILjava/lang/String;Z)V

    .line 54201
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A02:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0F(Lcom/facebook/ads/redexgen/X/KX;Lcom/facebook/ads/redexgen/X/K3;)V

    goto :goto_0
.end method
