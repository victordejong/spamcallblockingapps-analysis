.class public final enum Le/m/f/a/g$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/f/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/f/a/g$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/f/a/g$b;

.field public static final enum b:Le/m/f/a/g$b;

.field public static final enum c:Le/m/f/a/g$b;

.field public static final synthetic d:[Le/m/f/a/g$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/m/f/a/g$b;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/f/a/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/f/a/g$b;->a:Le/m/f/a/g$b;

    new-instance v1, Le/m/f/a/g$b;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/f/a/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/f/a/g$b;->b:Le/m/f/a/g$b;

    new-instance v3, Le/m/f/a/g$b;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/m/f/a/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/m/f/a/g$b;->c:Le/m/f/a/g$b;

    const/4 v5, 0x3

    new-array v5, v5, [Le/m/f/a/g$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Le/m/f/a/g$b;->d:[Le/m/f/a/g$b;

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

.method public static valueOf(Ljava/lang/String;)Le/m/f/a/g$b;
    .locals 1

    .line 1
    const-class v0, Le/m/f/a/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/f/a/g$b;

    return-object p0
.end method

.method public static values()[Le/m/f/a/g$b;
    .locals 1

    .line 1
    sget-object v0, Le/m/f/a/g$b;->d:[Le/m/f/a/g$b;

    invoke-virtual {v0}, [Le/m/f/a/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/f/a/g$b;

    return-object v0
.end method
