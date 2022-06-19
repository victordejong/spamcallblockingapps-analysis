.class public final enum Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/FaqOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

.field public static final enum ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

.field public static final enum CATEGORY:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;


# instance fields
.field private final type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    const-string v1, "ARTICLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    new-instance v1, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    const-string v3, "CATEGORY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->CATEGORY:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->$VALUES:[Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->$VALUES:[Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    return-object v0
.end method
