.class public final enum Lg/e/a/a/e/o$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/a/a/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/e/a/a/e/o$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/e/a/a/e/o$a;

.field public static final enum INSIDE_SLICE:Lg/e/a/a/e/o$a;

.field public static final enum OUTSIDE_SLICE:Lg/e/a/a/e/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg/e/a/a/e/o$a;

    const-string v1, "INSIDE_SLICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/e/a/a/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/e/a/a/e/o$a;->INSIDE_SLICE:Lg/e/a/a/e/o$a;

    .line 2
    new-instance v1, Lg/e/a/a/e/o$a;

    const-string v3, "OUTSIDE_SLICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/e/a/a/e/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/e/a/a/e/o$a;->OUTSIDE_SLICE:Lg/e/a/a/e/o$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/e/a/a/e/o$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lg/e/a/a/e/o$a;->$VALUES:[Lg/e/a/a/e/o$a;

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

.method public static valueOf(Ljava/lang/String;)Lg/e/a/a/e/o$a;
    .locals 1

    .line 1
    const-class v0, Lg/e/a/a/e/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/e/a/a/e/o$a;

    return-object p0
.end method

.method public static values()[Lg/e/a/a/e/o$a;
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/e/o$a;->$VALUES:[Lg/e/a/a/e/o$a;

    invoke-virtual {v0}, [Lg/e/a/a/e/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/e/a/a/e/o$a;

    return-object v0
.end method
