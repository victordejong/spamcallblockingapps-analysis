.class public final enum Lcom/hiya/stingray/notification/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/notification/p;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/notification/p;

.field public static final enum BLOCKED_CALL:Lcom/hiya/stingray/notification/p;

.field public static final enum FIRST_TIME_IDENTIFIED_CALL:Lcom/hiya/stingray/notification/p;

.field public static final enum POST_CALL:Lcom/hiya/stingray/notification/p;

.field public static final enum POST_CALL_MISSED:Lcom/hiya/stingray/notification/p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hiya/stingray/notification/p;

    new-instance v1, Lcom/hiya/stingray/notification/p;

    const-string v2, "BLOCKED_CALL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/notification/p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/notification/p;->BLOCKED_CALL:Lcom/hiya/stingray/notification/p;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/notification/p;

    const-string v2, "FIRST_TIME_IDENTIFIED_CALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/notification/p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/notification/p;->FIRST_TIME_IDENTIFIED_CALL:Lcom/hiya/stingray/notification/p;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/notification/p;

    const-string v2, "POST_CALL_MISSED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/notification/p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/notification/p;->POST_CALL_MISSED:Lcom/hiya/stingray/notification/p;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/notification/p;

    const-string v2, "POST_CALL"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/notification/p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/notification/p;->POST_CALL:Lcom/hiya/stingray/notification/p;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/notification/p;->$VALUES:[Lcom/hiya/stingray/notification/p;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/notification/p;
    .locals 1

    const-class v0, Lcom/hiya/stingray/notification/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/notification/p;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/notification/p;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/notification/p;->$VALUES:[Lcom/hiya/stingray/notification/p;

    invoke-virtual {v0}, [Lcom/hiya/stingray/notification/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/notification/p;

    return-object v0
.end method
