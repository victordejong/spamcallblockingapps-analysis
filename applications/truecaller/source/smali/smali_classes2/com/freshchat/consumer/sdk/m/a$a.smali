.class public final enum Lcom/freshchat/consumer/sdk/m/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/m/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum oN:Lcom/freshchat/consumer/sdk/m/a$a;

.field public static final enum oO:Lcom/freshchat/consumer/sdk/m/a$a;

.field public static final enum oP:Lcom/freshchat/consumer/sdk/m/a$a;

.field public static final enum oQ:Lcom/freshchat/consumer/sdk/m/a$a;

.field private static final synthetic oS:[Lcom/freshchat/consumer/sdk/m/a$a;


# instance fields
.field private final oR:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/freshchat/consumer/sdk/m/a$a;

    const-class v1, Lcom/freshchat/consumer/sdk/m/j;

    const-string v2, "CALENDAR_EMAIL_ENTRY_FRAGMENT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/freshchat/consumer/sdk/m/a$a;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/m/a$a;->oN:Lcom/freshchat/consumer/sdk/m/a$a;

    new-instance v1, Lcom/freshchat/consumer/sdk/m/a$a;

    const-class v2, Lcom/freshchat/consumer/sdk/m/n;

    const-string v4, "CALENDAR_LIMITED_TIMESLOTS_VIEW_FRAGMENT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/freshchat/consumer/sdk/m/a$a;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/m/a$a;->oO:Lcom/freshchat/consumer/sdk/m/a$a;

    new-instance v2, Lcom/freshchat/consumer/sdk/m/a$a;

    const-class v4, Lcom/freshchat/consumer/sdk/m/d;

    const-string v6, "CALENDAR_ALL_TIMESLOTS_VIEW_FRAGMENT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/freshchat/consumer/sdk/m/a$a;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/m/a$a;->oP:Lcom/freshchat/consumer/sdk/m/a$a;

    new-instance v4, Lcom/freshchat/consumer/sdk/m/a$a;

    const-class v6, Lcom/freshchat/consumer/sdk/m/t;

    const-string v8, "CALENDAR_TIMESLOT_CONFIRMATION_FRAGMENT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/freshchat/consumer/sdk/m/a$a;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/m/a$a;->oQ:Lcom/freshchat/consumer/sdk/m/a$a;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/freshchat/consumer/sdk/m/a$a;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/freshchat/consumer/sdk/m/a$a;->oS:[Lcom/freshchat/consumer/sdk/m/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/m/a$a;->oR:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/m/a$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/m/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/m/a$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/m/a$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/m/a$a;->oS:[Lcom/freshchat/consumer/sdk/m/a$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/m/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/m/a$a;

    return-object v0
.end method


# virtual methods
.method public hE()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/a$a;->oR:Ljava/lang/Class;

    return-object v0
.end method
