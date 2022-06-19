.class public final enum Le/a/d/a/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d/a/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/d/a/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Le/a/d/a/h;

.field public static final c:Le/a/d/a/h$a;


# instance fields
.field public final a:Le/a/d/v/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Le/a/d/a/h;

    new-instance v1, Le/a/d/a/h;

    .line 1
    sget-object v2, Le/a/d/v/h$a;->b:Le/a/d/v/h$a;

    const-string v3, "Connecting"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/h;-><init>(Ljava/lang/String;ILe/a/d/v/h;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/h;

    .line 2
    sget-object v2, Le/a/d/v/h$c;->b:Le/a/d/v/h$c;

    const-string v3, "Ongoing"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/h;-><init>(Ljava/lang/String;ILe/a/d/v/h;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/h;

    .line 3
    sget-object v2, Le/a/d/v/h$b$h;->b:Le/a/d/v/h$b$h;

    const-string v3, "PressedEnd"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/h;-><init>(Ljava/lang/String;ILe/a/d/v/h;)V

    aput-object v1, v0, v4

    sput-object v0, Le/a/d/a/h;->b:[Le/a/d/a/h;

    new-instance v0, Le/a/d/a/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/d/a/h$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/d/a/h;->c:Le/a/d/a/h$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILe/a/d/v/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/v/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Le/a/d/a/h;->a:Le/a/d/v/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/d/a/h;
    .locals 1

    const-class v0, Le/a/d/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/d/a/h;

    return-object p0
.end method

.method public static values()[Le/a/d/a/h;
    .locals 1

    sget-object v0, Le/a/d/a/h;->b:[Le/a/d/a/h;

    invoke-virtual {v0}, [Le/a/d/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/d/a/h;

    return-object v0
.end method
