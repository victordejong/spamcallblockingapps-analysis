.class public final enum Lg/g/b/c/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/b/c/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/b/c/i;

.field public static final enum BUSINESS:Lg/g/b/c/i;

.field public static final enum PERSON:Lg/g/b/c/i;

.field public static final enum UNKNOWN:Lg/g/b/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lg/g/b/c/i;

    new-instance v1, Lg/g/b/c/i;

    const-string v2, "BUSINESS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/b/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/i;->BUSINESS:Lg/g/b/c/i;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/i;

    const-string v2, "PERSON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/b/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/i;->PERSON:Lg/g/b/c/i;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/i;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/b/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/i;->UNKNOWN:Lg/g/b/c/i;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/b/c/i;->$VALUES:[Lg/g/b/c/i;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/b/c/i;
    .locals 1

    const-class v0, Lg/g/b/c/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/b/c/i;

    return-object p0
.end method

.method public static values()[Lg/g/b/c/i;
    .locals 1

    sget-object v0, Lg/g/b/c/i;->$VALUES:[Lg/g/b/c/i;

    invoke-virtual {v0}, [Lg/g/b/c/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/b/c/i;

    return-object v0
.end method
