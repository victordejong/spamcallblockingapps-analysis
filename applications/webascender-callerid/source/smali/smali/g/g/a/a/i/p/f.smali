.class public final enum Lg/g/a/a/i/p/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/i/p/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/i/p/f;

.field public static final enum BUSINESS:Lg/g/a/a/i/p/f;

.field public static final enum NONE:Lg/g/a/a/i/p/f;

.field public static final enum PERSON:Lg/g/a/a/i/p/f;

.field public static final enum PREMIUM:Lg/g/a/a/i/p/f;

.field public static final enum STOP:Lg/g/a/a/i/p/f;

.field public static final enum WARN:Lg/g/a/a/i/p/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lg/g/a/a/i/p/f;

    new-instance v1, Lg/g/a/a/i/p/f;

    const-string v2, "BUSINESS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/f;->BUSINESS:Lg/g/a/a/i/p/f;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/f;

    const-string v2, "WARN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/f;->WARN:Lg/g/a/a/i/p/f;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/f;

    const-string v2, "PERSON"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/f;->PERSON:Lg/g/a/a/i/p/f;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/f;

    const-string v2, "STOP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/f;->STOP:Lg/g/a/a/i/p/f;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/f;

    const-string v2, "PREMIUM"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/f;->PREMIUM:Lg/g/a/a/i/p/f;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/f;

    const-string v2, "NONE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/f;->NONE:Lg/g/a/a/i/p/f;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/a/a/i/p/f;->$VALUES:[Lg/g/a/a/i/p/f;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/i/p/f;
    .locals 1

    const-class v0, Lg/g/a/a/i/p/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/i/p/f;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/i/p/f;
    .locals 1

    sget-object v0, Lg/g/a/a/i/p/f;->$VALUES:[Lg/g/a/a/i/p/f;

    invoke-virtual {v0}, [Lg/g/a/a/i/p/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/i/p/f;

    return-object v0
.end method
