.class public final enum Le/a/k/a/g/m0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/k/a/g/m0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/k/a/g/m0;

.field public static final enum b:Le/a/k/a/g/m0;

.field public static final enum c:Le/a/k/a/g/m0;

.field public static final enum d:Le/a/k/a/g/m0;

.field public static final synthetic e:[Le/a/k/a/g/m0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Le/a/k/a/g/m0;

    new-instance v1, Le/a/k/a/g/m0;

    const-string v2, "ReadyToRecord"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/k/a/g/m0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/k/a/g/m0;->a:Le/a/k/a/g/m0;

    aput-object v1, v0, v3

    new-instance v1, Le/a/k/a/g/m0;

    const-string v2, "Recording"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Le/a/k/a/g/m0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/k/a/g/m0;->b:Le/a/k/a/g/m0;

    aput-object v1, v0, v3

    new-instance v1, Le/a/k/a/g/m0;

    const-string v2, "Playback"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Le/a/k/a/g/m0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/k/a/g/m0;->c:Le/a/k/a/g/m0;

    aput-object v1, v0, v3

    new-instance v1, Le/a/k/a/g/m0;

    const-string v2, "Edit"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Le/a/k/a/g/m0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/k/a/g/m0;->d:Le/a/k/a/g/m0;

    aput-object v1, v0, v3

    sput-object v0, Le/a/k/a/g/m0;->e:[Le/a/k/a/g/m0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Le/a/k/a/g/m0;
    .locals 1

    const-class v0, Le/a/k/a/g/m0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/k/a/g/m0;

    return-object p0
.end method

.method public static values()[Le/a/k/a/g/m0;
    .locals 1

    sget-object v0, Le/a/k/a/g/m0;->e:[Le/a/k/a/g/m0;

    invoke-virtual {v0}, [Le/a/k/a/g/m0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/k/a/g/m0;

    return-object v0
.end method
