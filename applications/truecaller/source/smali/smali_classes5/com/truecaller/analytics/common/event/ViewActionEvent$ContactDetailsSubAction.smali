.class public final enum Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/analytics/common/event/ViewActionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContactDetailsSubAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "BUTTON",
        "HEADER",
        "EDIT",
        "ADD",
        "CONTACT",
        "NUMBER",
        "NAME",
        "EMAIL",
        "SEARCH",
        "LINK",
        "common-analytics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

.field public static final enum ADD:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

.field public static final enum BUTTON:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

.field public static final enum CONTACT:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

.field public static final enum EDIT:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

.field public static final enum EMAIL:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

.field public static final enum HEADER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

.field public static final enum LINK:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

.field public static final enum NAME:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

.field public static final enum NUMBER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

.field public static final enum SEARCH:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "BUTTON"

    const/4 v3, 0x0

    const-string v4, "button"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->BUTTON:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "HEADER"

    const/4 v3, 0x1

    const-string v4, "header"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->HEADER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "EDIT"

    const/4 v3, 0x2

    const-string v4, "edit"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->EDIT:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "ADD"

    const/4 v3, 0x3

    const-string v4, "add"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->ADD:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "CONTACT"

    const/4 v3, 0x4

    const-string v4, "contact"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->CONTACT:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "NUMBER"

    const/4 v3, 0x5

    const-string v4, "number"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->NUMBER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "NAME"

    const/4 v3, 0x6

    const-string v4, "name"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->NAME:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "EMAIL"

    const/4 v3, 0x7

    const-string v4, "email"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->EMAIL:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "SEARCH"

    const/16 v3, 0x8

    const-string v4, "search"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->SEARCH:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    const-string v2, "LINK"

    const/16 v3, 0x9

    const-string v4, "link"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->LINK:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->$VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;
    .locals 1

    const-class v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;
    .locals 1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->$VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    invoke-virtual {v0}, [Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->value:Ljava/lang/String;

    return-object v0
.end method
