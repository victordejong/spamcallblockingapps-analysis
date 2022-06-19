.class public final enum Lcom/hiya/client/callerid/ui/incallui/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/incallui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/client/callerid/ui/incallui/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/client/callerid/ui/incallui/c$b;

.field public static final enum FULL_SCREEN:Lcom/hiya/client/callerid/ui/incallui/c$b;

.field public static final enum HEADS_UP:Lcom/hiya/client/callerid/ui/incallui/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hiya/client/callerid/ui/incallui/c$b;

    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/c$b;

    const-string v2, "FULL_SCREEN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/incallui/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/incallui/c$b;->FULL_SCREEN:Lcom/hiya/client/callerid/ui/incallui/c$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/c$b;

    const-string v2, "HEADS_UP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/incallui/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/incallui/c$b;->HEADS_UP:Lcom/hiya/client/callerid/ui/incallui/c$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/client/callerid/ui/incallui/c$b;->$VALUES:[Lcom/hiya/client/callerid/ui/incallui/c$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/incallui/c$b;
    .locals 1

    const-class v0, Lcom/hiya/client/callerid/ui/incallui/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/client/callerid/ui/incallui/c$b;

    return-object p0
.end method

.method public static values()[Lcom/hiya/client/callerid/ui/incallui/c$b;
    .locals 1

    sget-object v0, Lcom/hiya/client/callerid/ui/incallui/c$b;->$VALUES:[Lcom/hiya/client/callerid/ui/incallui/c$b;

    invoke-virtual {v0}, [Lcom/hiya/client/callerid/ui/incallui/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/client/callerid/ui/incallui/c$b;

    return-object v0
.end method
