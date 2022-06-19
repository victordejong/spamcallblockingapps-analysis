.class public final enum Lcom/hiya/stingray/notification/z$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/notification/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/notification/z$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/notification/z$b;

.field public static final enum ADD_CONTACT:Lcom/hiya/stingray/notification/z$b;

.field public static final enum BLOCK:Lcom/hiya/stingray/notification/z$b;

.field public static final enum CALL:Lcom/hiya/stingray/notification/z$b;

.field public static final enum REPORT:Lcom/hiya/stingray/notification/z$b;

.field public static final enum TEXT:Lcom/hiya/stingray/notification/z$b;

.field public static final enum UPGRADE:Lcom/hiya/stingray/notification/z$b;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/hiya/stingray/notification/z$b;

    const-string v1, "CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/notification/z$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/stingray/notification/z$b;->CALL:Lcom/hiya/stingray/notification/z$b;

    new-instance v1, Lcom/hiya/stingray/notification/z$b;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/stingray/notification/z$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/notification/z$b;->TEXT:Lcom/hiya/stingray/notification/z$b;

    new-instance v3, Lcom/hiya/stingray/notification/z$b;

    const-string v5, "ADD_CONTACT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hiya/stingray/notification/z$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hiya/stingray/notification/z$b;->ADD_CONTACT:Lcom/hiya/stingray/notification/z$b;

    new-instance v5, Lcom/hiya/stingray/notification/z$b;

    const-string v7, "UPGRADE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hiya/stingray/notification/z$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hiya/stingray/notification/z$b;->UPGRADE:Lcom/hiya/stingray/notification/z$b;

    new-instance v7, Lcom/hiya/stingray/notification/z$b;

    const-string v9, "REPORT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/hiya/stingray/notification/z$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hiya/stingray/notification/z$b;->REPORT:Lcom/hiya/stingray/notification/z$b;

    new-instance v9, Lcom/hiya/stingray/notification/z$b;

    const-string v11, "BLOCK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/hiya/stingray/notification/z$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/hiya/stingray/notification/z$b;->BLOCK:Lcom/hiya/stingray/notification/z$b;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/hiya/stingray/notification/z$b;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcom/hiya/stingray/notification/z$b;->$VALUES:[Lcom/hiya/stingray/notification/z$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/notification/z$b;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/notification/z$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/notification/z$b;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/notification/z$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/notification/z$b;->$VALUES:[Lcom/hiya/stingray/notification/z$b;

    invoke-virtual {v0}, [Lcom/hiya/stingray/notification/z$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/notification/z$b;

    return-object v0
.end method
