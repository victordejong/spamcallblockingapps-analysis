.class public final enum Le/a/q2/t$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/q2/t$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/a/q2/t$a;

.field public static final enum c:Le/a/q2/t$a;

.field public static final enum d:Le/a/q2/t$a;

.field public static final synthetic e:[Le/a/q2/t$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Le/a/q2/t$a;

    new-instance v1, Le/a/q2/t$a;

    const-string v2, "ACTIVITY"

    const/4 v3, 0x0

    const-string v4, "window"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Le/a/q2/t$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le/a/q2/t$a;->b:Le/a/q2/t$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/q2/t$a;

    const-string v2, "NOTIFICATION"

    const/4 v3, 0x1

    const-string v4, "notification"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Le/a/q2/t$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le/a/q2/t$a;->c:Le/a/q2/t$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/q2/t$a;

    const-string v2, "WIDGET"

    const/4 v3, 0x2

    const-string v4, "widget"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Le/a/q2/t$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le/a/q2/t$a;->d:Le/a/q2/t$a;

    aput-object v1, v0, v3

    sput-object v0, Le/a/q2/t$a;->e:[Le/a/q2/t$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Le/a/q2/t$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/q2/t$a;
    .locals 1

    const-class v0, Le/a/q2/t$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/q2/t$a;

    return-object p0
.end method

.method public static values()[Le/a/q2/t$a;
    .locals 1

    sget-object v0, Le/a/q2/t$a;->e:[Le/a/q2/t$a;

    invoke-virtual {v0}, [Le/a/q2/t$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/q2/t$a;

    return-object v0
.end method
