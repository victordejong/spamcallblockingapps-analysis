.class public final enum Lcom/hiya/stingray/q/c/h/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/q/c/h/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/q/c/h/a;

.field public static final enum FRAUD:Lcom/hiya/stingray/q/c/h/a;

.field public static final enum NEUTRAL:Lcom/hiya/stingray/q/c/h/a;

.field public static final enum SPAM:Lcom/hiya/stingray/q/c/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/c/h/a;

    const-string v1, "NEUTRAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/q/c/h/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/stingray/q/c/h/a;->NEUTRAL:Lcom/hiya/stingray/q/c/h/a;

    new-instance v1, Lcom/hiya/stingray/q/c/h/a;

    const-string v3, "SPAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/stingray/q/c/h/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/q/c/h/a;->SPAM:Lcom/hiya/stingray/q/c/h/a;

    new-instance v3, Lcom/hiya/stingray/q/c/h/a;

    const-string v5, "FRAUD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hiya/stingray/q/c/h/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hiya/stingray/q/c/h/a;->FRAUD:Lcom/hiya/stingray/q/c/h/a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/hiya/stingray/q/c/h/a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/hiya/stingray/q/c/h/a;->$VALUES:[Lcom/hiya/stingray/q/c/h/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/q/c/h/a;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/q/c/h/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/q/c/h/a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/q/c/h/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/q/c/h/a;->$VALUES:[Lcom/hiya/stingray/q/c/h/a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/q/c/h/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/q/c/h/a;

    return-object v0
.end method
