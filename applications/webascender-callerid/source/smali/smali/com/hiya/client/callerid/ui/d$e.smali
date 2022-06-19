.class public final enum Lcom/hiya/client/callerid/ui/d$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/client/callerid/ui/d$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/client/callerid/ui/d$e;

.field public static final enum ACTION_SHEET:Lcom/hiya/client/callerid/ui/d$e;

.field public static final enum BUTTON:Lcom/hiya/client/callerid/ui/d$e;

.field public static final enum DISABLED:Lcom/hiya/client/callerid/ui/d$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hiya/client/callerid/ui/d$e;

    new-instance v1, Lcom/hiya/client/callerid/ui/d$e;

    const-string v2, "DISABLED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/d$e;->DISABLED:Lcom/hiya/client/callerid/ui/d$e;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/client/callerid/ui/d$e;

    const-string v2, "BUTTON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/d$e;->BUTTON:Lcom/hiya/client/callerid/ui/d$e;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/client/callerid/ui/d$e;

    const-string v2, "ACTION_SHEET"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/d$e;->ACTION_SHEET:Lcom/hiya/client/callerid/ui/d$e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/client/callerid/ui/d$e;->$VALUES:[Lcom/hiya/client/callerid/ui/d$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/d$e;
    .locals 1

    const-class v0, Lcom/hiya/client/callerid/ui/d$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/client/callerid/ui/d$e;

    return-object p0
.end method

.method public static values()[Lcom/hiya/client/callerid/ui/d$e;
    .locals 1

    sget-object v0, Lcom/hiya/client/callerid/ui/d$e;->$VALUES:[Lcom/hiya/client/callerid/ui/d$e;

    invoke-virtual {v0}, [Lcom/hiya/client/callerid/ui/d$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/client/callerid/ui/d$e;

    return-object v0
.end method
