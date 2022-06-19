.class public final enum Le/k/a/c/j0/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/j0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/c/j0/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/k/a/c/j0/c$b;

.field public static final enum b:Le/k/a/c/j0/c$b;

.field public static final enum c:Le/k/a/c/j0/c$b;

.field public static final synthetic d:[Le/k/a/c/j0/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/k/a/c/j0/c$b;

    const-string v1, "ALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/k/a/c/j0/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/k/a/c/j0/c$b;->a:Le/k/a/c/j0/c$b;

    .line 2
    new-instance v1, Le/k/a/c/j0/c$b;

    const-string v3, "DENIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/k/a/c/j0/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/k/a/c/j0/c$b;->b:Le/k/a/c/j0/c$b;

    .line 3
    new-instance v3, Le/k/a/c/j0/c$b;

    const-string v5, "INDETERMINATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/k/a/c/j0/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/k/a/c/j0/c$b;->c:Le/k/a/c/j0/c$b;

    const/4 v5, 0x3

    new-array v5, v5, [Le/k/a/c/j0/c$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le/k/a/c/j0/c$b;->d:[Le/k/a/c/j0/c$b;

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

.method public static valueOf(Ljava/lang/String;)Le/k/a/c/j0/c$b;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/j0/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/c/j0/c$b;

    return-object p0
.end method

.method public static values()[Le/k/a/c/j0/c$b;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/j0/c$b;->d:[Le/k/a/c/j0/c$b;

    invoke-virtual {v0}, [Le/k/a/c/j0/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/c/j0/c$b;

    return-object v0
.end method
