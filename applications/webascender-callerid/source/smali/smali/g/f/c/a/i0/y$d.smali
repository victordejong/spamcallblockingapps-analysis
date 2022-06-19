.class public final enum Lg/f/c/a/i0/y$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/i0/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/f/c/a/i0/y$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/f/c/a/i0/y$d;

.field public static final enum COMPRESSED:Lg/f/c/a/i0/y$d;

.field public static final enum DO_NOT_USE_CRUNCHY_UNCOMPRESSED:Lg/f/c/a/i0/y$d;

.field public static final enum UNCOMPRESSED:Lg/f/c/a/i0/y$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lg/f/c/a/i0/y$d;

    const-string v1, "UNCOMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/f/c/a/i0/y$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/f/c/a/i0/y$d;->UNCOMPRESSED:Lg/f/c/a/i0/y$d;

    .line 2
    new-instance v1, Lg/f/c/a/i0/y$d;

    const-string v3, "COMPRESSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/f/c/a/i0/y$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/f/c/a/i0/y$d;->COMPRESSED:Lg/f/c/a/i0/y$d;

    .line 3
    new-instance v3, Lg/f/c/a/i0/y$d;

    const-string v5, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/f/c/a/i0/y$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/f/c/a/i0/y$d;->DO_NOT_USE_CRUNCHY_UNCOMPRESSED:Lg/f/c/a/i0/y$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/f/c/a/i0/y$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lg/f/c/a/i0/y$d;->$VALUES:[Lg/f/c/a/i0/y$d;

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

.method public static valueOf(Ljava/lang/String;)Lg/f/c/a/i0/y$d;
    .locals 1

    .line 1
    const-class v0, Lg/f/c/a/i0/y$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/f/c/a/i0/y$d;

    return-object p0
.end method

.method public static values()[Lg/f/c/a/i0/y$d;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/i0/y$d;->$VALUES:[Lg/f/c/a/i0/y$d;

    invoke-virtual {v0}, [Lg/f/c/a/i0/y$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/f/c/a/i0/y$d;

    return-object v0
.end method
