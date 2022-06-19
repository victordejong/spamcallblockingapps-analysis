.class public final enum Lcom/hiya/stingray/ui/call_screener/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/ui/call_screener/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/ui/call_screener/e;

.field public static final enum ALLOW_PROMPT:Lcom/hiya/stingray/ui/call_screener/e;

.field public static final enum CONFIRMATION:Lcom/hiya/stingray/ui/call_screener/e;

.field public static final enum SCREENED_CALL:Lcom/hiya/stingray/ui/call_screener/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/call_screener/e;

    const-string v1, "SCREENED_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/ui/call_screener/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/stingray/ui/call_screener/e;->SCREENED_CALL:Lcom/hiya/stingray/ui/call_screener/e;

    new-instance v1, Lcom/hiya/stingray/ui/call_screener/e;

    const-string v3, "ALLOW_PROMPT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/stingray/ui/call_screener/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/call_screener/e;->ALLOW_PROMPT:Lcom/hiya/stingray/ui/call_screener/e;

    new-instance v3, Lcom/hiya/stingray/ui/call_screener/e;

    const-string v5, "CONFIRMATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hiya/stingray/ui/call_screener/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hiya/stingray/ui/call_screener/e;->CONFIRMATION:Lcom/hiya/stingray/ui/call_screener/e;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/hiya/stingray/ui/call_screener/e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/hiya/stingray/ui/call_screener/e;->$VALUES:[Lcom/hiya/stingray/ui/call_screener/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/call_screener/e;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/ui/call_screener/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/ui/call_screener/e;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/ui/call_screener/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/call_screener/e;->$VALUES:[Lcom/hiya/stingray/ui/call_screener/e;

    invoke-virtual {v0}, [Lcom/hiya/stingray/ui/call_screener/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/call_screener/e;

    return-object v0
.end method
