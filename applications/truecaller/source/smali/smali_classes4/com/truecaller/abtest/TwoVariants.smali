.class public final enum Lcom/truecaller/abtest/TwoVariants;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/abtest/TwoVariants;",
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
        "Lcom/truecaller/abtest/TwoVariants;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Control",
        "VariantA",
        "abtest_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/abtest/TwoVariants;

.field public static final enum Control:Lcom/truecaller/abtest/TwoVariants;
    .annotation runtime Le/a/c0/b;
    .end annotation
.end field

.field public static final enum VariantA:Lcom/truecaller/abtest/TwoVariants;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/abtest/TwoVariants;

    new-instance v1, Lcom/truecaller/abtest/TwoVariants;

    const-string v2, "Control"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/abtest/TwoVariants;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/abtest/TwoVariants;->Control:Lcom/truecaller/abtest/TwoVariants;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/abtest/TwoVariants;

    const-string v2, "VariantA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/abtest/TwoVariants;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/abtest/TwoVariants;->VariantA:Lcom/truecaller/abtest/TwoVariants;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/abtest/TwoVariants;->$VALUES:[Lcom/truecaller/abtest/TwoVariants;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/abtest/TwoVariants;
    .locals 1

    const-class v0, Lcom/truecaller/abtest/TwoVariants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/abtest/TwoVariants;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/abtest/TwoVariants;
    .locals 1

    sget-object v0, Lcom/truecaller/abtest/TwoVariants;->$VALUES:[Lcom/truecaller/abtest/TwoVariants;

    invoke-virtual {v0}, [Lcom/truecaller/abtest/TwoVariants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/abtest/TwoVariants;

    return-object v0
.end method
