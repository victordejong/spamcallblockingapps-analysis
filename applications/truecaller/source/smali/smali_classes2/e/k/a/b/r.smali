.class public final enum Le/k/a/b/r;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/k/a/b/a0/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/b/r;",
        ">;",
        "Le/k/a/b/a0/h;"
    }
.end annotation


# static fields
.field public static final enum c:Le/k/a/b/r;

.field public static final enum d:Le/k/a/b/r;

.field public static final synthetic e:[Le/k/a/b/r;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/k/a/b/r;

    const-string v1, "CAN_WRITE_BINARY_NATIVELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le/k/a/b/r;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/k/a/b/r;->c:Le/k/a/b/r;

    .line 2
    new-instance v1, Le/k/a/b/r;

    const-string v3, "CAN_WRITE_FORMATTED_NUMBERS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Le/k/a/b/r;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Le/k/a/b/r;->d:Le/k/a/b/r;

    const/4 v3, 0x2

    new-array v3, v3, [Le/k/a/b/r;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Le/k/a/b/r;->e:[Le/k/a/b/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Le/k/a/b/r;->a:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Le/k/a/b/r;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/k/a/b/r;
    .locals 1

    .line 1
    const-class v0, Le/k/a/b/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/b/r;

    return-object p0
.end method

.method public static values()[Le/k/a/b/r;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/r;->e:[Le/k/a/b/r;

    invoke-virtual {v0}, [Le/k/a/b/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/b/r;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/b/r;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/b/r;->a:Z

    return v0
.end method
