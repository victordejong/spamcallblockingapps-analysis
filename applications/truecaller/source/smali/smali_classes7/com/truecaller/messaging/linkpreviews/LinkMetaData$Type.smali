.class public final enum Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/linkpreviews/LinkMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DEFAULT",
        "MEDIA",
        "PLAYABLE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

.field public static final enum DEFAULT:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

.field public static final enum MEDIA:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

.field public static final enum PLAYABLE:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    new-instance v1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->DEFAULT:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    const-string v2, "MEDIA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->MEDIA:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    const-string v2, "PLAYABLE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->PLAYABLE:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->$VALUES:[Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->$VALUES:[Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    return-object v0
.end method
