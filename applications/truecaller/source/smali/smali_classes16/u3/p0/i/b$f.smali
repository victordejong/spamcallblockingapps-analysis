.class public final Lu3/p0/i/b$f;
.super Lu3/p0/i/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/p0/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public d:Z


# direct methods
.method public constructor <init>(Lu3/p0/i/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lu3/p0/i/b$a;-><init>(Lu3/p0/i/b;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu3/p0/i/b$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lu3/p0/i/b$f;->d:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lu3/p0/i/b$a;->b()V

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lu3/p0/i/b$a;->b:Z

    return-void
.end method

.method public d2(Lv3/f;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 1
    iget-boolean v0, p0, Lu3/p0/i/b$a;->b:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lu3/p0/i/b$f;->d:Z

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    return-wide v2

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lu3/p0/i/b$a;->d2(Lv3/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-nez p3, :cond_2

    .line 4
    iput-boolean v1, p0, Lu3/p0/i/b$f;->d:Z

    .line 5
    invoke-virtual {p0}, Lu3/p0/i/b$a;->b()V

    return-wide v2

    :cond_2
    return-wide p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "byteCount < 0: "

    .line 7
    invoke-static {p1, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
