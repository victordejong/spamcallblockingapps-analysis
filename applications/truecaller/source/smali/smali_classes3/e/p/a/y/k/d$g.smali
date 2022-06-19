.class public Le/p/a/y/k/d$g;
.super Le/p/a/y/k/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public d:Z

.field public final synthetic e:Le/p/a/y/k/d;


# direct methods
.method public constructor <init>(Le/p/a/y/k/d;Le/p/a/y/k/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/k/d$g;->e:Le/p/a/y/k/d;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Le/p/a/y/k/d$b;-><init>(Le/p/a/y/k/d;Le/p/a/y/k/d$a;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/k/d$b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Le/p/a/y/k/d$g;->d:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/p/a/y/k/d$b;->d()V

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/p/a/y/k/d$b;->b:Z

    return-void
.end method

.method public d2(Lv3/f;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    .line 1
    iget-boolean v0, p0, Le/p/a/y/k/d$b;->b:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Le/p/a/y/k/d$g;->d:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 3
    :cond_0
    iget-object v0, p0, Le/p/a/y/k/d$g;->e:Le/p/a/y/k/d;

    .line 4
    iget-object v0, v0, Le/p/a/y/k/d;->b:Lv3/h;

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lv3/b0;->d2(Lv3/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Le/p/a/y/k/d$g;->d:Z

    .line 7
    invoke-virtual {p0}, Le/p/a/y/k/d$b;->b()V

    return-wide v1

    :cond_1
    return-wide p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {v0, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
