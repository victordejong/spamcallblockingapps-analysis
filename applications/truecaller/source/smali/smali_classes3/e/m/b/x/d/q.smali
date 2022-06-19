.class public final Le/m/b/x/d/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/b/x/d/u;


# instance fields
.field public final a:Le/m/b/x/d/u;

.field public final b:I

.field public final c:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Le/m/b/x/d/u;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/x/d/q;->a:Le/m/b/x/d/u;

    .line 3
    iput-object p2, p0, Le/m/b/x/d/q;->c:Ljava/util/logging/Logger;

    .line 4
    iput p4, p0, Le/m/b/x/d/q;->b:I

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/b/x/d/p;

    iget-object v1, p0, Le/m/b/x/d/q;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v3, p0, Le/m/b/x/d/q;->b:I

    invoke-direct {v0, p1, v1, v2, v3}, Le/m/b/x/d/p;-><init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .line 2
    :try_start_0
    iget-object v1, p0, Le/m/b/x/d/q;->a:Le/m/b/x/d/u;

    invoke-interface {v1, v0}, Le/m/b/x/d/u;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, v0, Le/m/b/x/d/p;->a:Le/m/b/x/d/n;

    .line 4
    invoke-virtual {v0}, Le/m/b/x/d/n;->close()V

    .line 5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, v0, Le/m/b/x/d/p;->a:Le/m/b/x/d/n;

    .line 7
    invoke-virtual {v0}, Le/m/b/x/d/n;->close()V

    .line 8
    throw p1
.end method
