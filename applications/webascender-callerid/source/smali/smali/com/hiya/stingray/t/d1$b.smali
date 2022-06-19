.class public final enum Lcom/hiya/stingray/t/d1$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/t/d1$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/t/d1$b;

.field public static final enum FREE:Lcom/hiya/stingray/t/d1$b;

.field public static final enum LEGACY_FREE:Lcom/hiya/stingray/t/d1$b;

.field public static final enum SUBSCRIBED:Lcom/hiya/stingray/t/d1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hiya/stingray/t/d1$b;

    new-instance v1, Lcom/hiya/stingray/t/d1$b;

    const-string v2, "LEGACY_FREE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/d1$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/d1$b;->LEGACY_FREE:Lcom/hiya/stingray/t/d1$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/d1$b;

    const-string v2, "FREE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/d1$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/d1$b;->FREE:Lcom/hiya/stingray/t/d1$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/d1$b;

    const-string v2, "SUBSCRIBED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/d1$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/d1$b;->SUBSCRIBED:Lcom/hiya/stingray/t/d1$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/t/d1$b;->$VALUES:[Lcom/hiya/stingray/t/d1$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/d1$b;
    .locals 1

    const-class v0, Lcom/hiya/stingray/t/d1$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/d1$b;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/t/d1$b;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/t/d1$b;->$VALUES:[Lcom/hiya/stingray/t/d1$b;

    invoke-virtual {v0}, [Lcom/hiya/stingray/t/d1$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/t/d1$b;

    return-object v0
.end method
