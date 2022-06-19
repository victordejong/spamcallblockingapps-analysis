.class public final enum Lcom/hiya/client/callerid/ui/b0/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/client/callerid/ui/b0/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/client/callerid/ui/b0/k;

.field public static final enum HOME:Lcom/hiya/client/callerid/ui/b0/k;

.field public static final enum MOBILE:Lcom/hiya/client/callerid/ui/b0/k;

.field public static final enum PHONE:Lcom/hiya/client/callerid/ui/b0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/b0/k;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/client/callerid/ui/b0/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/client/callerid/ui/b0/k;->MOBILE:Lcom/hiya/client/callerid/ui/b0/k;

    new-instance v1, Lcom/hiya/client/callerid/ui/b0/k;

    const-string v3, "HOME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/client/callerid/ui/b0/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/b0/k;->HOME:Lcom/hiya/client/callerid/ui/b0/k;

    new-instance v3, Lcom/hiya/client/callerid/ui/b0/k;

    const-string v5, "PHONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hiya/client/callerid/ui/b0/k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hiya/client/callerid/ui/b0/k;->PHONE:Lcom/hiya/client/callerid/ui/b0/k;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/hiya/client/callerid/ui/b0/k;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/hiya/client/callerid/ui/b0/k;->$VALUES:[Lcom/hiya/client/callerid/ui/b0/k;

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

.method public static mapPhoneType(I)Lcom/hiya/client/callerid/ui/b0/k;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/hiya/client/callerid/ui/b0/k;->HOME:Lcom/hiya/client/callerid/ui/b0/k;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lcom/hiya/client/callerid/ui/b0/k;->MOBILE:Lcom/hiya/client/callerid/ui/b0/k;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/hiya/client/callerid/ui/b0/k;->PHONE:Lcom/hiya/client/callerid/ui/b0/k;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/k;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/client/callerid/ui/b0/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/client/callerid/ui/b0/k;

    return-object p0
.end method

.method public static values()[Lcom/hiya/client/callerid/ui/b0/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/k;->$VALUES:[Lcom/hiya/client/callerid/ui/b0/k;

    invoke-virtual {v0}, [Lcom/hiya/client/callerid/ui/b0/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/client/callerid/ui/b0/k;

    return-object v0
.end method
