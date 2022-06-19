.class public final enum Le/k/a/b/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/k/a/b/a0/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/b/e$a;",
        ">;",
        "Le/k/a/b/a0/h;"
    }
.end annotation


# static fields
.field public static final enum b:Le/k/a/b/e$a;

.field public static final enum c:Le/k/a/b/e$a;

.field public static final enum d:Le/k/a/b/e$a;

.field public static final enum e:Le/k/a/b/e$a;

.field public static final synthetic f:[Le/k/a/b/e$a;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le/k/a/b/e$a;

    const-string v1, "INTERN_FIELD_NAMES"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Le/k/a/b/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/k/a/b/e$a;->b:Le/k/a/b/e$a;

    .line 2
    new-instance v1, Le/k/a/b/e$a;

    const-string v4, "CANONICALIZE_FIELD_NAMES"

    invoke-direct {v1, v4, v3, v3}, Le/k/a/b/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Le/k/a/b/e$a;->c:Le/k/a/b/e$a;

    .line 3
    new-instance v4, Le/k/a/b/e$a;

    const-string v5, "FAIL_ON_SYMBOL_HASH_OVERFLOW"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Le/k/a/b/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/b/e$a;->d:Le/k/a/b/e$a;

    .line 4
    new-instance v5, Le/k/a/b/e$a;

    const-string v7, "USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3}, Le/k/a/b/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Le/k/a/b/e$a;->e:Le/k/a/b/e$a;

    const/4 v7, 0x4

    new-array v7, v7, [Le/k/a/b/e$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Le/k/a/b/e$a;->f:[Le/k/a/b/e$a;

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

    iput-boolean p3, p0, Le/k/a/b/e$a;->a:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/k/a/b/e$a;
    .locals 1

    .line 1
    const-class v0, Le/k/a/b/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/b/e$a;

    return-object p0
.end method

.method public static values()[Le/k/a/b/e$a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/e$a;->f:[Le/k/a/b/e$a;

    invoke-virtual {v0}, [Le/k/a/b/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/b/e$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/b/e$a;->a:Z

    return v0
.end method

.method public d(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/b/e$a;->a()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
