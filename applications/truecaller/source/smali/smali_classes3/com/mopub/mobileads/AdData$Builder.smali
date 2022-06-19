.class public final Lcom/mopub/mobileads/AdData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008B\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008i\u0010jJ\u0017\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\u0017\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u0015\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J!\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0019\u0010\u000eJ\u0017\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u0015\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001b\u0010\u000eJ\u0017\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0005J\u0017\u0010 \u001a\u00020\u00002\u0008\u0010 \u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008 \u0010\u0005J\u0017\u0010!\u001a\u00020\u00002\u0008\u0010!\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008!\u0010\u0005J\u0017\u0010\"\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0005J\u0015\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0016\u00a2\u0006\u0004\u0008#\u0010\u0018J\u001f\u0010\'\u001a\u00020\u00002\u0010\u0010&\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010%\u0018\u00010$\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008*\u0010+J\u0015\u0010-\u001a\u00020\u00002\u0006\u0010,\u001a\u00020)\u00a2\u0006\u0004\u0008-\u0010.R$\u0010\r\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R$\u0010\u0017\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00168\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u0008\u0017\u00106R(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:R(\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008;\u00108\u001a\u0004\u0008<\u0010:R(\u0010\u001f\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008=\u00108\u001a\u0004\u0008>\u0010:R$\u0010\u0012\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008?\u00108\u001a\u0004\u0008@\u0010:R(\u0010\u001e\u001a\u0004\u0018\u00010\u000c2\u0008\u0010/\u001a\u0004\u0018\u00010\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010DR(\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008E\u00108\u001a\u0004\u0008F\u0010:R<\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00132\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00138\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010JR(\u0010!\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008K\u00108\u001a\u0004\u0008L\u0010:R$\u0010\n\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010PR(\u0010\u001a\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008Q\u00108\u001a\u0004\u0008R\u0010:R(\u0010\"\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008S\u00108\u001a\u0004\u0008T\u0010:R(\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010/\u001a\u0004\u0018\u00010\u00068\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010XR4\u0010\'\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$2\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\R$\u0010\u0019\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008]\u00101\u001a\u0004\u0008^\u00103R$\u0010#\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00168\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008_\u00105\u001a\u0004\u0008`\u00106R$\u0010\u001b\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008a\u00101\u001a\u0004\u0008b\u00103R(\u0010 \u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008c\u00108\u001a\u0004\u0008d\u0010:R(\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\u0008\u0010/\u001a\u0004\u0018\u00010\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008e\u0010B\u001a\u0004\u0008f\u0010DR(\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008g\u00108\u001a\u0004\u0008h\u0010:\u00a8\u0006k"
    }
    d2 = {
        "Lcom/mopub/mobileads/AdData$Builder;",
        "",
        "",
        "vastVideoConfigString",
        "vastVideoConfig",
        "(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;",
        "Lcom/mopub/common/CreativeOrientation;",
        "orientation",
        "(Lcom/mopub/common/CreativeOrientation;)Lcom/mopub/mobileads/AdData$Builder;",
        "",
        "broadcastIdentifier",
        "(J)Lcom/mopub/mobileads/AdData$Builder;",
        "",
        "timeoutDelayMillis",
        "(I)Lcom/mopub/mobileads/AdData$Builder;",
        "impressionMinVisibleDips",
        "impressionMinVisibleMs",
        "dspCreativeId",
        "adPayload",
        "",
        "extras",
        "(Ljava/util/Map;)Lcom/mopub/mobileads/AdData$Builder;",
        "",
        "isRewarded",
        "(Z)Lcom/mopub/mobileads/AdData$Builder;",
        "rewardedDurationSeconds",
        "currencyName",
        "currencyAmount",
        "adWidth",
        "(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;",
        "adHeight",
        "adUnit",
        "adType",
        "fullAdType",
        "customerId",
        "allowCustomClose",
        "",
        "Lcom/mopub/common/ViewabilityVendor;",
        "vendors",
        "viewabilityVendors",
        "(Ljava/util/Set;)Lcom/mopub/mobileads/AdData$Builder;",
        "Lcom/mopub/mobileads/AdData;",
        "build",
        "()Lcom/mopub/mobileads/AdData;",
        "adData",
        "fromAdData",
        "(Lcom/mopub/mobileads/AdData;)Lcom/mopub/mobileads/AdData$Builder;",
        "<set-?>",
        "d",
        "I",
        "getTimeoutDelayMillis",
        "()I",
        "j",
        "Z",
        "()Z",
        "a",
        "Ljava/lang/String;",
        "getVastVideoConfigString",
        "()Ljava/lang/String;",
        "f",
        "getImpressionMinVisibleMs",
        "p",
        "getAdUnit",
        "h",
        "getAdPayload",
        "o",
        "Ljava/lang/Integer;",
        "getAdHeight",
        "()Ljava/lang/Integer;",
        "e",
        "getImpressionMinVisibleDips",
        "i",
        "Ljava/util/Map;",
        "getExtras",
        "()Ljava/util/Map;",
        "r",
        "getFullAdType",
        "c",
        "J",
        "getBroadcastIdentifier",
        "()J",
        "l",
        "getCurrencyName",
        "s",
        "getCustomerId",
        "b",
        "Lcom/mopub/common/CreativeOrientation;",
        "getOrientation",
        "()Lcom/mopub/common/CreativeOrientation;",
        "u",
        "Ljava/util/Set;",
        "getViewabilityVendors",
        "()Ljava/util/Set;",
        "k",
        "getRewardedDurationSeconds",
        "t",
        "getAllowCustomClose",
        "m",
        "getCurrencyAmount",
        "q",
        "getAdType",
        "n",
        "getAdWidth",
        "g",
        "getDspCreativeId",
        "<init>",
        "()V",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/mopub/common/CreativeOrientation;

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 2
    iput v0, p0, Lcom/mopub/mobileads/AdData$Builder;->d:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->g:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->h:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->i:Ljava/util/Map;

    const/16 v0, 0x1e

    .line 6
    iput v0, p0, Lcom/mopub/mobileads/AdData$Builder;->k:I

    return-void
.end method


# virtual methods
.method public final adHeight(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->o:Ljava/lang/Integer;

    return-object p0
.end method

.method public final adPayload(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    const-string v0, "adPayload"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final adType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final adUnit(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final adWidth(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method public final allowCustomClose(Z)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdData$Builder;->t:Z

    return-object p0
.end method

.method public final broadcastIdentifier(J)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mopub/mobileads/AdData$Builder;->c:J

    return-object p0
.end method

.method public final build()Lcom/mopub/mobileads/AdData;
    .locals 2

    .line 1
    new-instance v0, Lcom/mopub/mobileads/AdData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/AdData;-><init>(Lcom/mopub/mobileads/AdData$Builder;Ls1/z/c/f;)V

    return-object v0
.end method

.method public final currencyAmount(I)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/mopub/mobileads/AdData$Builder;->m:I

    return-object p0
.end method

.method public final currencyName(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final customerId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final dspCreativeId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final extras(Ljava/util/Map;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/mobileads/AdData$Builder;"
        }
    .end annotation

    const-string v0, "extras"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->i:Ljava/util/Map;

    return-object p0
.end method

.method public final fromAdData(Lcom/mopub/mobileads/AdData;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 2

    const-string v0, "adData"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getVastVideoConfigString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getOrientation()Lcom/mopub/common/CreativeOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->b:Lcom/mopub/common/CreativeOrientation;

    .line 3
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdData$Builder;->c:J

    .line 4
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getTimeoutDelayMillis()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdData$Builder;->d:I

    .line 5
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getImpressionMinVisibleDips()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getImpressionMinVisibleMs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->h:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->i:Ljava/util/Map;

    .line 10
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdData$Builder;->j:Z

    .line 11
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdData$Builder;->k:I

    .line 12
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->l:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getCurrencyAmount()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdData$Builder;->m:I

    .line 14
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAdWidth()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->n:Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAdHeight()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->o:Ljava/lang/Integer;

    .line 16
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAdUnit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->p:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->q:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->r:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->s:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAllowCustomClose()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdData$Builder;->t:Z

    .line 21
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getViewabilityVendors()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->u:Ljava/util/Set;

    return-object p0
.end method

.method public final fullAdType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final getAdHeight()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAdPayload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdUnit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdWidth()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAllowCustomClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdData$Builder;->t:Z

    return v0
.end method

.method public final getBroadcastIdentifier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mopub/mobileads/AdData$Builder;->c:J

    return-wide v0
.end method

.method public final getCurrencyAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/mobileads/AdData$Builder;->m:I

    return v0
.end method

.method public final getCurrencyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getDspCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final getFullAdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinVisibleDips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinVisibleMs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientation()Lcom/mopub/common/CreativeOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->b:Lcom/mopub/common/CreativeOrientation;

    return-object v0
.end method

.method public final getRewardedDurationSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/mobileads/AdData$Builder;->k:I

    return v0
.end method

.method public final getTimeoutDelayMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/mobileads/AdData$Builder;->d:I

    return v0
.end method

.method public final getVastVideoConfigString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewabilityVendors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->u:Ljava/util/Set;

    return-object v0
.end method

.method public final impressionMinVisibleDips(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final impressionMinVisibleMs(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final isRewarded(Z)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdData$Builder;->j:Z

    return-object p0
.end method

.method public final isRewarded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdData$Builder;->j:Z

    return v0
.end method

.method public final orientation(Lcom/mopub/common/CreativeOrientation;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->b:Lcom/mopub/common/CreativeOrientation;

    return-object p0
.end method

.method public final rewardedDurationSeconds(I)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/mopub/mobileads/AdData$Builder;->k:I

    return-object p0
.end method

.method public final timeoutDelayMillis(I)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/mopub/mobileads/AdData$Builder;->d:I

    return-object p0
.end method

.method public final vastVideoConfig(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final viewabilityVendors(Ljava/util/Set;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)",
            "Lcom/mopub/mobileads/AdData$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->u:Ljava/util/Set;

    return-object p0
.end method
