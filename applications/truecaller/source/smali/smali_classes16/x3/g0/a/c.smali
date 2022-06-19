.class public final Lx3/g0/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx3/j<",
        "Lu3/l0;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/e/k;Le/m/e/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/k;",
            "Le/m/e/b0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/g0/a/c;->a:Le/m/e/k;

    .line 3
    iput-object p2, p0, Lx3/g0/a/c;->b:Le/m/e/b0;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu3/l0;

    .line 2
    iget-object v0, p0, Lx3/g0/a/c;->a:Le/m/e/k;

    invoke-virtual {p1}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/e/k;->k(Ljava/io/Reader;)Le/m/e/g0/a;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lx3/g0/a/c;->b:Le/m/e/b0;

    invoke-virtual {v1, v0}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v0

    sget-object v2, Le/m/e/g0/b;->j:Le/m/e/g0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lu3/l0;->close()V

    return-object v1

    .line 6
    :cond_0
    :try_start_1
    new-instance v0, Le/m/e/r;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Le/m/e/r;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {p1}, Lu3/l0;->close()V

    throw v0
.end method
