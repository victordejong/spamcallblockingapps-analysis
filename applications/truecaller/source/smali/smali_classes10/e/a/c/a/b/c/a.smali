.class public final Le/a/c/a/b/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c/r/d/c;

.field public static final b:Le/a/c/r/d/c;

.field public static final c:Le/a/c/r/d/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v9, Le/a/c/r/d/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v0, "smart_action"

    .line 2
    invoke-virtual {v9, v0}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    const-string v1, "delete_otp_bottom_sheet"

    .line 3
    invoke-virtual {v9, v1}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    const-string v2, "click"

    .line 4
    invoke-virtual {v9, v2}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    const-string v3, "try_inbox_cleaner"

    .line 5
    invoke-virtual {v9, v3}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    .line 6
    sput-object v9, Le/a/c/a/b/c/a;->a:Le/a/c/r/d/c;

    .line 7
    new-instance v3, Le/a/c/r/d/c;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7f

    move-object v10, v3

    invoke-direct/range {v10 .. v18}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 8
    invoke-virtual {v3, v0}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v1}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v2}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    const-string v2, "delete_otp"

    .line 11
    invoke-virtual {v3, v2}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    .line 12
    sput-object v3, Le/a/c/a/b/c/a;->b:Le/a/c/r/d/c;

    .line 13
    new-instance v2, Le/a/c/r/d/c;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x7f

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 14
    invoke-virtual {v2, v0}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v1}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    const-string v0, "dismiss"

    .line 16
    invoke-virtual {v2, v0}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    .line 17
    sput-object v2, Le/a/c/a/b/c/a;->c:Le/a/c/r/d/c;

    return-void
.end method
