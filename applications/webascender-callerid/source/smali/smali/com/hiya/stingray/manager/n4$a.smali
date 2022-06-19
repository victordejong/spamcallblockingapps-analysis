.class public final enum Lcom/hiya/stingray/manager/n4$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/n4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/manager/n4$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/manager/n4$a;

.field public static final enum FEEDBACK:Lcom/hiya/stingray/manager/n4$a;

.field public static final enum HELP:Lcom/hiya/stingray/manager/n4$a;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hiya/stingray/manager/n4$a;

    new-instance v1, Lcom/hiya/stingray/manager/n4$a;

    const-string v2, "FEEDBACK"

    const/4 v3, 0x0

    const-string v4, "premium_feedback_prompt"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/n4$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/manager/n4$a;->FEEDBACK:Lcom/hiya/stingray/manager/n4$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/n4$a;

    const-string v2, "HELP"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/n4$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/manager/n4$a;->HELP:Lcom/hiya/stingray/manager/n4$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/manager/n4$a;->$VALUES:[Lcom/hiya/stingray/manager/n4$a;

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

    iput-object p3, p0, Lcom/hiya/stingray/manager/n4$a;->tag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/n4$a;
    .locals 1

    const-class v0, Lcom/hiya/stingray/manager/n4$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/manager/n4$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/manager/n4$a;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/n4$a;->$VALUES:[Lcom/hiya/stingray/manager/n4$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/manager/n4$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/manager/n4$a;

    return-object v0
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/n4$a;->tag:Ljava/lang/String;

    return-object v0
.end method
