.class public final enum Le/k/a/b/q;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/k/a/b/a0/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/b/q;",
        ">;",
        "Le/k/a/b/a0/h;"
    }
.end annotation


# static fields
.field public static final enum c:Le/k/a/b/q;

.field public static final enum d:Le/k/a/b/q;

.field public static final enum e:Le/k/a/b/q;

.field public static final synthetic f:[Le/k/a/b/q;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/k/a/b/q;

    const-string v1, "DUPLICATE_PROPERTIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le/k/a/b/q;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/k/a/b/q;->c:Le/k/a/b/q;

    .line 2
    new-instance v1, Le/k/a/b/q;

    const-string v3, "SCALARS_AS_OBJECTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Le/k/a/b/q;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Le/k/a/b/q;->d:Le/k/a/b/q;

    .line 3
    new-instance v3, Le/k/a/b/q;

    const-string v5, "UNTYPED_SCALARS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Le/k/a/b/q;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/k/a/b/q;->e:Le/k/a/b/q;

    const/4 v5, 0x3

    new-array v5, v5, [Le/k/a/b/q;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le/k/a/b/q;->f:[Le/k/a/b/q;

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
    iput-boolean p3, p0, Le/k/a/b/q;->a:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Le/k/a/b/q;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/k/a/b/q;
    .locals 1

    .line 1
    const-class v0, Le/k/a/b/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/b/q;

    return-object p0
.end method

.method public static values()[Le/k/a/b/q;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/q;->f:[Le/k/a/b/q;

    invoke-virtual {v0}, [Le/k/a/b/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/b/q;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/b/q;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/b/q;->a:Z

    return v0
.end method
