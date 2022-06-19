.class public final enum Lcom/hiya/stingray/ui/customblock/f$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/customblock/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/ui/customblock/f$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/ui/customblock/f$d;

.field public static final enum CONTACTS_SETTING:Lcom/hiya/stingray/ui/customblock/f$d;

.field public static final enum NUMBER:Lcom/hiya/stingray/ui/customblock/f$d;

.field public static final enum NUMBERS_HEADER:Lcom/hiya/stingray/ui/customblock/f$d;

.field public static final enum STARTS_WITH_HEADER:Lcom/hiya/stingray/ui/customblock/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hiya/stingray/ui/customblock/f$d;

    new-instance v1, Lcom/hiya/stingray/ui/customblock/f$d;

    const-string v2, "NUMBERS_HEADER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/customblock/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/customblock/f$d;->NUMBERS_HEADER:Lcom/hiya/stingray/ui/customblock/f$d;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/customblock/f$d;

    const-string v2, "STARTS_WITH_HEADER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/customblock/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/customblock/f$d;->STARTS_WITH_HEADER:Lcom/hiya/stingray/ui/customblock/f$d;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/customblock/f$d;

    const-string v2, "NUMBER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/customblock/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/customblock/f$d;->NUMBER:Lcom/hiya/stingray/ui/customblock/f$d;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/customblock/f$d;

    const-string v2, "CONTACTS_SETTING"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/customblock/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/customblock/f$d;->CONTACTS_SETTING:Lcom/hiya/stingray/ui/customblock/f$d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/ui/customblock/f$d;->$VALUES:[Lcom/hiya/stingray/ui/customblock/f$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/customblock/f$d;
    .locals 1

    const-class v0, Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/ui/customblock/f$d;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/ui/customblock/f$d;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/customblock/f$d;->$VALUES:[Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {v0}, [Lcom/hiya/stingray/ui/customblock/f$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/customblock/f$d;

    return-object v0
.end method
