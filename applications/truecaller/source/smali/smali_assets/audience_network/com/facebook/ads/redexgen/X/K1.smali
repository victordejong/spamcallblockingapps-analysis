.class public final Lcom/facebook/ads/redexgen/X/K1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/K0;,
        Lcom/facebook/ads/redexgen/X/Jz;
    }
.end annotation


# instance fields
.field public A00:J

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:I

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/Jz;

.field public final A0C:Ljava/lang/String;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/K0;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Z

.field public final A0F:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/Jz;)V
    .locals 7

    .line 41109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41110
    const-class v0, Lcom/facebook/ads/redexgen/X/K1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0C:Ljava/lang/String;

    .line 41111
    const/16 v0, 0x65

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A07:I

    .line 41112
    const/16 v0, 0x66

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0A:I

    .line 41113
    const/16 v0, 0x67

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A08:I

    .line 41114
    const/16 v0, 0x68

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A03:I

    .line 41115
    const/16 v0, 0x69

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A09:I

    .line 41116
    const/16 v0, 0x6a

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A02:I

    .line 41117
    const/16 v0, 0x6b

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A04:I

    .line 41118
    const/16 v0, 0x6c

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A05:I

    .line 41119
    const/16 v0, 0x6d

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A06:I

    .line 41120
    const/16 v0, 0x6e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A01:I

    .line 41121
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/K1;->A0E:Z

    .line 41122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A00:J

    .line 41123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0D:Ljava/util/List;

    .line 41124
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JF;->A0D(Landroid/content/Context;)I

    move-result v1

    .line 41125
    .local p1, "nativeViewabilityHistorySamplingRate":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 41126
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    .line 41127
    .end local v0
    :goto_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/K1;->A0B:Lcom/facebook/ads/redexgen/X/Jz;

    .line 41128
    return-void

    .line 41129
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A00()D

    move-result-wide v4

    .line 41130
    .local v0, "sessionRandom":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v1

    div-double/2addr v2, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    goto :goto_0
.end method

.method private A00()I
    .locals 1

    .line 41131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0B:Lcom/facebook/ads/redexgen/X/Jz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Jz;->A6A()I

    move-result v0

    return v0
.end method

.method private A01()I
    .locals 5

    .line 41132
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/K1;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 41133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A00:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    return v0

    .line 41134
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/K1;)Ljava/util/List;
    .locals 0

    .line 41135
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0D:Ljava/util/List;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/K0;)V
    .locals 2

    .line 41136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/K1;->A0D:Ljava/util/List;

    monitor-enter v1

    .line 41137
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41138
    monitor-exit v1

    .line 41139
    return-void

    .line 41140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final A04()V
    .locals 5

    .line 41141
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    if-nez v0, :cond_0

    .line 41142
    return-void

    .line 41143
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A01()I

    move-result v4

    const/16 v3, 0x6e

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(IIILcom/facebook/ads/redexgen/X/Jy;)V

    .line 41144
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/K1;->A03(Lcom/facebook/ads/redexgen/X/K0;)V

    .line 41145
    return-void
.end method

.method public final A05()V
    .locals 5

    .line 41146
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    if-nez v0, :cond_0

    .line 41147
    return-void

    .line 41148
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A01()I

    move-result v4

    const/16 v3, 0x6a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(IIILcom/facebook/ads/redexgen/X/Jy;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/K1;->A03(Lcom/facebook/ads/redexgen/X/K0;)V

    .line 41149
    return-void
.end method

.method public final A06()V
    .locals 5

    .line 41150
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    if-nez v0, :cond_0

    .line 41151
    return-void

    .line 41152
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A01()I

    move-result v4

    const/16 v3, 0x68

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(IIILcom/facebook/ads/redexgen/X/Jy;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/K1;->A03(Lcom/facebook/ads/redexgen/X/K0;)V

    .line 41153
    return-void
.end method

.method public final A07()V
    .locals 5

    .line 41154
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    if-nez v0, :cond_0

    .line 41155
    return-void

    .line 41156
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A01()I

    move-result v4

    const/16 v3, 0x6d

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(IIILcom/facebook/ads/redexgen/X/Jy;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/K1;->A03(Lcom/facebook/ads/redexgen/X/K0;)V

    .line 41157
    return-void
.end method

.method public final A08()V
    .locals 5

    .line 41158
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    if-nez v0, :cond_0

    .line 41159
    return-void

    .line 41160
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A01()I

    move-result v4

    const/16 v3, 0x6c

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(IIILcom/facebook/ads/redexgen/X/Jy;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/K1;->A03(Lcom/facebook/ads/redexgen/X/K0;)V

    .line 41161
    return-void
.end method

.method public final A09()V
    .locals 5

    .line 41162
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    if-nez v0, :cond_0

    .line 41163
    return-void

    .line 41164
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A00:J

    .line 41165
    const/4 v4, 0x0

    const/16 v3, 0x65

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(IIILcom/facebook/ads/redexgen/X/Jy;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/K1;->A03(Lcom/facebook/ads/redexgen/X/K0;)V

    .line 41166
    return-void
.end method

.method public final A0A()V
    .locals 5

    .line 41167
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    if-nez v0, :cond_0

    .line 41168
    return-void

    .line 41169
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A01()I

    move-result v4

    const/16 v3, 0x69

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(IIILcom/facebook/ads/redexgen/X/Jy;)V

    .line 41170
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/K1;->A03(Lcom/facebook/ads/redexgen/X/K0;)V

    .line 41171
    return-void
.end method

.method public final A0B()V
    .locals 5

    .line 41172
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    if-nez v0, :cond_0

    .line 41173
    return-void

    .line 41174
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A01()I

    move-result v4

    const/16 v3, 0x66

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(IIILcom/facebook/ads/redexgen/X/Jy;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/K1;->A03(Lcom/facebook/ads/redexgen/X/K0;)V

    .line 41175
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)V
    .locals 5

    .line 41176
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A0F:Z

    if-nez v0, :cond_0

    .line 41177
    return-void

    .line 41178
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A01()I

    move-result v4

    const/16 v3, 0x67

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(IIILcom/facebook/ads/redexgen/X/Jy;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/K1;->A03(Lcom/facebook/ads/redexgen/X/K0;)V

    .line 41179
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jy;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/ads/redexgen/X/Jy;-><init>(Lcom/facebook/ads/redexgen/X/K1;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8J;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41180
    return-void
.end method
