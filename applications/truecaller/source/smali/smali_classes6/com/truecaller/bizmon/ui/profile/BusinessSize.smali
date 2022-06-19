.class public final enum Lcom/truecaller/bizmon/ui/profile/BusinessSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/bizmon/ui/profile/BusinessSize;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/bizmon/ui/profile/BusinessSize;",
        "",
        "",
        "option",
        "I",
        "getOption",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "MICRO",
        "SMALL",
        "MEDIUM",
        "LARGE",
        "ENTERPRISE",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/bizmon/ui/profile/BusinessSize;

.field public static final enum ENTERPRISE:Lcom/truecaller/bizmon/ui/profile/BusinessSize;

.field public static final enum LARGE:Lcom/truecaller/bizmon/ui/profile/BusinessSize;

.field public static final enum MEDIUM:Lcom/truecaller/bizmon/ui/profile/BusinessSize;

.field public static final enum MICRO:Lcom/truecaller/bizmon/ui/profile/BusinessSize;

.field public static final enum SMALL:Lcom/truecaller/bizmon/ui/profile/BusinessSize;


# instance fields
.field private final option:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    new-instance v1, Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    .line 1
    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_SizeMicro:I

    const-string v3, "MICRO"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/bizmon/ui/profile/BusinessSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->MICRO:Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    .line 2
    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_SizeSmall:I

    const-string v3, "SMALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/bizmon/ui/profile/BusinessSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->SMALL:Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    .line 3
    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_SizeMedium:I

    const-string v3, "MEDIUM"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/bizmon/ui/profile/BusinessSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->MEDIUM:Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    .line 4
    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_SizeLarge:I

    const-string v3, "LARGE"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/bizmon/ui/profile/BusinessSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->LARGE:Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    .line 5
    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_SizeEnterprise:I

    const-string v3, "ENTERPRISE"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/bizmon/ui/profile/BusinessSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->ENTERPRISE:Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->$VALUES:[Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->option:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/bizmon/ui/profile/BusinessSize;
    .locals 1

    const-class v0, Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/bizmon/ui/profile/BusinessSize;
    .locals 1

    sget-object v0, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->$VALUES:[Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    invoke-virtual {v0}, [Lcom/truecaller/bizmon/ui/profile/BusinessSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    return-object v0
.end method


# virtual methods
.method public final getOption()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->option:I

    return v0
.end method
