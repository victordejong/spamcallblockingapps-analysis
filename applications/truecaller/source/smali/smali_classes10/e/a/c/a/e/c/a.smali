.class public final Le/a/c/a/e/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c/r/d/c;

.field public static final b:Le/a/c/r/d/c;

.field public static final c:Le/a/c/a/e/c/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Le/a/c/a/e/c/a;

    invoke-direct {v0}, Le/a/c/a/e/c/a;-><init>()V

    sput-object v0, Le/a/c/a/e/c/a;->c:Le/a/c/a/e/c/a;

    .line 2
    new-instance v0, Le/a/c/r/d/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v1, "smart_sms_preference"

    .line 3
    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    const-string v2, "conversation_view"

    .line 4
    invoke-virtual {v0, v2}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    const-string v3, "click"

    .line 5
    invoke-virtual {v0, v3}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    const-string v4, "enable_smart_sms"

    .line 6
    invoke-virtual {v0, v4}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    .line 7
    sput-object v0, Le/a/c/a/e/c/a;->a:Le/a/c/r/d/c;

    .line 8
    new-instance v0, Le/a/c/r/d/c;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7f

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 9
    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v2}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v3}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    const-string v1, "disable_smart_sms"

    .line 12
    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    .line 13
    sput-object v0, Le/a/c/a/e/c/a;->b:Le/a/c/r/d/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
