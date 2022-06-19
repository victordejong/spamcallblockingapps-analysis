.class public final Le/k/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/k/a/b/a;

.field public static final b:Le/k/a/b/a;

.field public static final c:Le/k/a/b/a;

.field public static final d:Le/k/a/b/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v7, Le/k/a/b/a;

    const-string v1, "MIME"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v3, 0x1

    const/16 v4, 0x3d

    const/16 v5, 0x4c

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Le/k/a/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v7, Le/k/a/b/b;->a:Le/k/a/b/a;

    .line 2
    new-instance v8, Le/k/a/b/a;

    .line 3
    iget-object v5, v7, Le/k/a/b/a;->h:Le/k/a/b/a$a;

    const-string v2, "MIME-NO-LINEFEEDS"

    const v6, 0x7fffffff

    move-object v0, v8

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Le/k/a/b/a;-><init>(Le/k/a/b/a;Ljava/lang/String;ZCLe/k/a/b/a$a;I)V

    .line 4
    sput-object v8, Le/k/a/b/b;->b:Le/k/a/b/a;

    .line 5
    new-instance v8, Le/k/a/b/a;

    .line 6
    iget-object v5, v7, Le/k/a/b/a;->h:Le/k/a/b/a$a;

    const-string v2, "PEM"

    const/16 v6, 0x40

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Le/k/a/b/a;-><init>(Le/k/a/b/a;Ljava/lang/String;ZCLe/k/a/b/a$a;I)V

    .line 7
    sput-object v8, Le/k/a/b/b;->c:Le/k/a/b/a;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "+"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const-string v1, "/"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 11
    new-instance v1, Le/k/a/b/a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "MODIFIED-FOR-URL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Le/k/a/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v1, Le/k/a/b/b;->d:Le/k/a/b/a;

    return-void
.end method
