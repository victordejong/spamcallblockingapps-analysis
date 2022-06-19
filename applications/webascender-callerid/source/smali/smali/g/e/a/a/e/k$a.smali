.class public final enum Lg/e/a/a/e/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/a/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/e/a/a/e/k$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/e/a/a/e/k$a;

.field public static final enum CUBIC_BEZIER:Lg/e/a/a/e/k$a;

.field public static final enum HORIZONTAL_BEZIER:Lg/e/a/a/e/k$a;

.field public static final enum LINEAR:Lg/e/a/a/e/k$a;

.field public static final enum STEPPED:Lg/e/a/a/e/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lg/e/a/a/e/k$a;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/e/a/a/e/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/e/a/a/e/k$a;->LINEAR:Lg/e/a/a/e/k$a;

    .line 2
    new-instance v1, Lg/e/a/a/e/k$a;

    const-string v3, "STEPPED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/e/a/a/e/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/e/a/a/e/k$a;->STEPPED:Lg/e/a/a/e/k$a;

    .line 3
    new-instance v3, Lg/e/a/a/e/k$a;

    const-string v5, "CUBIC_BEZIER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/e/a/a/e/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/e/a/a/e/k$a;->CUBIC_BEZIER:Lg/e/a/a/e/k$a;

    .line 4
    new-instance v5, Lg/e/a/a/e/k$a;

    const-string v7, "HORIZONTAL_BEZIER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg/e/a/a/e/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/e/a/a/e/k$a;->HORIZONTAL_BEZIER:Lg/e/a/a/e/k$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/e/a/a/e/k$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lg/e/a/a/e/k$a;->$VALUES:[Lg/e/a/a/e/k$a;

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

.method public static valueOf(Ljava/lang/String;)Lg/e/a/a/e/k$a;
    .locals 1

    .line 1
    const-class v0, Lg/e/a/a/e/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/e/a/a/e/k$a;

    return-object p0
.end method

.method public static values()[Lg/e/a/a/e/k$a;
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/e/k$a;->$VALUES:[Lg/e/a/a/e/k$a;

    invoke-virtual {v0}, [Lg/e/a/a/e/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/e/a/a/e/k$a;

    return-object v0
.end method
