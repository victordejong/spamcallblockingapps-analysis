.class public final Le/a/c/v/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw3/b/a/b;->G(I)Lw3/b/a/b;

    move-result-object v0

    const-string v1, "DateTime.now().plusDays(\u2026his).plusMinutes(minutes)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 4
    sput-wide v0, Le/a/c/v/g/c;->a:J

    return-void
.end method
