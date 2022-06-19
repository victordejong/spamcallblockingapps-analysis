.class public final enum Le/a/d/a/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d/a/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/d/a/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Le/a/d/a/k;

.field public static final c:Le/a/d/a/k$a;


# instance fields
.field public final a:Le/a/d/w/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Le/a/d/a/k;

    new-instance v1, Le/a/d/a/k;

    .line 1
    sget-object v2, Le/a/d/w/h$a;->b:Le/a/d/w/h$a;

    const-string v3, "Connecting"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/k;-><init>(Ljava/lang/String;ILe/a/d/w/h;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/k;

    .line 2
    sget-object v2, Le/a/d/w/h$c;->b:Le/a/d/w/h$c;

    const-string v3, "WaitingAnswer"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/k;-><init>(Ljava/lang/String;ILe/a/d/w/h;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/k;

    .line 3
    sget-object v2, Le/a/d/w/h$b$e;->b:Le/a/d/w/h$b$e;

    const-string v3, "Cancelled"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/k;-><init>(Ljava/lang/String;ILe/a/d/w/h;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/k;

    .line 4
    sget-object v2, Le/a/d/w/h$b$j;->b:Le/a/d/w/h$b$j;

    const-string v3, "NoAnswer"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/k;-><init>(Ljava/lang/String;ILe/a/d/w/h;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/k;

    .line 5
    sget-object v2, Le/a/d/w/h$b$f;->b:Le/a/d/w/h$b$f;

    const-string v3, "CantSetRingingAttribute"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/k;-><init>(Ljava/lang/String;ILe/a/d/w/h;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/k;

    .line 6
    sget-object v2, Le/a/d/w/h$b$h;->b:Le/a/d/w/h$b$h;

    const-string v3, "InvitationNotCompleted"

    const/4 v4, 0x5

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/k;-><init>(Ljava/lang/String;ILe/a/d/w/h;)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/d/a/k;

    .line 7
    sget-object v2, Le/a/d/w/h$b$k;->b:Le/a/d/w/h$b$k;

    const-string v3, "OnAnotherCall"

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4, v2}, Le/a/d/a/k;-><init>(Ljava/lang/String;ILe/a/d/w/h;)V

    aput-object v1, v0, v4

    sput-object v0, Le/a/d/a/k;->b:[Le/a/d/a/k;

    new-instance v0, Le/a/d/a/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/d/a/k$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/d/a/k;->c:Le/a/d/a/k$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILe/a/d/w/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/w/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Le/a/d/a/k;->a:Le/a/d/w/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/d/a/k;
    .locals 1

    const-class v0, Le/a/d/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/d/a/k;

    return-object p0
.end method

.method public static values()[Le/a/d/a/k;
    .locals 1

    sget-object v0, Le/a/d/a/k;->b:[Le/a/d/a/k;

    invoke-virtual {v0}, [Le/a/d/a/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/d/a/k;

    return-object v0
.end method
