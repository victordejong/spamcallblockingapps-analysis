.class public final enum Lcom/truecaller/messaging/mediamanager/SortOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/mediamanager/SortOption;",
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
        "Lcom/truecaller/messaging/mediamanager/SortOption;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DATE_DESC",
        "DATE_ASC",
        "SIZE_DESC",
        "SIZE_ASC",
        "messaging-storage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/mediamanager/SortOption;

.field public static final enum DATE_ASC:Lcom/truecaller/messaging/mediamanager/SortOption;

.field public static final enum DATE_DESC:Lcom/truecaller/messaging/mediamanager/SortOption;

.field public static final enum SIZE_ASC:Lcom/truecaller/messaging/mediamanager/SortOption;

.field public static final enum SIZE_DESC:Lcom/truecaller/messaging/mediamanager/SortOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/messaging/mediamanager/SortOption;

    new-instance v1, Lcom/truecaller/messaging/mediamanager/SortOption;

    const-string v2, "DATE_DESC"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/mediamanager/SortOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/mediamanager/SortOption;->DATE_DESC:Lcom/truecaller/messaging/mediamanager/SortOption;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/mediamanager/SortOption;

    const-string v2, "DATE_ASC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/mediamanager/SortOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/mediamanager/SortOption;->DATE_ASC:Lcom/truecaller/messaging/mediamanager/SortOption;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/mediamanager/SortOption;

    const-string v2, "SIZE_DESC"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/mediamanager/SortOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/mediamanager/SortOption;->SIZE_DESC:Lcom/truecaller/messaging/mediamanager/SortOption;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/mediamanager/SortOption;

    const-string v2, "SIZE_ASC"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/mediamanager/SortOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/mediamanager/SortOption;->SIZE_ASC:Lcom/truecaller/messaging/mediamanager/SortOption;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/messaging/mediamanager/SortOption;->$VALUES:[Lcom/truecaller/messaging/mediamanager/SortOption;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/mediamanager/SortOption;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/mediamanager/SortOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/mediamanager/SortOption;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/mediamanager/SortOption;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/mediamanager/SortOption;->$VALUES:[Lcom/truecaller/messaging/mediamanager/SortOption;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/mediamanager/SortOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/mediamanager/SortOption;

    return-object v0
.end method
