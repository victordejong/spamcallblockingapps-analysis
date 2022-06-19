.class public final enum Lcom/hiya/stingray/t/q0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/q0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/t/q0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/t/q0;

.field public static final Companion:Lcom/hiya/stingray/t/q0$a;

.field public static final enum FIXED:Lcom/hiya/stingray/t/q0;

.field public static final enum MOBILE:Lcom/hiya/stingray/t/q0;

.field public static final enum OTHER:Lcom/hiya/stingray/t/q0;

.field public static final enum PREMIUM:Lcom/hiya/stingray/t/q0;

.field public static final enum TOLL_FREE:Lcom/hiya/stingray/t/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hiya/stingray/t/q0;

    new-instance v1, Lcom/hiya/stingray/t/q0;

    const-string v2, "MOBILE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/q0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/q0;->MOBILE:Lcom/hiya/stingray/t/q0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/q0;

    const-string v2, "FIXED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/q0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/q0;->FIXED:Lcom/hiya/stingray/t/q0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/q0;

    const-string v2, "TOLL_FREE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/q0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/q0;->TOLL_FREE:Lcom/hiya/stingray/t/q0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/q0;

    const-string v2, "PREMIUM"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/q0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/q0;->PREMIUM:Lcom/hiya/stingray/t/q0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/q0;

    const-string v2, "OTHER"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/q0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/q0;->OTHER:Lcom/hiya/stingray/t/q0;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/t/q0;->$VALUES:[Lcom/hiya/stingray/t/q0;

    new-instance v0, Lcom/hiya/stingray/t/q0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/q0$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/t/q0;->Companion:Lcom/hiya/stingray/t/q0$a;

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

.method public static final from(Ljava/lang/String;)Lcom/hiya/stingray/t/q0;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/t/q0;->Companion:Lcom/hiya/stingray/t/q0$a;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/t/q0$a;->a(Ljava/lang/String;)Lcom/hiya/stingray/t/q0;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/q0;
    .locals 1

    const-class v0, Lcom/hiya/stingray/t/q0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/q0;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/t/q0;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/t/q0;->$VALUES:[Lcom/hiya/stingray/t/q0;

    invoke-virtual {v0}, [Lcom/hiya/stingray/t/q0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/t/q0;

    return-object v0
.end method
