.class public final enum Le/i/b/v1/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/v1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/i/b/v1/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/i/b/v1/a$a;

.field public static final enum c:Le/i/b/v1/a$a;

.field public static final enum d:Le/i/b/v1/a$a;

.field public static final enum e:Le/i/b/v1/a$a;

.field public static final enum f:Le/i/b/v1/a$a;

.field public static final enum g:Le/i/b/v1/a$a;

.field public static final enum h:Le/i/b/v1/a$a;

.field public static final synthetic i:[Le/i/b/v1/a$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    new-array v1, v0, [Le/i/b/v1/a$a;

    new-instance v2, Le/i/b/v1/a$a;

    const-string v3, "WIRED"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1
    invoke-direct {v2, v3, v4, v5}, Le/i/b/v1/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Le/i/b/v1/a$a;->b:Le/i/b/v1/a$a;

    aput-object v2, v1, v4

    new-instance v2, Le/i/b/v1/a$a;

    const-string v3, "WIFI"

    const/4 v4, 0x2

    .line 2
    invoke-direct {v2, v3, v5, v4}, Le/i/b/v1/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Le/i/b/v1/a$a;->c:Le/i/b/v1/a$a;

    aput-object v2, v1, v5

    new-instance v2, Le/i/b/v1/a$a;

    const-string v3, "CELLULAR_UNKNOWN"

    const/4 v5, 0x3

    .line 3
    invoke-direct {v2, v3, v4, v5}, Le/i/b/v1/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Le/i/b/v1/a$a;->d:Le/i/b/v1/a$a;

    aput-object v2, v1, v4

    new-instance v2, Le/i/b/v1/a$a;

    const-string v3, "CELLULAR_2G"

    const/4 v4, 0x4

    .line 4
    invoke-direct {v2, v3, v5, v4}, Le/i/b/v1/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Le/i/b/v1/a$a;->e:Le/i/b/v1/a$a;

    aput-object v2, v1, v5

    new-instance v2, Le/i/b/v1/a$a;

    const-string v3, "CELLULAR_3G"

    const/4 v5, 0x5

    .line 5
    invoke-direct {v2, v3, v4, v5}, Le/i/b/v1/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Le/i/b/v1/a$a;->f:Le/i/b/v1/a$a;

    aput-object v2, v1, v4

    new-instance v2, Le/i/b/v1/a$a;

    const-string v3, "CELLULAR_4G"

    const/4 v4, 0x6

    .line 6
    invoke-direct {v2, v3, v5, v4}, Le/i/b/v1/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Le/i/b/v1/a$a;->g:Le/i/b/v1/a$a;

    aput-object v2, v1, v5

    new-instance v2, Le/i/b/v1/a$a;

    const-string v3, "CELLULAR_5G"

    .line 7
    invoke-direct {v2, v3, v4, v0}, Le/i/b/v1/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Le/i/b/v1/a$a;->h:Le/i/b/v1/a$a;

    aput-object v2, v1, v4

    sput-object v1, Le/i/b/v1/a$a;->i:[Le/i/b/v1/a$a;

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

    iput p3, p0, Le/i/b/v1/a$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/i/b/v1/a$a;
    .locals 1

    const-class v0, Le/i/b/v1/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/i/b/v1/a$a;

    return-object p0
.end method

.method public static values()[Le/i/b/v1/a$a;
    .locals 1

    sget-object v0, Le/i/b/v1/a$a;->i:[Le/i/b/v1/a$a;

    invoke-virtual {v0}, [Le/i/b/v1/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/i/b/v1/a$a;

    return-object v0
.end method
