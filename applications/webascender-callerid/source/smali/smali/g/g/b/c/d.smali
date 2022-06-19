.class public final enum Lg/g/b/c/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/b/c/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/b/c/d;

.field public static final enum BG_FILE:Lg/g/b/c/d;

.field public static final enum BG_GIF:Lg/g/b/c/d;

.field public static final enum BG_IMAGE:Lg/g/b/c/d;

.field public static final enum BG_LOGO:Lg/g/b/c/d;

.field public static final enum BG_PRELOADED:Lg/g/b/c/d;

.field public static final enum BG_VIDEO:Lg/g/b/c/d;

.field public static final enum IMAGE:Lg/g/b/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lg/g/b/c/d;

    new-instance v1, Lg/g/b/c/d;

    const-string v2, "BG_FILE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/b/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/d;->BG_FILE:Lg/g/b/c/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/d;

    const-string v2, "BG_LOGO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/b/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/d;->BG_LOGO:Lg/g/b/c/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/d;

    const-string v2, "BG_IMAGE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/b/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/d;->BG_IMAGE:Lg/g/b/c/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/d;

    const-string v2, "BG_PRELOADED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lg/g/b/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/d;->BG_PRELOADED:Lg/g/b/c/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/d;

    const-string v2, "IMAGE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lg/g/b/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/d;->IMAGE:Lg/g/b/c/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/d;

    const-string v2, "BG_VIDEO"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lg/g/b/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/d;->BG_VIDEO:Lg/g/b/c/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/d;

    const-string v2, "BG_GIF"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lg/g/b/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/d;->BG_GIF:Lg/g/b/c/d;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/b/c/d;->$VALUES:[Lg/g/b/c/d;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/b/c/d;
    .locals 1

    const-class v0, Lg/g/b/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/b/c/d;

    return-object p0
.end method

.method public static values()[Lg/g/b/c/d;
    .locals 1

    sget-object v0, Lg/g/b/c/d;->$VALUES:[Lg/g/b/c/d;

    invoke-virtual {v0}, [Lg/g/b/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/b/c/d;

    return-object v0
.end method
