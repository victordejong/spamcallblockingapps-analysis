.class public final Lcom/facebook/ads/redexgen/X/FY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FX;
    }
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/FL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:J

.field public final A03:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/FX;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HGHzNcawqnVFgJx8ceQNwcxcn1SDkpDb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AD2ta0a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "biSUTEi4nYJndXTTLsT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "38FOXeSW4cnwnxdXp60to"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WtyRCcfaPM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iLolo35"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fvJAwdggv90DLF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FbA7S8K"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FY;->A04:[Ljava/lang/String;

    .line 33321
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 33322
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/FY;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/FL;J)V

    .line 33323
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/FL;J)V
    .locals 0
    .param p3    # Lcom/facebook/ads/redexgen/X/FL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/FX;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/FL;",
            "J)V"
        }
    .end annotation

    .line 33324
    .local p1, "listenerAndHandlers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/facebook/ads/internal/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33325
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33326
    iput p2, p0, Lcom/facebook/ads/redexgen/X/FY;->A00:I

    .line 33327
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FY;->A01:Lcom/facebook/ads/redexgen/X/FL;

    .line 33328
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:J

    .line 33329
    return-void
.end method

.method private A00(J)J
    .locals 7

    .line 33330
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/A3;->A01(J)J

    move-result-wide v5

    .line 33331
    .local p0, "mediaTimeMs":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    :goto_0
    return-wide v3

    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/FY;->A04:[Ljava/lang/String;

    const-string v1, "vQJR5ZN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-long/2addr v3, v5

    goto :goto_0
.end method

.method private A01(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 33332
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 33333
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 33334
    :goto_0
    return-void

    .line 33335
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final A02(ILcom/facebook/ads/redexgen/X/FL;J)Lcom/facebook/ads/redexgen/X/FY;
    .locals 6
    .param p2    # Lcom/facebook/ads/redexgen/X/FL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 33336
    new-instance v0, Lcom/facebook/ads/redexgen/X/FY;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v3, p2

    move-wide v4, p3

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/FY;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/FL;J)V

    return-object v0
.end method

.method public final A03()V
    .locals 4

    .line 33337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A01:Lcom/facebook/ads/redexgen/X/FL;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 33338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FX;

    .line 33339
    .local v0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    .line 33340
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Fb;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FO;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/FO;-><init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/Fb;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 33341
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Fb;
    .end local v0
    goto :goto_1

    .line 33342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 33343
    :cond_1
    return-void
.end method

.method public final A04()V
    .locals 4

    .line 33344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A01:Lcom/facebook/ads/redexgen/X/FL;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 33345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FX;

    .line 33346
    .local v0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    .line 33347
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Fb;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FP;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/FP;-><init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/Fb;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 33348
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Fb;
    .end local v0
    goto :goto_1

    .line 33349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 33350
    :cond_1
    return-void
.end method

.method public final A05()V
    .locals 5

    .line 33351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A01:Lcom/facebook/ads/redexgen/X/FL;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 33352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/FY;->A04:[Ljava/lang/String;

    const-string v1, "JAadAeVCHcunsRCfoQL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FX;

    .line 33353
    .local v0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    .line 33354
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Fb;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FU;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/FU;-><init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/Fb;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 33355
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Fb;
    .end local v0
    goto :goto_1

    .line 33356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 33357
    :cond_2
    return-void
.end method

.method public final A06(ILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 12
    .param p2    # Lcom/facebook/ads/internal/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33358
    new-instance v2, Lcom/facebook/ads/redexgen/X/Fa;

    .line 33359
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/FY;->A00(J)J

    move-result-wide v8

    const/4 v3, 0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, p2

    move v4, p1

    move v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v11}, Lcom/facebook/ads/redexgen/X/Fa;-><init>(IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 33360
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/FY;->A0C(Lcom/facebook/ads/redexgen/X/Fa;)V

    .line 33361
    return-void
.end method

.method public final A07(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fb;)V
    .locals 2

    .line 33362
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 33363
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fb;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 33364
    return-void

    .line 33365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V
    .locals 4

    .line 33366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FX;

    .line 33367
    .local p1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    .line 33368
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Fb;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FS;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/FS;-><init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/Fb;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 33369
    .end local p1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Fb;
    goto :goto_0

    .line 33370
    :cond_0
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V
    .locals 4

    .line 33371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FX;

    .line 33372
    .local p1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    .line 33373
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Fb;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FR;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/FR;-><init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/Fb;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 33374
    .end local p1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Fb;
    goto :goto_0

    .line 33375
    :cond_0
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V
    .locals 4

    .line 33376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FX;

    .line 33377
    .local p1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    .line 33378
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Fb;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FQ;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/FQ;-><init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/Fb;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 33379
    .end local p1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Fb;
    goto :goto_0

    .line 33380
    :cond_0
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;Ljava/io/IOException;Z)V
    .locals 9

    .line 33381
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FX;

    .line 33382
    .local v0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    .line 33383
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Fb;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/FT;

    move-object v3, p0

    move-object v6, p2

    move-object v5, p1

    move v8, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/FT;-><init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/Fb;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;Ljava/io/IOException;Z)V

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/FY;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 33384
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Fb;
    .end local v0
    goto :goto_0

    .line 33385
    :cond_0
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/Fa;)V
    .locals 4

    .line 33386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FX;

    .line 33387
    .local p1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    .line 33388
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Fb;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FW;

    invoke-direct {v0, p0, v2, p1}, Lcom/facebook/ads/redexgen/X/FW;-><init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/Fb;Lcom/facebook/ads/redexgen/X/Fa;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 33389
    .end local p1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Fb;
    goto :goto_0

    .line 33390
    :cond_0
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/Fb;)V
    .locals 3

    .line 33391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/FX;

    .line 33392
    .local p1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/FX;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    if-ne v0, p1, :cond_0

    .line 33393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33394
    :cond_1
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/HV;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33395
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/FZ;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v14, p1

    move-wide/from16 v15, p11

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/FZ;-><init>(Lcom/facebook/ads/redexgen/X/HV;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Fa;

    .line 33396
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FY;->A00(J)J

    move-result-wide v9

    .line 33397
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FY;->A00(J)J

    move-result-wide v11

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move-object/from16 v8, p6

    move/from16 v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Fa;-><init>(IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 33398
    invoke-virtual {v0, v13, v3}, Lcom/facebook/ads/redexgen/X/FY;->A0A(Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V

    .line 33399
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/HV;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33400
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/FZ;

    move-wide/from16 v19, p15

    move-object/from16 v14, p1

    move-wide/from16 v15, p11

    move-wide/from16 v17, p13

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/FZ;-><init>(Lcom/facebook/ads/redexgen/X/HV;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Fa;

    .line 33401
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FY;->A00(J)J

    move-result-wide v9

    .line 33402
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FY;->A00(J)J

    move-result-wide v11

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move-object/from16 v8, p6

    move/from16 v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Fa;-><init>(IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 33403
    invoke-virtual {v0, v13, v3}, Lcom/facebook/ads/redexgen/X/FY;->A08(Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V

    .line 33404
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/HV;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33405
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/FZ;

    move-wide/from16 v19, p15

    move-object/from16 v14, p1

    move-wide/from16 v15, p11

    move-wide/from16 v17, p13

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/FZ;-><init>(Lcom/facebook/ads/redexgen/X/HV;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Fa;

    .line 33406
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FY;->A00(J)J

    move-result-wide v9

    .line 33407
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FY;->A00(J)J

    move-result-wide v11

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move-object/from16 v8, p6

    move/from16 v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Fa;-><init>(IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 33408
    invoke-virtual {v0, v13, v3}, Lcom/facebook/ads/redexgen/X/FY;->A09(Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V

    .line 33409
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/HV;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33410
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/FZ;

    move-wide/from16 v15, p11

    move-wide/from16 v19, p15

    move-object/from16 v14, p1

    move-wide/from16 v17, p13

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/FZ;-><init>(Lcom/facebook/ads/redexgen/X/HV;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Fa;

    .line 33411
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FY;->A00(J)J

    move-result-wide v9

    .line 33412
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FY;->A00(J)J

    move-result-wide v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v5, p3

    move/from16 v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Fa;-><init>(IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 33413
    move/from16 v1, p18

    move-object/from16 v2, p17

    invoke-virtual {v0, v13, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/FY;->A0B(Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;Ljava/io/IOException;Z)V

    .line 33414
    return-void
.end method
