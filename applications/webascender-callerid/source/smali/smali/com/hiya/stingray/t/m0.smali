.class public final enum Lcom/hiya/stingray/t/m0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/m0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/t/m0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/t/m0;

.field public static final enum BUSINESS:Lcom/hiya/stingray/t/m0;

.field public static final Companion:Lcom/hiya/stingray/t/m0$a;

.field public static final enum PERSON:Lcom/hiya/stingray/t/m0;

.field public static final enum UNCATEGORIZED:Lcom/hiya/stingray/t/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hiya/stingray/t/m0;

    new-instance v1, Lcom/hiya/stingray/t/m0;

    const-string v2, "PERSON"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/m0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/m0;

    const-string v2, "BUSINESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/m0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/m0;->BUSINESS:Lcom/hiya/stingray/t/m0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/m0;

    const-string v2, "UNCATEGORIZED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/m0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/t/m0;->$VALUES:[Lcom/hiya/stingray/t/m0;

    new-instance v0, Lcom/hiya/stingray/t/m0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/m0$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/t/m0;->Companion:Lcom/hiya/stingray/t/m0$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/m0;
    .locals 1

    const-class v0, Lcom/hiya/stingray/t/m0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/m0;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/t/m0;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/t/m0;->$VALUES:[Lcom/hiya/stingray/t/m0;

    invoke-virtual {v0}, [Lcom/hiya/stingray/t/m0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/t/m0;

    return-object v0
.end method
