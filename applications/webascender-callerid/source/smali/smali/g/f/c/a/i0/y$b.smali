.class public final enum Lg/f/c/a/i0/y$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/i0/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/f/c/a/i0/y$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/f/c/a/i0/y$b;

.field public static final enum NIST_P256:Lg/f/c/a/i0/y$b;

.field public static final enum NIST_P384:Lg/f/c/a/i0/y$b;

.field public static final enum NIST_P521:Lg/f/c/a/i0/y$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lg/f/c/a/i0/y$b;

    const-string v1, "NIST_P256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/f/c/a/i0/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/f/c/a/i0/y$b;->NIST_P256:Lg/f/c/a/i0/y$b;

    .line 2
    new-instance v1, Lg/f/c/a/i0/y$b;

    const-string v3, "NIST_P384"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/f/c/a/i0/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/f/c/a/i0/y$b;->NIST_P384:Lg/f/c/a/i0/y$b;

    .line 3
    new-instance v3, Lg/f/c/a/i0/y$b;

    const-string v5, "NIST_P521"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/f/c/a/i0/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/f/c/a/i0/y$b;->NIST_P521:Lg/f/c/a/i0/y$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/f/c/a/i0/y$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lg/f/c/a/i0/y$b;->$VALUES:[Lg/f/c/a/i0/y$b;

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

.method public static valueOf(Ljava/lang/String;)Lg/f/c/a/i0/y$b;
    .locals 1

    .line 1
    const-class v0, Lg/f/c/a/i0/y$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/f/c/a/i0/y$b;

    return-object p0
.end method

.method public static values()[Lg/f/c/a/i0/y$b;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/i0/y$b;->$VALUES:[Lg/f/c/a/i0/y$b;

    invoke-virtual {v0}, [Lg/f/c/a/i0/y$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/f/c/a/i0/y$b;

    return-object v0
.end method
