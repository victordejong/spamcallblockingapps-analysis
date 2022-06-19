.class public final enum Le/a/d/a/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/d/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Le/a/d/a/d;

.field public static final c:Le/a/d/a/d$a;


# instance fields
.field public final a:Le/a/d/v/l/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Le/a/d/a/d;

    new-instance v1, Le/a/d/a/d;

    .line 1
    sget-object v2, Le/a/d/v/l/c$a;->b:Le/a/d/v/l/c$a;

    const-string v3, "Connecting"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/d;-><init>(Ljava/lang/String;ILe/a/d/v/l/c;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/d;

    .line 2
    sget-object v2, Le/a/d/v/l/c$d;->b:Le/a/d/v/l/c$d;

    const-string v3, "Ringing"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/d;-><init>(Ljava/lang/String;ILe/a/d/v/l/c;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/d;

    .line 3
    sget-object v2, Le/a/d/v/l/c$c;->b:Le/a/d/v/l/c$c;

    const-string v3, "Ongoing"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/d;-><init>(Ljava/lang/String;ILe/a/d/v/l/c;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/d;

    .line 4
    sget-object v2, Le/a/d/v/l/c$b$e;->b:Le/a/d/v/l/c$b$e;

    const-string v3, "EndedInviteRejected"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/d;-><init>(Ljava/lang/String;ILe/a/d/v/l/c;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/d;

    .line 5
    sget-object v2, Le/a/d/v/l/c$b$h;->b:Le/a/d/v/l/c$b$h;

    const-string v3, "EndedOffline"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/d;-><init>(Ljava/lang/String;ILe/a/d/v/l/c;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/d;

    .line 6
    sget-object v2, Le/a/d/v/l/c$b$g;->b:Le/a/d/v/l/c$b$g;

    const-string v3, "EndedNoAnswer"

    const/4 v4, 0x5

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/d;-><init>(Ljava/lang/String;ILe/a/d/v/l/c;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/d;

    .line 7
    sget-object v2, Le/a/d/v/l/c$b$f;->b:Le/a/d/v/l/c$b$f;

    const-string v3, "EndedLeft"

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/d;-><init>(Ljava/lang/String;ILe/a/d/v/l/c;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/d;

    .line 8
    sget-object v2, Le/a/d/v/l/c$b$d;->b:Le/a/d/v/l/c$b$d;

    const-string v3, "EndedInviteCanceled"

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/d;-><init>(Ljava/lang/String;ILe/a/d/v/l/c;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/d;

    .line 9
    sget-object v2, Le/a/d/v/l/c$b$a;->b:Le/a/d/v/l/c$b$a;

    const-string v3, "EndedBusy"

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/d;-><init>(Ljava/lang/String;ILe/a/d/v/l/c;)V

    aput-object v1, v0, v4

    sput-object v0, Le/a/d/a/d;->b:[Le/a/d/a/d;

    new-instance v0, Le/a/d/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/d/a/d$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/d/a/d;->c:Le/a/d/a/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILe/a/d/v/l/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/v/l/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Le/a/d/a/d;->a:Le/a/d/v/l/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/d/a/d;
    .locals 1

    const-class v0, Le/a/d/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/d/a/d;

    return-object p0
.end method

.method public static values()[Le/a/d/a/d;
    .locals 1

    sget-object v0, Le/a/d/a/d;->b:[Le/a/d/a/d;

    invoke-virtual {v0}, [Le/a/d/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/d/a/d;

    return-object v0
.end method
