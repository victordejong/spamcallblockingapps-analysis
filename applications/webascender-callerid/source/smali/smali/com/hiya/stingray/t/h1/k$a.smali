.class public final enum Lcom/hiya/stingray/t/h1/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/h1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/t/h1/k$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/t/h1/k$a;

.field public static final enum DETAILS:Lcom/hiya/stingray/t/h1/k$a;

.field public static final enum LIST:Lcom/hiya/stingray/t/h1/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hiya/stingray/t/h1/k$a;

    new-instance v1, Lcom/hiya/stingray/t/h1/k$a;

    const-string v2, "LIST"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/k$a;->LIST:Lcom/hiya/stingray/t/h1/k$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/h1/k$a;

    const-string v2, "DETAILS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/k$a;->DETAILS:Lcom/hiya/stingray/t/h1/k$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/t/h1/k$a;->$VALUES:[Lcom/hiya/stingray/t/h1/k$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/h1/k$a;
    .locals 1

    const-class v0, Lcom/hiya/stingray/t/h1/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/h1/k$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/t/h1/k$a;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/t/h1/k$a;->$VALUES:[Lcom/hiya/stingray/t/h1/k$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/t/h1/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/t/h1/k$a;

    return-object v0
.end method
