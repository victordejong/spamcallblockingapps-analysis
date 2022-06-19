.class public final enum Le/a/d/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/d/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Le/a/d/a/c;

.field public static final c:Le/a/d/a/c$a;


# instance fields
.field public final a:Le/a/d/c0/x1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Le/a/d/a/c;

    new-instance v1, Le/a/d/a/c;

    .line 1
    sget-object v2, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    const-string v3, "Earpiece"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/c;-><init>(Ljava/lang/String;ILe/a/d/c0/x1/a;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/c;

    .line 2
    sget-object v2, Le/a/d/c0/x1/a$d;->a:Le/a/d/c0/x1/a$d;

    const-string v3, "WiredHeadset"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/c;-><init>(Ljava/lang/String;ILe/a/d/c0/x1/a;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/c;

    .line 3
    sget-object v2, Le/a/d/c0/x1/a$c;->a:Le/a/d/c0/x1/a$c;

    const-string v3, "Speaker"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/c;-><init>(Ljava/lang/String;ILe/a/d/c0/x1/a;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/c;

    .line 4
    new-instance v2, Le/a/d/c0/x1/a$a;

    new-instance v3, Le/a/p5/r0/a;

    const-string v4, "Test Bluettooth"

    const-string v5, "abcd"

    invoke-direct {v3, v4, v5}, Le/a/p5/r0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Le/a/d/c0/x1/a$a;-><init>(Le/a/p5/r0/a;)V

    const-string v3, "Bluetooth"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/c;-><init>(Ljava/lang/String;ILe/a/d/c0/x1/a;)V

    aput-object v1, v0, v4

    sput-object v0, Le/a/d/a/c;->b:[Le/a/d/a/c;

    new-instance v0, Le/a/d/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/d/a/c$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/d/a/c;->c:Le/a/d/a/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILe/a/d/c0/x1/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/x1/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Le/a/d/a/c;->a:Le/a/d/c0/x1/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/d/a/c;
    .locals 1

    const-class v0, Le/a/d/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/d/a/c;

    return-object p0
.end method

.method public static values()[Le/a/d/a/c;
    .locals 1

    sget-object v0, Le/a/d/a/c;->b:[Le/a/d/a/c;

    invoke-virtual {v0}, [Le/a/d/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/d/a/c;

    return-object v0
.end method
