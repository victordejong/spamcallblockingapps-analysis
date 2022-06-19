.class public final enum Lcom/truecaller/ads/CustomTemplate;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ads/CustomTemplate$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ads/CustomTemplate;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0019\u0008\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/ads/CustomTemplate;",
        "",
        "",
        "openUrl",
        "Z",
        "",
        "templateId",
        "Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Z)V",
        "Companion",
        "a",
        "NATIVE_BANNER",
        "NATIVE_BANNER_DUAL_TRACKER",
        "MEGA_NATIVE_BANNER_DUAL_TRACKER",
        "CLICK_TO_PLAY_VIDEO",
        "VIDEO_WITH_FALLBACK_IMAGE",
        "NATIVE_CONTENT_DUAL_TRACKER",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ads/CustomTemplate;

.field public static final enum CLICK_TO_PLAY_VIDEO:Lcom/truecaller/ads/CustomTemplate;

.field public static final Companion:Lcom/truecaller/ads/CustomTemplate$a;

.field public static final enum MEGA_NATIVE_BANNER_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

.field public static final enum NATIVE_BANNER:Lcom/truecaller/ads/CustomTemplate;

.field public static final enum NATIVE_BANNER_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

.field public static final enum NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

.field public static final enum VIDEO_WITH_FALLBACK_IMAGE:Lcom/truecaller/ads/CustomTemplate;


# instance fields
.field public final openUrl:Z

.field public final templateId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/ads/CustomTemplate;

    new-instance v1, Lcom/truecaller/ads/CustomTemplate;

    const-string v2, "NATIVE_BANNER"

    const/4 v3, 0x0

    const-string v4, "11726661"

    const/4 v5, 0x1

    .line 1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/ads/CustomTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/ads/CustomTemplate;->NATIVE_BANNER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/CustomTemplate;

    const-string v2, "NATIVE_BANNER_DUAL_TRACKER"

    const-string v4, "11788491"

    .line 2
    invoke-direct {v1, v2, v5, v4, v5}, Lcom/truecaller/ads/CustomTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/ads/CustomTemplate;->NATIVE_BANNER_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/ads/CustomTemplate;

    const-string v2, "MEGA_NATIVE_BANNER_DUAL_TRACKER"

    const/4 v4, 0x2

    const-string v6, "11976407"

    .line 3
    invoke-direct {v1, v2, v4, v6, v5}, Lcom/truecaller/ads/CustomTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/ads/CustomTemplate;->MEGA_NATIVE_BANNER_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/ads/CustomTemplate;

    const-string v2, "CLICK_TO_PLAY_VIDEO"

    const/4 v4, 0x3

    const-string v6, "11732026"

    .line 4
    invoke-direct {v1, v2, v4, v6, v3}, Lcom/truecaller/ads/CustomTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/ads/CustomTemplate;->CLICK_TO_PLAY_VIDEO:Lcom/truecaller/ads/CustomTemplate;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/ads/CustomTemplate;

    const-string v2, "VIDEO_WITH_FALLBACK_IMAGE"

    const/4 v3, 0x4

    const-string v4, "11777280"

    .line 5
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/ads/CustomTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/ads/CustomTemplate;->VIDEO_WITH_FALLBACK_IMAGE:Lcom/truecaller/ads/CustomTemplate;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/CustomTemplate;

    const-string v2, "NATIVE_CONTENT_DUAL_TRACKER"

    const/4 v3, 0x5

    const-string v4, "11788194"

    .line 6
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/ads/CustomTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/ads/CustomTemplate;->$VALUES:[Lcom/truecaller/ads/CustomTemplate;

    new-instance v0, Lcom/truecaller/ads/CustomTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/ads/CustomTemplate$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/ads/CustomTemplate;->Companion:Lcom/truecaller/ads/CustomTemplate$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/ads/CustomTemplate;->templateId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/truecaller/ads/CustomTemplate;->openUrl:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ads/CustomTemplate;
    .locals 1

    const-class v0, Lcom/truecaller/ads/CustomTemplate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ads/CustomTemplate;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ads/CustomTemplate;
    .locals 1

    sget-object v0, Lcom/truecaller/ads/CustomTemplate;->$VALUES:[Lcom/truecaller/ads/CustomTemplate;

    invoke-virtual {v0}, [Lcom/truecaller/ads/CustomTemplate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ads/CustomTemplate;

    return-object v0
.end method
