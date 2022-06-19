.class public final enum Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCallerIdNotShownReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R$\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "Le/m/a/c/b0;",
        "ex",
        "Le/m/a/c/b0;",
        "getEx",
        "()Le/m/a/c/b0;",
        "setEx",
        "(Le/m/a/c/b0;)V",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Le/m/a/c/b0;)V",
        "CACHE",
        "MEDIA_PLAYER",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

.field public static final enum CACHE:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

.field public static final enum MEDIA_PLAYER:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;


# instance fields
.field private ex:Le/m/a/c/b0;

.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    new-instance v8, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    const-string v2, "CACHE"

    const/4 v3, 0x0

    const-string v4, "Cache"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v8

    .line 1
    invoke-direct/range {v1 .. v7}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;-><init>(Ljava/lang/String;ILjava/lang/String;Le/m/a/c/b0;ILs1/z/c/f;)V

    sput-object v8, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->CACHE:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    const-string v10, "MEDIA_PLAYER"

    const/4 v11, 0x1

    const-string v12, "MediaPlayer"

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object v9, v1

    .line 2
    invoke-direct/range {v9 .. v15}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;-><init>(Ljava/lang/String;ILjava/lang/String;Le/m/a/c/b0;ILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->MEDIA_PLAYER:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->$VALUES:[Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Le/m/a/c/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/m/a/c/b0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->value:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->ex:Le/m/a/c/b0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Le/m/a/c/b0;ILs1/z/c/f;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;-><init>(Ljava/lang/String;ILjava/lang/String;Le/m/a/c/b0;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;
    .locals 1

    const-class v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;
    .locals 1

    sget-object v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->$VALUES:[Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    invoke-virtual {v0}, [Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    return-object v0
.end method


# virtual methods
.method public final getEx()Le/m/a/c/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->ex:Le/m/a/c/b0;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setEx(Le/m/a/c/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->ex:Le/m/a/c/b0;

    return-void
.end method
