.class public final enum Le/h/a/c/l0/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/l0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/h/a/c/l0/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/h/a/c/l0/b$b;

.field public static final enum c:Le/h/a/c/l0/b$b;

.field public static final enum d:Le/h/a/c/l0/b$b;

.field public static final enum e:Le/h/a/c/l0/b$b;

.field public static final enum f:Le/h/a/c/l0/b$b;

.field public static final enum g:Le/h/a/c/l0/b$b;

.field public static final enum h:Le/h/a/c/l0/b$b;

.field public static final synthetic i:[Le/h/a/c/l0/b$b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Le/h/a/c/l0/b$b;

    const-string v1, "EVENTS"

    const/4 v2, 0x0

    const-string v3, "events"

    invoke-direct {v0, v1, v2, v3}, Le/h/a/c/l0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/h/a/c/l0/b$b;->b:Le/h/a/c/l0/b$b;

    .line 2
    new-instance v1, Le/h/a/c/l0/b$b;

    const-string v3, "PROFILE_EVENTS"

    const/4 v4, 0x1

    const-string v5, "profileEvents"

    invoke-direct {v1, v3, v4, v5}, Le/h/a/c/l0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le/h/a/c/l0/b$b;->c:Le/h/a/c/l0/b$b;

    .line 3
    new-instance v3, Le/h/a/c/l0/b$b;

    const-string v5, "USER_PROFILES"

    const/4 v6, 0x2

    const-string v7, "userProfiles"

    invoke-direct {v3, v5, v6, v7}, Le/h/a/c/l0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Le/h/a/c/l0/b$b;->d:Le/h/a/c/l0/b$b;

    .line 4
    new-instance v5, Le/h/a/c/l0/b$b;

    const-string v7, "INBOX_MESSAGES"

    const/4 v8, 0x3

    const-string v9, "inboxMessages"

    invoke-direct {v5, v7, v8, v9}, Le/h/a/c/l0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Le/h/a/c/l0/b$b;->e:Le/h/a/c/l0/b$b;

    .line 5
    new-instance v7, Le/h/a/c/l0/b$b;

    const-string v9, "PUSH_NOTIFICATIONS"

    const/4 v10, 0x4

    const-string v11, "pushNotifications"

    invoke-direct {v7, v9, v10, v11}, Le/h/a/c/l0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Le/h/a/c/l0/b$b;->f:Le/h/a/c/l0/b$b;

    .line 6
    new-instance v9, Le/h/a/c/l0/b$b;

    const-string v11, "UNINSTALL_TS"

    const/4 v12, 0x5

    const-string v13, "uninstallTimestamp"

    invoke-direct {v9, v11, v12, v13}, Le/h/a/c/l0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Le/h/a/c/l0/b$b;->g:Le/h/a/c/l0/b$b;

    .line 7
    new-instance v11, Le/h/a/c/l0/b$b;

    const-string v13, "PUSH_NOTIFICATION_VIEWED"

    const/4 v14, 0x6

    const-string v15, "notificationViewed"

    invoke-direct {v11, v13, v14, v15}, Le/h/a/c/l0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Le/h/a/c/l0/b$b;->h:Le/h/a/c/l0/b$b;

    const/4 v13, 0x7

    new-array v13, v13, [Le/h/a/c/l0/b$b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Le/h/a/c/l0/b$b;->i:[Le/h/a/c/l0/b$b;

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

    .line 2
    iput-object p3, p0, Le/h/a/c/l0/b$b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/h/a/c/l0/b$b;
    .locals 1

    .line 1
    const-class v0, Le/h/a/c/l0/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/h/a/c/l0/b$b;

    return-object p0
.end method

.method public static values()[Le/h/a/c/l0/b$b;
    .locals 1

    .line 1
    sget-object v0, Le/h/a/c/l0/b$b;->i:[Le/h/a/c/l0/b$b;

    invoke-virtual {v0}, [Le/h/a/c/l0/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/h/a/c/l0/b$b;

    return-object v0
.end method
