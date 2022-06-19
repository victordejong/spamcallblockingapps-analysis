.class public final enum Lg/f/c/a/i0/c0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/f/c/a/i0/c0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/f/c/a/i0/c0;

.field public static final enum SHA1:Lg/f/c/a/i0/c0;

.field public static final enum SHA256:Lg/f/c/a/i0/c0;

.field public static final enum SHA384:Lg/f/c/a/i0/c0;

.field public static final enum SHA512:Lg/f/c/a/i0/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lg/f/c/a/i0/c0;

    const-string v1, "SHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/f/c/a/i0/c0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/f/c/a/i0/c0;->SHA1:Lg/f/c/a/i0/c0;

    .line 2
    new-instance v1, Lg/f/c/a/i0/c0;

    const-string v3, "SHA256"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/f/c/a/i0/c0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/f/c/a/i0/c0;->SHA256:Lg/f/c/a/i0/c0;

    .line 3
    new-instance v3, Lg/f/c/a/i0/c0;

    const-string v5, "SHA384"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/f/c/a/i0/c0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/f/c/a/i0/c0;->SHA384:Lg/f/c/a/i0/c0;

    .line 4
    new-instance v5, Lg/f/c/a/i0/c0;

    const-string v7, "SHA512"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg/f/c/a/i0/c0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/f/c/a/i0/c0;->SHA512:Lg/f/c/a/i0/c0;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/f/c/a/i0/c0;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lg/f/c/a/i0/c0;->$VALUES:[Lg/f/c/a/i0/c0;

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

.method public static valueOf(Ljava/lang/String;)Lg/f/c/a/i0/c0;
    .locals 1

    .line 1
    const-class v0, Lg/f/c/a/i0/c0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/f/c/a/i0/c0;

    return-object p0
.end method

.method public static values()[Lg/f/c/a/i0/c0;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/i0/c0;->$VALUES:[Lg/f/c/a/i0/c0;

    invoke-virtual {v0}, [Lg/f/c/a/i0/c0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/f/c/a/i0/c0;

    return-object v0
.end method
