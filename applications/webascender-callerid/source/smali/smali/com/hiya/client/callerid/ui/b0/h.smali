.class public final enum Lcom/hiya/client/callerid/ui/b0/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/client/callerid/ui/b0/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/client/callerid/ui/b0/h;

.field public static final enum HORIZONTAL:Lcom/hiya/client/callerid/ui/b0/h;

.field public static final enum NONE:Lcom/hiya/client/callerid/ui/b0/h;

.field public static final enum VERTICAL:Lcom/hiya/client/callerid/ui/b0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hiya/client/callerid/ui/b0/h;

    new-instance v1, Lcom/hiya/client/callerid/ui/b0/h;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/b0/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/b0/h;->NONE:Lcom/hiya/client/callerid/ui/b0/h;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/client/callerid/ui/b0/h;

    const-string v2, "HORIZONTAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/b0/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/b0/h;->HORIZONTAL:Lcom/hiya/client/callerid/ui/b0/h;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/client/callerid/ui/b0/h;

    const-string v2, "VERTICAL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/b0/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/b0/h;->VERTICAL:Lcom/hiya/client/callerid/ui/b0/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/client/callerid/ui/b0/h;->$VALUES:[Lcom/hiya/client/callerid/ui/b0/h;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/h;
    .locals 1

    const-class v0, Lcom/hiya/client/callerid/ui/b0/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/client/callerid/ui/b0/h;

    return-object p0
.end method

.method public static values()[Lcom/hiya/client/callerid/ui/b0/h;
    .locals 1

    sget-object v0, Lcom/hiya/client/callerid/ui/b0/h;->$VALUES:[Lcom/hiya/client/callerid/ui/b0/h;

    invoke-virtual {v0}, [Lcom/hiya/client/callerid/ui/b0/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/client/callerid/ui/b0/h;

    return-object v0
.end method
