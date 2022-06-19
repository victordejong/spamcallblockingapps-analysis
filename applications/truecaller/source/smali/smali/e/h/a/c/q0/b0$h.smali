.class public final enum Le/h/a/c/q0/b0$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/q0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/h/a/c/q0/b0$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/h/a/c/q0/b0$h;

.field public static final enum b:Le/h/a/c/q0/b0$h;

.field public static final enum c:Le/h/a/c/q0/b0$h;

.field public static final synthetic d:[Le/h/a/c/q0/b0$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/h/a/c/q0/b0$h;

    const-string v1, "DISCARDED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Le/h/a/c/q0/b0$h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/h/a/c/q0/b0$h;->a:Le/h/a/c/q0/b0$h;

    .line 2
    new-instance v1, Le/h/a/c/q0/b0$h;

    const-string v3, "SUSPENDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Le/h/a/c/q0/b0$h;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/h/a/c/q0/b0$h;->b:Le/h/a/c/q0/b0$h;

    .line 3
    new-instance v3, Le/h/a/c/q0/b0$h;

    const-string v5, "RESUMED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Le/h/a/c/q0/b0$h;-><init>(Ljava/lang/String;II)V

    sput-object v3, Le/h/a/c/q0/b0$h;->c:Le/h/a/c/q0/b0$h;

    const/4 v5, 0x3

    new-array v5, v5, [Le/h/a/c/q0/b0$h;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le/h/a/c/q0/b0$h;->d:[Le/h/a/c/q0/b0$h;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/h/a/c/q0/b0$h;
    .locals 1

    .line 1
    const-class v0, Le/h/a/c/q0/b0$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/h/a/c/q0/b0$h;

    return-object p0
.end method

.method public static values()[Le/h/a/c/q0/b0$h;
    .locals 1

    .line 1
    sget-object v0, Le/h/a/c/q0/b0$h;->d:[Le/h/a/c/q0/b0$h;

    invoke-virtual {v0}, [Le/h/a/c/q0/b0$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/h/a/c/q0/b0$h;

    return-object v0
.end method
