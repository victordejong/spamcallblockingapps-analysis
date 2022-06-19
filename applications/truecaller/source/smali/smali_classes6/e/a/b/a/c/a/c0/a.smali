.class public final Le/a/b/a/c/a/c0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Le/a/b0/p/c;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/c/a/c0/b;


# direct methods
.method public constructor <init>(Le/a/b/a/c/a/c0/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/b/a/c/a/c0/a;->a:Le/a/b/a/c/a/c0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Le/a/b0/p/c;

    const-string v0, "tag"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Le/a/b/a/c/a/c0/a;->a:Le/a/b/a/c/a/c0/b;

    .line 4
    iget-wide v3, v2, Le/a/b/a/c/a/c0/b;->a:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6
    iput-wide v0, v2, Le/a/b/a/c/a/c0/b;->a:J

    .line 7
    iget-object v0, p0, Le/a/b/a/c/a/c0/a;->a:Le/a/b/a/c/a/c0/b;

    .line 8
    iget-object v0, v0, Le/a/b/a/c/a/c0/b;->c:Ls1/z/b/l;

    .line 9
    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
