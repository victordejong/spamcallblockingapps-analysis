.class public final enum Le/m/d/r/k/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/r/k/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/d/r/k/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/d/r/k/f$a;

.field public static final enum b:Le/m/d/r/k/f$a;

.field public static final enum c:Le/m/d/r/k/f$a;

.field public static final synthetic d:[Le/m/d/r/k/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/m/d/r/k/f$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/d/r/k/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/d/r/k/f$a;->a:Le/m/d/r/k/f$a;

    .line 2
    new-instance v1, Le/m/d/r/k/f$a;

    const-string v3, "SIGNED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/d/r/k/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/d/r/k/f$a;->b:Le/m/d/r/k/f$a;

    .line 3
    new-instance v3, Le/m/d/r/k/f$a;

    const-string v5, "FIXED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/m/d/r/k/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/m/d/r/k/f$a;->c:Le/m/d/r/k/f$a;

    const/4 v5, 0x3

    new-array v5, v5, [Le/m/d/r/k/f$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le/m/d/r/k/f$a;->d:[Le/m/d/r/k/f$a;

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

.method public static valueOf(Ljava/lang/String;)Le/m/d/r/k/f$a;
    .locals 1

    .line 1
    const-class v0, Le/m/d/r/k/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/d/r/k/f$a;

    return-object p0
.end method

.method public static values()[Le/m/d/r/k/f$a;
    .locals 1

    .line 1
    sget-object v0, Le/m/d/r/k/f$a;->d:[Le/m/d/r/k/f$a;

    invoke-virtual {v0}, [Le/m/d/r/k/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/d/r/k/f$a;

    return-object v0
.end method
