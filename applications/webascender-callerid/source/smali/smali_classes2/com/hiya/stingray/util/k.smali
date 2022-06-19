.class public final enum Lcom/hiya/stingray/util/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/util/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/util/k;

.field public static final enum BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/k;

.field public static final enum FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/k;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/k;

    const-string v1, "FULL_NUMBER_TYPE"

    const/4 v2, 0x0

    const-string v3, "RawPhoneNumberRule"

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/stingray/util/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hiya/stingray/util/k;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/k;

    .line 2
    new-instance v1, Lcom/hiya/stingray/util/k;

    const-string v3, "BEGINS_WITH_TYPE"

    const/4 v4, 0x1

    const-string v5, "BeginsWithPhoneNumberRule"

    invoke-direct {v1, v3, v4, v5}, Lcom/hiya/stingray/util/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/util/k;->BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/k;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/hiya/stingray/util/k;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/hiya/stingray/util/k;->$VALUES:[Lcom/hiya/stingray/util/k;

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
    iput-object p3, p0, Lcom/hiya/stingray/util/k;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/util/k;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/util/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/util/k;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/util/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/util/k;->$VALUES:[Lcom/hiya/stingray/util/k;

    invoke-virtual {v0}, [Lcom/hiya/stingray/util/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/util/k;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/k;->type:Ljava/lang/String;

    return-object v0
.end method
