.class public final enum Lcom/hiya/client/callerid/ui/b0/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/client/callerid/ui/b0/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/client/callerid/ui/b0/d;

.field public static final enum FRAUD:Lcom/hiya/client/callerid/ui/b0/d;

.field public static final enum IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

.field public static final enum MULTI_CONTACT:Lcom/hiya/client/callerid/ui/b0/d;

.field public static final enum NOT_IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

.field public static final enum PREMIUM:Lcom/hiya/client/callerid/ui/b0/d;

.field public static final enum PRIVATE:Lcom/hiya/client/callerid/ui/b0/d;

.field public static final enum SAVED_CONTACT:Lcom/hiya/client/callerid/ui/b0/d;

.field public static final enum SPAM:Lcom/hiya/client/callerid/ui/b0/d;

.field public static final enum VOICEMAIL:Lcom/hiya/client/callerid/ui/b0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/b0/d;

    const-string v1, "PRIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/client/callerid/ui/b0/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/client/callerid/ui/b0/d;->PRIVATE:Lcom/hiya/client/callerid/ui/b0/d;

    new-instance v1, Lcom/hiya/client/callerid/ui/b0/d;

    const-string v3, "FRAUD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/client/callerid/ui/b0/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/b0/d;->FRAUD:Lcom/hiya/client/callerid/ui/b0/d;

    new-instance v3, Lcom/hiya/client/callerid/ui/b0/d;

    const-string v5, "SPAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hiya/client/callerid/ui/b0/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hiya/client/callerid/ui/b0/d;->SPAM:Lcom/hiya/client/callerid/ui/b0/d;

    new-instance v5, Lcom/hiya/client/callerid/ui/b0/d;

    const-string v7, "SAVED_CONTACT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hiya/client/callerid/ui/b0/d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hiya/client/callerid/ui/b0/d;->SAVED_CONTACT:Lcom/hiya/client/callerid/ui/b0/d;

    new-instance v7, Lcom/hiya/client/callerid/ui/b0/d;

    const-string v9, "IDENTIFIED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/hiya/client/callerid/ui/b0/d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hiya/client/callerid/ui/b0/d;->IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

    new-instance v9, Lcom/hiya/client/callerid/ui/b0/d;

    const-string v11, "PREMIUM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/hiya/client/callerid/ui/b0/d;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/hiya/client/callerid/ui/b0/d;->PREMIUM:Lcom/hiya/client/callerid/ui/b0/d;

    new-instance v11, Lcom/hiya/client/callerid/ui/b0/d;

    const-string v13, "NOT_IDENTIFIED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/hiya/client/callerid/ui/b0/d;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/hiya/client/callerid/ui/b0/d;->NOT_IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

    new-instance v13, Lcom/hiya/client/callerid/ui/b0/d;

    const-string v15, "MULTI_CONTACT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/hiya/client/callerid/ui/b0/d;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/hiya/client/callerid/ui/b0/d;->MULTI_CONTACT:Lcom/hiya/client/callerid/ui/b0/d;

    new-instance v15, Lcom/hiya/client/callerid/ui/b0/d;

    const-string v14, "VOICEMAIL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/hiya/client/callerid/ui/b0/d;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/hiya/client/callerid/ui/b0/d;->VOICEMAIL:Lcom/hiya/client/callerid/ui/b0/d;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/hiya/client/callerid/ui/b0/d;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 2
    sput-object v14, Lcom/hiya/client/callerid/ui/b0/d;->$VALUES:[Lcom/hiya/client/callerid/ui/b0/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/d;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/client/callerid/ui/b0/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/client/callerid/ui/b0/d;

    return-object p0
.end method

.method public static values()[Lcom/hiya/client/callerid/ui/b0/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->$VALUES:[Lcom/hiya/client/callerid/ui/b0/d;

    invoke-virtual {v0}, [Lcom/hiya/client/callerid/ui/b0/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/client/callerid/ui/b0/d;

    return-object v0
.end method
