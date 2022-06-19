.class public final Le/a/l4/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final synthetic e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xf

    .line 1
    invoke-static {v0, v1}, Lw3/b/a/i;->e(J)Lw3/b/a/i;

    move-result-object v0

    const-string v1, "Duration.standardSeconds(15)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v0, v0, Lw3/b/a/e0/f;->a:J

    .line 3
    sput-wide v0, Le/a/l4/r;->a:J

    const-wide/16 v0, 0x3

    .line 4
    invoke-static {v0, v1}, Lw3/b/a/i;->e(J)Lw3/b/a/i;

    move-result-object v0

    const-string v1, "Duration.standardSeconds(3)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-wide v0, v0, Lw3/b/a/e0/f;->a:J

    .line 6
    sput-wide v0, Le/a/l4/r;->b:J

    const-wide/16 v0, 0xa

    .line 7
    invoke-static {v0, v1}, Lw3/b/a/i;->d(J)Lw3/b/a/i;

    move-result-object v0

    const-string v1, "Duration.standardMinutes(10)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v0, v0, Lw3/b/a/e0/f;->a:J

    .line 9
    sput-wide v0, Le/a/l4/r;->c:J

    const-wide/16 v0, 0xd

    .line 10
    invoke-static {v0, v1}, Lw3/b/a/i;->e(J)Lw3/b/a/i;

    move-result-object v0

    const-string v1, "Duration.standardSeconds(13)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-wide v0, v0, Lw3/b/a/e0/f;->a:J

    .line 12
    sput-wide v0, Le/a/l4/r;->d:J

    return-void
.end method
