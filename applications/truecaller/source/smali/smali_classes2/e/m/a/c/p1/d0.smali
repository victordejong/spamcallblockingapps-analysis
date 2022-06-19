.class public final Le/m/a/c/p1/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/l;


# instance fields
.field public final a:Le/m/a/c/p1/l;

.field public b:J

.field public c:Landroid/net/Uri;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/a/c/p1/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/m/a/c/p1/d0;->a:Le/m/a/c/p1/l;

    .line 4
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Le/m/a/c/p1/d0;->c:Landroid/net/Uri;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/p1/d0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/d0;->a:Le/m/a/c/p1/l;

    invoke-interface {v0}, Le/m/a/c/p1/l;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Le/m/a/c/p1/n;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    iput-object v0, p0, Le/m/a/c/p1/d0;->c:Landroid/net/Uri;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/p1/d0;->d:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Le/m/a/c/p1/d0;->a:Le/m/a/c/p1/l;

    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->b(Le/m/a/c/p1/n;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Le/m/a/c/p1/d0;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Le/m/a/c/p1/d0;->c:Landroid/net/Uri;

    .line 7
    invoke-virtual {p0}, Le/m/a/c/p1/d0;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/p1/d0;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public c(Le/m/a/c/p1/f0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/d0;->a:Le/m/a/c/p1/l;

    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/d0;->a:Le/m/a/c/p1/l;

    invoke-interface {v0}, Le/m/a/c/p1/l;->close()V

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/d0;->a:Le/m/a/c/p1/l;

    invoke-interface {v0}, Le/m/a/c/p1/l;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/d0;->a:Le/m/a/c/p1/l;

    invoke-interface {v0, p1, p2, p3}, Le/m/a/c/p1/l;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-wide p2, p0, Le/m/a/c/p1/d0;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Le/m/a/c/p1/d0;->b:J

    :cond_0
    return p1
.end method
