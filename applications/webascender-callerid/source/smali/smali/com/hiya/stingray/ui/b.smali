.class public final enum Lcom/hiya/stingray/ui/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/ui/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/ui/b;

.field public static final enum FRAUD:Lcom/hiya/stingray/ui/b;

.field public static final enum IDENTIFIED:Lcom/hiya/stingray/ui/b;

.field public static final enum MULTI_CONTACT:Lcom/hiya/stingray/ui/b;

.field public static final enum NAME_AVAILABLE:Lcom/hiya/stingray/ui/b;

.field public static final enum PRIVATE:Lcom/hiya/stingray/ui/b;

.field public static final enum SAVED_CONTACT:Lcom/hiya/stingray/ui/b;

.field public static final enum SCREENED:Lcom/hiya/stingray/ui/b;

.field public static final enum SPAM:Lcom/hiya/stingray/ui/b;

.field public static final enum UNIDENTIFIED:Lcom/hiya/stingray/ui/b;

.field public static final enum VOICEMAIL:Lcom/hiya/stingray/ui/b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/b;

    const-string v1, "PRIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/ui/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/stingray/ui/b;->PRIVATE:Lcom/hiya/stingray/ui/b;

    new-instance v1, Lcom/hiya/stingray/ui/b;

    const-string v3, "FRAUD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/stingray/ui/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/b;->FRAUD:Lcom/hiya/stingray/ui/b;

    new-instance v3, Lcom/hiya/stingray/ui/b;

    const-string v5, "SPAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hiya/stingray/ui/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hiya/stingray/ui/b;->SPAM:Lcom/hiya/stingray/ui/b;

    new-instance v5, Lcom/hiya/stingray/ui/b;

    const-string v7, "SAVED_CONTACT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hiya/stingray/ui/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hiya/stingray/ui/b;->SAVED_CONTACT:Lcom/hiya/stingray/ui/b;

    new-instance v7, Lcom/hiya/stingray/ui/b;

    const-string v9, "SCREENED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/hiya/stingray/ui/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hiya/stingray/ui/b;->SCREENED:Lcom/hiya/stingray/ui/b;

    new-instance v9, Lcom/hiya/stingray/ui/b;

    const-string v11, "IDENTIFIED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/hiya/stingray/ui/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/hiya/stingray/ui/b;->IDENTIFIED:Lcom/hiya/stingray/ui/b;

    new-instance v11, Lcom/hiya/stingray/ui/b;

    const-string v13, "UNIDENTIFIED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/hiya/stingray/ui/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/hiya/stingray/ui/b;->UNIDENTIFIED:Lcom/hiya/stingray/ui/b;

    new-instance v13, Lcom/hiya/stingray/ui/b;

    const-string v15, "MULTI_CONTACT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/hiya/stingray/ui/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/hiya/stingray/ui/b;->MULTI_CONTACT:Lcom/hiya/stingray/ui/b;

    new-instance v15, Lcom/hiya/stingray/ui/b;

    const-string v14, "VOICEMAIL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/hiya/stingray/ui/b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/hiya/stingray/ui/b;->VOICEMAIL:Lcom/hiya/stingray/ui/b;

    .line 2
    new-instance v14, Lcom/hiya/stingray/ui/b;

    const-string v12, "NAME_AVAILABLE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/hiya/stingray/ui/b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/hiya/stingray/ui/b;->NAME_AVAILABLE:Lcom/hiya/stingray/ui/b;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/hiya/stingray/ui/b;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 3
    sput-object v12, Lcom/hiya/stingray/ui/b;->$VALUES:[Lcom/hiya/stingray/ui/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/b;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/ui/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/ui/b;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/ui/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/b;->$VALUES:[Lcom/hiya/stingray/ui/b;

    invoke-virtual {v0}, [Lcom/hiya/stingray/ui/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/b;

    return-object v0
.end method
