.class public final enum Lcom/hiya/stingray/t/v0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/t/v0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/t/v0;

.field public static final enum HOME:Lcom/hiya/stingray/t/v0;

.field public static final enum MOBILE:Lcom/hiya/stingray/t/v0;

.field public static final enum PHONE:Lcom/hiya/stingray/t/v0;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/v0;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    const v3, 0x7f1103fc

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/stingray/t/v0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hiya/stingray/t/v0;->MOBILE:Lcom/hiya/stingray/t/v0;

    new-instance v1, Lcom/hiya/stingray/t/v0;

    const-string v3, "HOME"

    const/4 v4, 0x1

    const v5, 0x7f1103fb

    invoke-direct {v1, v3, v4, v5}, Lcom/hiya/stingray/t/v0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/hiya/stingray/t/v0;->HOME:Lcom/hiya/stingray/t/v0;

    new-instance v3, Lcom/hiya/stingray/t/v0;

    const-string v5, "PHONE"

    const/4 v6, 0x2

    const v7, 0x7f1103fd

    invoke-direct {v3, v5, v6, v7}, Lcom/hiya/stingray/t/v0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/hiya/stingray/t/v0;->PHONE:Lcom/hiya/stingray/t/v0;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/hiya/stingray/t/v0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/hiya/stingray/t/v0;->$VALUES:[Lcom/hiya/stingray/t/v0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/hiya/stingray/t/v0;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/v0;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/t/v0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/v0;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/t/v0;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/v0;->$VALUES:[Lcom/hiya/stingray/t/v0;

    invoke-virtual {v0}, [Lcom/hiya/stingray/t/v0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/t/v0;

    return-object v0
.end method


# virtual methods
.method public getStringResource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/t/v0;->value:I

    return v0
.end method
