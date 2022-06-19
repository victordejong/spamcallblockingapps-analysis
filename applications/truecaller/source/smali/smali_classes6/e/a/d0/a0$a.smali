.class public final enum Le/a/d0/a0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/d0/a0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Le/a/d0/a0$a;

.field public static final enum d:Le/a/d0/a0$a;

.field public static final enum e:Le/a/d0/a0$a;

.field public static final enum f:Le/a/d0/a0$a;

.field public static final enum g:Le/a/d0/a0$a;

.field public static final enum h:Le/a/d0/a0$a;

.field public static final enum i:Le/a/d0/a0$a;

.field public static final enum j:Le/a/d0/a0$a;

.field public static final synthetic k:[Le/a/d0/a0$a;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Le/a/d0/a0$a;

    new-instance v1, Le/a/d0/a0$a;

    const-string v2, "SEARCHING"

    const/4 v3, 0x0

    const-string v4, "Searching"

    .line 1
    invoke-direct {v1, v2, v3, v3, v4}, Le/a/d0/a0$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Le/a/d0/a0$a;->c:Le/a/d0/a0$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/d0/a0$a;

    const-string v2, "REQUEST_FAILED"

    const/4 v3, 0x1

    const-string v4, "RequestFailed"

    .line 2
    invoke-direct {v1, v2, v3, v3, v4}, Le/a/d0/a0$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Le/a/d0/a0$a;->d:Le/a/d0/a0$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/d0/a0$a;

    const-string v2, "BACKEND_MISS"

    const/4 v3, 0x2

    const-string v4, "BackendMiss"

    .line 3
    invoke-direct {v1, v2, v3, v3, v4}, Le/a/d0/a0$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Le/a/d0/a0$a;->e:Le/a/d0/a0$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/d0/a0$a;

    const-string v2, "CACHED_MISS"

    const/4 v3, 0x3

    const-string v4, "CachedMiss"

    .line 4
    invoke-direct {v1, v2, v3, v3, v4}, Le/a/d0/a0$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Le/a/d0/a0$a;->f:Le/a/d0/a0$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/d0/a0$a;

    const-string v2, "PUSH"

    const/4 v3, 0x4

    const-string v4, "Push"

    .line 5
    invoke-direct {v1, v2, v3, v3, v4}, Le/a/d0/a0$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Le/a/d0/a0$a;->g:Le/a/d0/a0$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/d0/a0$a;

    const-string v2, "CACHED_HIT"

    const/4 v3, 0x5

    const-string v4, "CachedHit"

    .line 6
    invoke-direct {v1, v2, v3, v3, v4}, Le/a/d0/a0$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Le/a/d0/a0$a;->h:Le/a/d0/a0$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/d0/a0$a;

    const-string v2, "BACKEND_HIT"

    const/4 v3, 0x6

    const-string v4, "BackendHit"

    .line 7
    invoke-direct {v1, v2, v3, v3, v4}, Le/a/d0/a0$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Le/a/d0/a0$a;->i:Le/a/d0/a0$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/d0/a0$a;

    const-string v2, "PB"

    const/4 v3, 0x7

    const-string v4, "Phonebook"

    .line 8
    invoke-direct {v1, v2, v3, v3, v4}, Le/a/d0/a0$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Le/a/d0/a0$a;->j:Le/a/d0/a0$a;

    aput-object v1, v0, v3

    sput-object v0, Le/a/d0/a0$a;->k:[Le/a/d0/a0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Le/a/d0/a0$a;->a:I

    iput-object p4, p0, Le/a/d0/a0$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/d0/a0$a;
    .locals 1

    const-class v0, Le/a/d0/a0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/d0/a0$a;

    return-object p0
.end method

.method public static values()[Le/a/d0/a0$a;
    .locals 1

    sget-object v0, Le/a/d0/a0$a;->k:[Le/a/d0/a0$a;

    invoke-virtual {v0}, [Le/a/d0/a0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/d0/a0$a;

    return-object v0
.end method
