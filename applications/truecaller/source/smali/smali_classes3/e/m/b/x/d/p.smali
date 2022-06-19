.class public Le/m/b/x/d/p;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field public final a:Le/m/b/x/d/n;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    new-instance p1, Le/m/b/x/d/n;

    invoke-direct {p1, p2, p3, p4}, Le/m/b/x/d/n;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    iput-object p1, p0, Le/m/b/x/d/p;->a:Le/m/b/x/d/n;

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
    iget-object v0, p0, Le/m/b/x/d/p;->a:Le/m/b/x/d/n;

    invoke-virtual {v0}, Le/m/b/x/d/n;->close()V

    .line 2
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Le/m/b/x/d/p;->a:Le/m/b/x/d/n;

    invoke-virtual {v0, p1}, Le/m/b/x/d/n;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-object v0, p0, Le/m/b/x/d/p;->a:Le/m/b/x/d/n;

    invoke-virtual {v0, p1, p2, p3}, Le/m/b/x/d/n;->write([BII)V

    return-void
.end method
