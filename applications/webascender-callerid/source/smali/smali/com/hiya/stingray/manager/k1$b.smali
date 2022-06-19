.class public final enum Lcom/hiya/stingray/manager/k1$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/manager/k1$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/manager/k1$b;

.field public static final enum NAME_TERMS_OF_USE:Lcom/hiya/stingray/manager/k1$b;

.field public static final enum TYPE_SCREEN:Lcom/hiya/stingray/manager/k1$b;


# instance fields
.field private final parameterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hiya/stingray/manager/k1$b;

    new-instance v1, Lcom/hiya/stingray/manager/k1$b;

    const-string v2, "TYPE_SCREEN"

    const/4 v3, 0x0

    const-string v4, "screen"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/k1$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/manager/k1$b;->TYPE_SCREEN:Lcom/hiya/stingray/manager/k1$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/k1$b;

    const-string v2, "NAME_TERMS_OF_USE"

    const/4 v3, 0x1

    const-string v4, "terms_of_use"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/k1$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/manager/k1$b;->NAME_TERMS_OF_USE:Lcom/hiya/stingray/manager/k1$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/manager/k1$b;->$VALUES:[Lcom/hiya/stingray/manager/k1$b;

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

    iput-object p3, p0, Lcom/hiya/stingray/manager/k1$b;->parameterName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/k1$b;
    .locals 1

    const-class v0, Lcom/hiya/stingray/manager/k1$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/manager/k1$b;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/manager/k1$b;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/k1$b;->$VALUES:[Lcom/hiya/stingray/manager/k1$b;

    invoke-virtual {v0}, [Lcom/hiya/stingray/manager/k1$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/manager/k1$b;

    return-object v0
.end method


# virtual methods
.method public final getParameterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/k1$b;->parameterName:Ljava/lang/String;

    return-object v0
.end method
