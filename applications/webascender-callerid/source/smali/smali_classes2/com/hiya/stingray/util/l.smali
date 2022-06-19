.class public final enum Lcom/hiya/stingray/util/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/util/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/util/l;

.field public static final enum BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/l;

.field public static final enum FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/l;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/l;

    const-string v1, "FULL_NUMBER_TYPE"

    const/4 v2, 0x0

    const-string v3, "RawPhoneNumberRuleInput"

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/stingray/util/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hiya/stingray/util/l;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/l;

    .line 2
    new-instance v1, Lcom/hiya/stingray/util/l;

    const-string v3, "BEGINS_WITH_TYPE"

    const/4 v4, 0x1

    const-string v5, "BeginsWithPhoneNumberRuleInput"

    invoke-direct {v1, v3, v4, v5}, Lcom/hiya/stingray/util/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/util/l;->BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/l;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/hiya/stingray/util/l;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/hiya/stingray/util/l;->$VALUES:[Lcom/hiya/stingray/util/l;

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

    .line 2
    iput-object p3, p0, Lcom/hiya/stingray/util/l;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/util/l;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/util/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/util/l;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/util/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/util/l;->$VALUES:[Lcom/hiya/stingray/util/l;

    invoke-virtual {v0}, [Lcom/hiya/stingray/util/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/util/l;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/l;->type:Ljava/lang/String;

    return-object v0
.end method
