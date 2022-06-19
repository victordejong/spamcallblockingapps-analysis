.class public enum Lcom/truecaller/insights/commons/LanguageCommonNames;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/commons/LanguageCommonNames$b;,
        Lcom/truecaller/insights/commons/LanguageCommonNames$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/commons/LanguageCommonNames;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/truecaller/insights/commons/LanguageCommonNames;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SWEDISH",
        "ARABIC",
        "insights-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/commons/LanguageCommonNames;

.field public static final enum ARABIC:Lcom/truecaller/insights/commons/LanguageCommonNames;

.field public static final enum SWEDISH:Lcom/truecaller/insights/commons/LanguageCommonNames;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/insights/commons/LanguageCommonNames;

    new-instance v1, Lcom/truecaller/insights/commons/LanguageCommonNames$b;

    const-string v2, "SWEDISH"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/commons/LanguageCommonNames$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/commons/LanguageCommonNames;->SWEDISH:Lcom/truecaller/insights/commons/LanguageCommonNames;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/commons/LanguageCommonNames$a;

    const-string v2, "ARABIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/commons/LanguageCommonNames$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/commons/LanguageCommonNames;->ARABIC:Lcom/truecaller/insights/commons/LanguageCommonNames;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/commons/LanguageCommonNames;->$VALUES:[Lcom/truecaller/insights/commons/LanguageCommonNames;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILs1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/truecaller/insights/commons/LanguageCommonNames;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/commons/LanguageCommonNames;
    .locals 1

    const-class v0, Lcom/truecaller/insights/commons/LanguageCommonNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/commons/LanguageCommonNames;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/commons/LanguageCommonNames;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/commons/LanguageCommonNames;->$VALUES:[Lcom/truecaller/insights/commons/LanguageCommonNames;

    invoke-virtual {v0}, [Lcom/truecaller/insights/commons/LanguageCommonNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/commons/LanguageCommonNames;

    return-object v0
.end method
