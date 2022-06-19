.class public final enum Lcom/mopub/mobileads/VastResource$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VastResource$Type;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastResource$Type;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "HTML_RESOURCE",
        "STATIC_RESOURCE",
        "IFRAME_RESOURCE",
        "BLURRED_LAST_FRAME",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final enum BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

.field public static final enum HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

.field public static final enum IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

.field public static final enum STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

.field public static final synthetic a:[Lcom/mopub/mobileads/VastResource$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mopub/mobileads/VastResource$Type;

    new-instance v1, Lcom/mopub/mobileads/VastResource$Type;

    const-string v2, "HTML_RESOURCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mopub/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VastResource$Type;

    const-string v2, "STATIC_RESOURCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mopub/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VastResource$Type;

    const-string v2, "IFRAME_RESOURCE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/mopub/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VastResource$Type;

    const-string v2, "BLURRED_LAST_FRAME"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/mopub/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mopub/mobileads/VastResource$Type;->a:[Lcom/mopub/mobileads/VastResource$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastResource$Type;
    .locals 1

    const-class v0, Lcom/mopub/mobileads/VastResource$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VastResource$Type;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VastResource$Type;
    .locals 1

    sget-object v0, Lcom/mopub/mobileads/VastResource$Type;->a:[Lcom/mopub/mobileads/VastResource$Type;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastResource$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastResource$Type;

    return-object v0
.end method
