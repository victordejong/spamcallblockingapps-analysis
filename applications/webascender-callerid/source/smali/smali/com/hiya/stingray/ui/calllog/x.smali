.class public final enum Lcom/hiya/stingray/ui/calllog/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/ui/calllog/x;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/ui/calllog/x;

.field public static final enum CALLLOG:Lcom/hiya/stingray/ui/calllog/x;

.field public static final enum CALLLOG_AND_CONTACTS:Lcom/hiya/stingray/ui/calllog/x;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/calllog/x;

    const-string v1, "CALLLOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/ui/calllog/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/stingray/ui/calllog/x;->CALLLOG:Lcom/hiya/stingray/ui/calllog/x;

    new-instance v1, Lcom/hiya/stingray/ui/calllog/x;

    const-string v3, "CALLLOG_AND_CONTACTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/stingray/ui/calllog/x;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/calllog/x;->CALLLOG_AND_CONTACTS:Lcom/hiya/stingray/ui/calllog/x;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/hiya/stingray/ui/calllog/x;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/hiya/stingray/ui/calllog/x;->$VALUES:[Lcom/hiya/stingray/ui/calllog/x;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/calllog/x;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/ui/calllog/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/ui/calllog/x;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/ui/calllog/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/calllog/x;->$VALUES:[Lcom/hiya/stingray/ui/calllog/x;

    invoke-virtual {v0}, [Lcom/hiya/stingray/ui/calllog/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/calllog/x;

    return-object v0
.end method
