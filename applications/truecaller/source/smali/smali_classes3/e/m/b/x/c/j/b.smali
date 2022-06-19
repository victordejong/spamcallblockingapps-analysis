.class public Le/m/b/x/c/j/b;
.super Le/m/b/x/c/d;
.source "SourceFile"


# instance fields
.field public final a:Le/m/e/g0/c;


# direct methods
.method public constructor <init>(Le/m/b/x/c/j/a;Le/m/e/g0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/b/x/c/d;-><init>()V

    .line 2
    iput-object p2, p0, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p2, Le/m/e/g0/c;->f:Z

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
    iget-object v0, p0, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {v0}, Le/m/e/g0/c;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {v0}, Le/m/e/g0/c;->flush()V

    return-void
.end method
