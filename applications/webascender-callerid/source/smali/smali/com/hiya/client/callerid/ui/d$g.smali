.class public final enum Lcom/hiya/client/callerid/ui/d$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/client/callerid/ui/d$g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/client/callerid/ui/d$g;

.field public static final enum ADD_CONTACT:Lcom/hiya/client/callerid/ui/d$g;

.field public static final enum BLOCK:Lcom/hiya/client/callerid/ui/d$g;

.field public static final enum MESSAGE:Lcom/hiya/client/callerid/ui/d$g;

.field public static final enum REDIAL:Lcom/hiya/client/callerid/ui/d$g;

.field public static final enum REPORT:Lcom/hiya/client/callerid/ui/d$g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hiya/client/callerid/ui/d$g;

    new-instance v1, Lcom/hiya/client/callerid/ui/d$g;

    const-string v2, "REDIAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/d$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/d$g;->REDIAL:Lcom/hiya/client/callerid/ui/d$g;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/client/callerid/ui/d$g;

    const-string v2, "MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/d$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/d$g;->MESSAGE:Lcom/hiya/client/callerid/ui/d$g;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/client/callerid/ui/d$g;

    const-string v2, "ADD_CONTACT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/d$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/d$g;->ADD_CONTACT:Lcom/hiya/client/callerid/ui/d$g;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/client/callerid/ui/d$g;

    const-string v2, "REPORT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/d$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/d$g;->REPORT:Lcom/hiya/client/callerid/ui/d$g;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/client/callerid/ui/d$g;

    const-string v2, "BLOCK"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/callerid/ui/d$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/callerid/ui/d$g;->BLOCK:Lcom/hiya/client/callerid/ui/d$g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/client/callerid/ui/d$g;->$VALUES:[Lcom/hiya/client/callerid/ui/d$g;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/d$g;
    .locals 1

    const-class v0, Lcom/hiya/client/callerid/ui/d$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/client/callerid/ui/d$g;

    return-object p0
.end method

.method public static values()[Lcom/hiya/client/callerid/ui/d$g;
    .locals 1

    sget-object v0, Lcom/hiya/client/callerid/ui/d$g;->$VALUES:[Lcom/hiya/client/callerid/ui/d$g;

    invoke-virtual {v0}, [Lcom/hiya/client/callerid/ui/d$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/client/callerid/ui/d$g;

    return-object v0
.end method
