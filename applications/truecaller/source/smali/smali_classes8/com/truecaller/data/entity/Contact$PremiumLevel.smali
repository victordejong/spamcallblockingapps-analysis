.class public final enum Lcom/truecaller/data/entity/Contact$PremiumLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/entity/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PremiumLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/data/entity/Contact$PremiumLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/data/entity/Contact$PremiumLevel;

.field public static final enum GOLD:Lcom/truecaller/data/entity/Contact$PremiumLevel;

.field public static final enum NONE:Lcom/truecaller/data/entity/Contact$PremiumLevel;

.field public static final enum REGULAR:Lcom/truecaller/data/entity/Contact$PremiumLevel;


# instance fields
.field private final level:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/Contact$PremiumLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "None"

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/data/entity/Contact$PremiumLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/truecaller/data/entity/Contact$PremiumLevel;->NONE:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    new-instance v1, Lcom/truecaller/data/entity/Contact$PremiumLevel;

    const-string v3, "REGULAR"

    const/4 v4, 0x1

    const-string v5, "Regular"

    invoke-direct {v1, v3, v4, v5}, Lcom/truecaller/data/entity/Contact$PremiumLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/data/entity/Contact$PremiumLevel;->REGULAR:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    new-instance v3, Lcom/truecaller/data/entity/Contact$PremiumLevel;

    const-string v5, "GOLD"

    const/4 v6, 0x2

    const-string v7, "Gold"

    invoke-direct {v3, v5, v6, v7}, Lcom/truecaller/data/entity/Contact$PremiumLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/truecaller/data/entity/Contact$PremiumLevel;->GOLD:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/truecaller/data/entity/Contact$PremiumLevel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/truecaller/data/entity/Contact$PremiumLevel;->$VALUES:[Lcom/truecaller/data/entity/Contact$PremiumLevel;

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

    .line 2
    iput-object p3, p0, Lcom/truecaller/data/entity/Contact$PremiumLevel;->level:Ljava/lang/String;

    return-void
.end method

.method public static fromRemote(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact$PremiumLevel;
    .locals 4

    .line 1
    invoke-static {}, Lcom/truecaller/data/entity/Contact$PremiumLevel;->values()[Lcom/truecaller/data/entity/Contact$PremiumLevel;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    iget-object v3, v2, Lcom/truecaller/data/entity/Contact$PremiumLevel;->level:Ljava/lang/String;

    invoke-static {p0, v3}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/truecaller/data/entity/Contact$PremiumLevel;->NONE:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact$PremiumLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/data/entity/Contact$PremiumLevel;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/data/entity/Contact$PremiumLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/data/entity/Contact$PremiumLevel;->$VALUES:[Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-virtual {v0}, [Lcom/truecaller/data/entity/Contact$PremiumLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/data/entity/Contact$PremiumLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact$PremiumLevel;->level:Ljava/lang/String;

    return-object v0
.end method
