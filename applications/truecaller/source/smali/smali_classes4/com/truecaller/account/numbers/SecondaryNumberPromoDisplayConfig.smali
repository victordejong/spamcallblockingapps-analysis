.class public final Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0013B%\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0008\u0010\nR\u0019\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;",
        "",
        "",
        "maxDismissCount",
        "I",
        "getMaxDismissCount",
        "()I",
        "",
        "isEnabled",
        "Z",
        "()Z",
        "",
        "intervalDays",
        "J",
        "getIntervalDays",
        "()J",
        "<init>",
        "(ZJI)V",
        "Companion",
        "a",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig$a;

.field private static final DEFAULT_INTERVAL_DAYS:J = 0x3L

.field private static final DEFAULT_MAX_DISMISS_COUNT:I = 0x3


# instance fields
.field private final intervalDays:J

.field private final isEnabled:Z

.field private final maxDismissCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;->Companion:Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;-><init>(ZJIILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(ZJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;->isEnabled:Z

    iput-wide p2, p0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;->intervalDays:J

    iput p4, p0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;->maxDismissCount:I

    return-void
.end method

.method public synthetic constructor <init>(ZJIILs1/z/c/f;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide/16 p2, 0x3

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x3

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;-><init>(ZJI)V

    return-void
.end method


# virtual methods
.method public final getIntervalDays()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;->intervalDays:J

    return-wide v0
.end method

.method public final getMaxDismissCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;->maxDismissCount:I

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;->isEnabled:Z

    return v0
.end method
