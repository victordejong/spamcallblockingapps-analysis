.class public final enum Lg/g/a/a/i/p/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/i/p/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/i/p/d;

.field public static final enum FIXED:Lg/g/a/a/i/p/d;

.field public static final enum MOBILE:Lg/g/a/a/i/p/d;

.field public static final enum OTHER:Lg/g/a/a/i/p/d;

.field public static final enum PREMIUM:Lg/g/a/a/i/p/d;

.field public static final enum TOLL_FREE:Lg/g/a/a/i/p/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lg/g/a/a/i/p/d;

    new-instance v1, Lg/g/a/a/i/p/d;

    const-string v2, "MOBILE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/d;->MOBILE:Lg/g/a/a/i/p/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/d;

    const-string v2, "FIXED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/d;->FIXED:Lg/g/a/a/i/p/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/d;

    const-string v2, "TOLL_FREE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/d;->TOLL_FREE:Lg/g/a/a/i/p/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/d;

    const-string v2, "PREMIUM"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/d;->PREMIUM:Lg/g/a/a/i/p/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/d;

    const-string v2, "OTHER"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/d;->OTHER:Lg/g/a/a/i/p/d;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/a/a/i/p/d;->$VALUES:[Lg/g/a/a/i/p/d;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/i/p/d;
    .locals 1

    const-class v0, Lg/g/a/a/i/p/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/i/p/d;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/i/p/d;
    .locals 1

    sget-object v0, Lg/g/a/a/i/p/d;->$VALUES:[Lg/g/a/a/i/p/d;

    invoke-virtual {v0}, [Lg/g/a/a/i/p/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/i/p/d;

    return-object v0
.end method
