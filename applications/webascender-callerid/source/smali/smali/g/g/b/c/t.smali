.class public final enum Lg/g/b/c/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/b/c/t;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/b/c/t;

.field public static final enum FAILED:Lg/g/b/c/t;

.field public static final enum NOT_VERIFIED:Lg/g/b/c/t;

.field public static final enum PASSED:Lg/g/b/c/t;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lg/g/b/c/t;

    new-instance v1, Lg/g/b/c/t;

    const-string v2, "FAILED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/b/c/t;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/t;->FAILED:Lg/g/b/c/t;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/t;

    const-string v2, "NOT_VERIFIED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/b/c/t;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/t;->NOT_VERIFIED:Lg/g/b/c/t;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/t;

    const-string v2, "PASSED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/b/c/t;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/t;->PASSED:Lg/g/b/c/t;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/b/c/t;->$VALUES:[Lg/g/b/c/t;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/b/c/t;
    .locals 1

    const-class v0, Lg/g/b/c/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/b/c/t;

    return-object p0
.end method

.method public static values()[Lg/g/b/c/t;
    .locals 1

    sget-object v0, Lg/g/b/c/t;->$VALUES:[Lg/g/b/c/t;

    invoke-virtual {v0}, [Lg/g/b/c/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/b/c/t;

    return-object v0
.end method
