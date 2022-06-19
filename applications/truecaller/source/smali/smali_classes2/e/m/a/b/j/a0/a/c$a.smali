.class public final enum Le/m/a/b/j/a0/a/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/k/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/b/j/a0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/a/b/j/a0/a/c$a;",
        ">;",
        "Le/m/d/r/k/e;"
    }
.end annotation


# static fields
.field public static final enum b:Le/m/a/b/j/a0/a/c$a;

.field public static final enum c:Le/m/a/b/j/a0/a/c$a;

.field public static final enum d:Le/m/a/b/j/a0/a/c$a;

.field public static final enum e:Le/m/a/b/j/a0/a/c$a;

.field public static final enum f:Le/m/a/b/j/a0/a/c$a;

.field public static final enum g:Le/m/a/b/j/a0/a/c$a;

.field public static final enum h:Le/m/a/b/j/a0/a/c$a;

.field public static final synthetic i:[Le/m/a/b/j/a0/a/c$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Le/m/a/b/j/a0/a/c$a;

    const-string v1, "REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le/m/a/b/j/a0/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/m/a/b/j/a0/a/c$a;->b:Le/m/a/b/j/a0/a/c$a;

    .line 2
    new-instance v1, Le/m/a/b/j/a0/a/c$a;

    const-string v3, "MESSAGE_TOO_OLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Le/m/a/b/j/a0/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/m/a/b/j/a0/a/c$a;->c:Le/m/a/b/j/a0/a/c$a;

    .line 3
    new-instance v3, Le/m/a/b/j/a0/a/c$a;

    const-string v5, "CACHE_FULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Le/m/a/b/j/a0/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Le/m/a/b/j/a0/a/c$a;->d:Le/m/a/b/j/a0/a/c$a;

    .line 4
    new-instance v5, Le/m/a/b/j/a0/a/c$a;

    const-string v7, "PAYLOAD_TOO_BIG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Le/m/a/b/j/a0/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Le/m/a/b/j/a0/a/c$a;->e:Le/m/a/b/j/a0/a/c$a;

    .line 5
    new-instance v7, Le/m/a/b/j/a0/a/c$a;

    const-string v9, "MAX_RETRIES_REACHED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Le/m/a/b/j/a0/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Le/m/a/b/j/a0/a/c$a;->f:Le/m/a/b/j/a0/a/c$a;

    .line 6
    new-instance v9, Le/m/a/b/j/a0/a/c$a;

    const-string v11, "INVALID_PAYLOD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Le/m/a/b/j/a0/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Le/m/a/b/j/a0/a/c$a;->g:Le/m/a/b/j/a0/a/c$a;

    .line 7
    new-instance v11, Le/m/a/b/j/a0/a/c$a;

    const-string v13, "SERVER_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Le/m/a/b/j/a0/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Le/m/a/b/j/a0/a/c$a;->h:Le/m/a/b/j/a0/a/c$a;

    const/4 v13, 0x7

    new-array v13, v13, [Le/m/a/b/j/a0/a/c$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Le/m/a/b/j/a0/a/c$a;->i:[Le/m/a/b/j/a0/a/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Le/m/a/b/j/a0/a/c$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/m/a/b/j/a0/a/c$a;
    .locals 1

    .line 1
    const-class v0, Le/m/a/b/j/a0/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/a/b/j/a0/a/c$a;

    return-object p0
.end method

.method public static values()[Le/m/a/b/j/a0/a/c$a;
    .locals 1

    .line 1
    sget-object v0, Le/m/a/b/j/a0/a/c$a;->i:[Le/m/a/b/j/a0/a/c$a;

    invoke-virtual {v0}, [Le/m/a/b/j/a0/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/a/b/j/a0/a/c$a;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/b/j/a0/a/c$a;->a:I

    return v0
.end method
