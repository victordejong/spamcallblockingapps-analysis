.class public final enum Lg/e/a/a/d/i$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/a/a/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/e/a/a/d/i$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/e/a/a/d/i$b;

.field public static final enum INSIDE_CHART:Lg/e/a/a/d/i$b;

.field public static final enum OUTSIDE_CHART:Lg/e/a/a/d/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg/e/a/a/d/i$b;

    const-string v1, "OUTSIDE_CHART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/e/a/a/d/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/e/a/a/d/i$b;->OUTSIDE_CHART:Lg/e/a/a/d/i$b;

    new-instance v1, Lg/e/a/a/d/i$b;

    const-string v3, "INSIDE_CHART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/e/a/a/d/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/e/a/a/d/i$b;->INSIDE_CHART:Lg/e/a/a/d/i$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/e/a/a/d/i$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lg/e/a/a/d/i$b;->$VALUES:[Lg/e/a/a/d/i$b;

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

.method public static valueOf(Ljava/lang/String;)Lg/e/a/a/d/i$b;
    .locals 1

    .line 1
    const-class v0, Lg/e/a/a/d/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/e/a/a/d/i$b;

    return-object p0
.end method

.method public static values()[Lg/e/a/a/d/i$b;
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/d/i$b;->$VALUES:[Lg/e/a/a/d/i$b;

    invoke-virtual {v0}, [Lg/e/a/a/d/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/e/a/a/d/i$b;

    return-object v0
.end method
