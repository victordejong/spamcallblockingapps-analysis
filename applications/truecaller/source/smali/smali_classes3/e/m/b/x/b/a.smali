.class public abstract Le/m/b/x/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/b/x/b/g;


# instance fields
.field public a:Le/m/b/x/b/m;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Le/m/b/x/b/m;

    invoke-direct {v0, p1}, Le/m/b/x/b/m;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 2
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Le/m/b/x/b/a;->b:J

    .line 4
    iput-object p1, p0, Le/m/b/x/b/a;->a:Le/m/b/x/b/m;

    return-void
.end method

.method public static c(Le/m/b/x/b/g;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Le/m/b/x/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    new-instance v0, Le/m/b/x/d/c;

    invoke-direct {v0}, Le/m/b/x/d/c;-><init>()V

    .line 3
    :try_start_0
    invoke-interface {p0, v0}, Le/m/b/x/d/u;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 5
    iget-wide v0, v0, Le/m/b/x/d/c;->a:J

    return-wide v0

    :catchall_0
    move-exception p0

    .line 6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 7
    throw p0
.end method


# virtual methods
.method public a()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Le/m/b/x/b/a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Le/m/b/x/b/a;->c(Le/m/b/x/b/g;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Le/m/b/x/b/a;->b:J

    .line 4
    :cond_0
    iget-wide v0, p0, Le/m/b/x/b/a;->b:J

    return-wide v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/b/a;->a:Le/m/b/x/b/m;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le/m/b/x/b/m;->c()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/b/x/b/a;->a:Le/m/b/x/b/m;

    .line 2
    invoke-virtual {v0}, Le/m/b/x/b/m;->c()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Le/m/b/x/d/e;->b:Ljava/nio/charset/Charset;

    :goto_1
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/b/a;->a:Le/m/b/x/b/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Le/m/b/x/b/m;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
