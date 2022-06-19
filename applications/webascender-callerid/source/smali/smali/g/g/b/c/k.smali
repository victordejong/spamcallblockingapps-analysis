.class public final enum Lg/g/b/c/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/b/c/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/b/c/k;

.field public static final enum INCOMING:Lg/g/b/c/k;

.field public static final enum OUTGOING:Lg/g/b/c/k;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lg/g/b/c/k;

    new-instance v1, Lg/g/b/c/k;

    const-string v2, "INCOMING"

    const/4 v3, 0x0

    const-string v4, "Incoming"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lg/g/b/c/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/k;

    const-string v2, "OUTGOING"

    const/4 v3, 0x1

    const-string v4, "Outgoing"

    invoke-direct {v1, v2, v3, v4}, Lg/g/b/c/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/b/c/k;->OUTGOING:Lg/g/b/c/k;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/b/c/k;->$VALUES:[Lg/g/b/c/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/g/b/c/k;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/g/b/c/k;
    .locals 1

    const-class v0, Lg/g/b/c/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/b/c/k;

    return-object p0
.end method

.method public static values()[Lg/g/b/c/k;
    .locals 1

    sget-object v0, Lg/g/b/c/k;->$VALUES:[Lg/g/b/c/k;

    invoke-virtual {v0}, [Lg/g/b/c/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/b/c/k;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/c/k;->value:Ljava/lang/String;

    return-object v0
.end method
