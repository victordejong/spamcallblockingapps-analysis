.class public final enum Le/i/b/d2/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/i/b/d2/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/i/b/d2/a;

.field public static final enum c:Le/i/b/d2/a;

.field public static final enum d:Le/i/b/d2/a;

.field public static final enum e:Le/i/b/d2/a;

.field public static final enum f:Le/i/b/d2/a;

.field public static final enum g:Le/i/b/d2/a;

.field public static final enum h:Le/i/b/d2/a;

.field public static final enum i:Le/i/b/d2/a;

.field public static final synthetic j:[Le/i/b/d2/a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Le/i/b/d2/a;

    new-instance v1, Le/i/b/d2/a;

    const-string v2, "FALLBACK"

    const/4 v3, 0x0

    const/16 v4, 0xeb

    .line 1
    invoke-direct {v1, v2, v3, v4}, Le/i/b/d2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/i/b/d2/a;->b:Le/i/b/d2/a;

    aput-object v1, v0, v3

    new-instance v1, Le/i/b/d2/a;

    const-string v2, "STANDALONE"

    const/4 v3, 0x1

    const/16 v4, 0x127

    .line 2
    invoke-direct {v1, v2, v3, v4}, Le/i/b/d2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/i/b/d2/a;->c:Le/i/b/d2/a;

    aput-object v1, v0, v3

    new-instance v1, Le/i/b/d2/a;

    const-string v2, "IN_HOUSE"

    const/4 v3, 0x2

    const/16 v4, 0x128

    .line 3
    invoke-direct {v1, v2, v3, v4}, Le/i/b/d2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/i/b/d2/a;->d:Le/i/b/d2/a;

    aput-object v1, v0, v3

    new-instance v1, Le/i/b/d2/a;

    const-string v2, "MOPUB_MEDIATION"

    const/4 v3, 0x3

    const/16 v4, 0x129

    .line 4
    invoke-direct {v1, v2, v3, v4}, Le/i/b/d2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/i/b/d2/a;->e:Le/i/b/d2/a;

    aput-object v1, v0, v3

    new-instance v1, Le/i/b/d2/a;

    const-string v2, "ADMOB_MEDIATION"

    const/4 v3, 0x4

    const/16 v4, 0x12a

    .line 5
    invoke-direct {v1, v2, v3, v4}, Le/i/b/d2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/i/b/d2/a;->f:Le/i/b/d2/a;

    aput-object v1, v0, v3

    new-instance v1, Le/i/b/d2/a;

    const-string v2, "MOPUB_APP_BIDDING"

    const/4 v3, 0x5

    const/16 v4, 0x12b

    .line 6
    invoke-direct {v1, v2, v3, v4}, Le/i/b/d2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/i/b/d2/a;->g:Le/i/b/d2/a;

    aput-object v1, v0, v3

    new-instance v1, Le/i/b/d2/a;

    const-string v2, "GAM_APP_BIDDING"

    const/4 v3, 0x6

    const/16 v4, 0x12c

    .line 7
    invoke-direct {v1, v2, v3, v4}, Le/i/b/d2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/i/b/d2/a;->h:Le/i/b/d2/a;

    aput-object v1, v0, v3

    new-instance v1, Le/i/b/d2/a;

    const-string v2, "CUSTOM_APP_BIDDING"

    const/4 v3, 0x7

    const/16 v4, 0x12d

    .line 8
    invoke-direct {v1, v2, v3, v4}, Le/i/b/d2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/i/b/d2/a;->i:Le/i/b/d2/a;

    aput-object v1, v0, v3

    sput-object v0, Le/i/b/d2/a;->j:[Le/i/b/d2/a;

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

    iput p3, p0, Le/i/b/d2/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/i/b/d2/a;
    .locals 1

    const-class v0, Le/i/b/d2/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/i/b/d2/a;

    return-object p0
.end method

.method public static values()[Le/i/b/d2/a;
    .locals 1

    sget-object v0, Le/i/b/d2/a;->j:[Le/i/b/d2/a;

    invoke-virtual {v0}, [Le/i/b/d2/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/i/b/d2/a;

    return-object v0
.end method
