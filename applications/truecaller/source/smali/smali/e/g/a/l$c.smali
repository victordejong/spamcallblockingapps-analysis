.class public abstract enum Le/g/a/l$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/g/a/l$c;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Le/g/a/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/g/a/l$c;

.field public static final enum b:Le/g/a/l$c;

.field public static final enum c:Le/g/a/l$c;

.field public static final synthetic d:[Le/g/a/l$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/g/a/l$c$a;

    const-string v1, "RANDOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/g/a/l$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/g/a/l$c;->a:Le/g/a/l$c;

    .line 2
    new-instance v1, Le/g/a/l$c$b;

    const-string v3, "DETERMINISTIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/g/a/l$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/g/a/l$c;->b:Le/g/a/l$c;

    .line 3
    new-instance v3, Le/g/a/l$c$c;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/g/a/l$c$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/g/a/l$c;->c:Le/g/a/l$c;

    const/4 v5, 0x3

    new-array v5, v5, [Le/g/a/l$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le/g/a/l$c;->d:[Le/g/a/l$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILe/g/a/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/g/a/l$c;
    .locals 1

    .line 1
    const-class v0, Le/g/a/l$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/g/a/l$c;

    return-object p0
.end method

.method public static values()[Le/g/a/l$c;
    .locals 1

    .line 1
    sget-object v0, Le/g/a/l$c;->d:[Le/g/a/l$c;

    invoke-virtual {v0}, [Le/g/a/l$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/g/a/l$c;

    return-object v0
.end method
