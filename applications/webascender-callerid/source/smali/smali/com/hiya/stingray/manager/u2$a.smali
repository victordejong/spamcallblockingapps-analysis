.class public final enum Lcom/hiya/stingray/manager/u2$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/manager/u2$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/manager/u2$a;

.field public static final enum HAPPY:Lcom/hiya/stingray/manager/u2$a;

.field public static final enum MEH:Lcom/hiya/stingray/manager/u2$a;

.field public static final enum SAD:Lcom/hiya/stingray/manager/u2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hiya/stingray/manager/u2$a;

    new-instance v1, Lcom/hiya/stingray/manager/u2$a;

    const-string v2, "SAD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/u2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/u2$a;->SAD:Lcom/hiya/stingray/manager/u2$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/u2$a;

    const-string v2, "MEH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/u2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/u2$a;->MEH:Lcom/hiya/stingray/manager/u2$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/u2$a;

    const-string v2, "HAPPY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/u2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/u2$a;->HAPPY:Lcom/hiya/stingray/manager/u2$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/manager/u2$a;->$VALUES:[Lcom/hiya/stingray/manager/u2$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/u2$a;
    .locals 1

    const-class v0, Lcom/hiya/stingray/manager/u2$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/manager/u2$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/manager/u2$a;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/u2$a;->$VALUES:[Lcom/hiya/stingray/manager/u2$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/manager/u2$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/manager/u2$a;

    return-object v0
.end method
