.class public final enum Lg/k/b/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/k/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/k/b/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/k/b/a$d;

.field public static final enum DEBUG:Lg/k/b/a$d;

.field public static final enum ERROR:Lg/k/b/a$d;

.field public static final enum INFO:Lg/k/b/a$d;

.field public static final enum VERBOSE:Lg/k/b/a$d;

.field public static final enum WARN:Lg/k/b/a$d;


# instance fields
.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lg/k/b/a$d;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lg/k/b/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/k/b/a$d;->VERBOSE:Lg/k/b/a$d;

    .line 2
    new-instance v1, Lg/k/b/a$d;

    const-string v4, "DEBUG"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lg/k/b/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/k/b/a$d;->DEBUG:Lg/k/b/a$d;

    .line 3
    new-instance v4, Lg/k/b/a$d;

    const-string v7, "INFO"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lg/k/b/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lg/k/b/a$d;->INFO:Lg/k/b/a$d;

    .line 4
    new-instance v7, Lg/k/b/a$d;

    const-string v9, "WARN"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lg/k/b/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lg/k/b/a$d;->WARN:Lg/k/b/a$d;

    .line 5
    new-instance v9, Lg/k/b/a$d;

    const-string v11, "ERROR"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lg/k/b/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lg/k/b/a$d;->ERROR:Lg/k/b/a$d;

    new-array v10, v10, [Lg/k/b/a$d;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v3

    aput-object v7, v10, v6

    aput-object v9, v10, v8

    .line 6
    sput-object v10, Lg/k/b/a$d;->$VALUES:[Lg/k/b/a$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lg/k/b/a$d;->priority:I

    return-void
.end method

.method static synthetic access$000(Lg/k/b/a$d;)I
    .locals 0

    .line 1
    iget p0, p0, Lg/k/b/a$d;->priority:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/k/b/a$d;
    .locals 1

    .line 1
    const-class v0, Lg/k/b/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/k/b/a$d;

    return-object p0
.end method

.method public static values()[Lg/k/b/a$d;
    .locals 1

    .line 1
    sget-object v0, Lg/k/b/a$d;->$VALUES:[Lg/k/b/a$d;

    invoke-virtual {v0}, [Lg/k/b/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/k/b/a$d;

    return-object v0
.end method
