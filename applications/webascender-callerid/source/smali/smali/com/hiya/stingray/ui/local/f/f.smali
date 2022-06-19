.class public final enum Lcom/hiya/stingray/ui/local/f/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/ui/local/f/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/ui/local/f/f;

.field public static final enum CONTACT_INFO:Lcom/hiya/stingray/ui/local/f/f;

.field public static final enum COUPONS:Lcom/hiya/stingray/ui/local/f/f;

.field public static final enum DETAIL_INFO:Lcom/hiya/stingray/ui/local/f/f;

.field public static final enum DIR_SERVICE:Lcom/hiya/stingray/ui/local/f/f;

.field public static final enum RATING:Lcom/hiya/stingray/ui/local/f/f;


# instance fields
.field private final hasSectionHeader:Z

.field private final nameId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hiya/stingray/ui/local/f/f;

    new-instance v1, Lcom/hiya/stingray/ui/local/f/f;

    const-string v2, "CONTACT_INFO"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f110186

    .line 1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hiya/stingray/ui/local/f/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v1, Lcom/hiya/stingray/ui/local/f/f;->CONTACT_INFO:Lcom/hiya/stingray/ui/local/f/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/local/f/f;

    const-string v2, "DETAIL_INFO"

    const v5, 0x7f110188

    .line 2
    invoke-direct {v1, v2, v4, v4, v5}, Lcom/hiya/stingray/ui/local/f/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v1, Lcom/hiya/stingray/ui/local/f/f;->DETAIL_INFO:Lcom/hiya/stingray/ui/local/f/f;

    aput-object v1, v0, v4

    new-instance v1, Lcom/hiya/stingray/ui/local/f/f;

    const-string v2, "COUPONS"

    const/4 v5, 0x2

    const v6, 0x7f110187

    .line 3
    invoke-direct {v1, v2, v5, v4, v6}, Lcom/hiya/stingray/ui/local/f/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v1, Lcom/hiya/stingray/ui/local/f/f;->COUPONS:Lcom/hiya/stingray/ui/local/f/f;

    aput-object v1, v0, v5

    new-instance v1, Lcom/hiya/stingray/ui/local/f/f;

    const-string v2, "RATING"

    const/4 v4, 0x3

    .line 4
    invoke-direct {v1, v2, v4, v3, v3}, Lcom/hiya/stingray/ui/local/f/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v1, Lcom/hiya/stingray/ui/local/f/f;->RATING:Lcom/hiya/stingray/ui/local/f/f;

    aput-object v1, v0, v4

    new-instance v1, Lcom/hiya/stingray/ui/local/f/f;

    const-string v2, "DIR_SERVICE"

    const/4 v4, 0x4

    .line 5
    invoke-direct {v1, v2, v4, v3, v3}, Lcom/hiya/stingray/ui/local/f/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v1, Lcom/hiya/stingray/ui/local/f/f;->DIR_SERVICE:Lcom/hiya/stingray/ui/local/f/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hiya/stingray/ui/local/f/f;->$VALUES:[Lcom/hiya/stingray/ui/local/f/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/hiya/stingray/ui/local/f/f;->hasSectionHeader:Z

    iput p4, p0, Lcom/hiya/stingray/ui/local/f/f;->nameId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/local/f/f;
    .locals 1

    const-class v0, Lcom/hiya/stingray/ui/local/f/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/ui/local/f/f;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/ui/local/f/f;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/local/f/f;->$VALUES:[Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v0}, [Lcom/hiya/stingray/ui/local/f/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/local/f/f;

    return-object v0
.end method


# virtual methods
.method public final getHasSectionHeader()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/f/f;->hasSectionHeader:Z

    return v0
.end method

.method public final getNameId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/local/f/f;->nameId:I

    return v0
.end method
