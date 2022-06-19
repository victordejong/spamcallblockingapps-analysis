.class public Le/i/b/z1/v$d;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/z1/v;->c(Le/i/b/u2/q;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/Exception;

.field public final synthetic d:Le/i/b/u2/q;

.field public final synthetic e:Le/i/b/z1/v;


# direct methods
.method public constructor <init>(Le/i/b/z1/v;Ljava/lang/Exception;Le/i/b/u2/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/z1/v$d;->e:Le/i/b/z1/v;

    iput-object p2, p0, Le/i/b/z1/v$d;->c:Ljava/lang/Exception;

    iput-object p3, p0, Le/i/b/z1/v$d;->d:Le/i/b/u2/q;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/z1/v$d;->c:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/i/b/z1/v$d;->e:Le/i/b/z1/v;

    iget-object v1, p0, Le/i/b/z1/v$d;->d:Le/i/b/u2/q;

    .line 3
    sget-object v2, Le/i/b/z1/a;->a:Le/i/b/z1/a;

    invoke-virtual {v0, v1, v2}, Le/i/b/z1/v;->f(Le/i/b/u2/q;Le/i/b/z1/b0$a;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/i/b/z1/v$d;->e:Le/i/b/z1/v;

    iget-object v1, p0, Le/i/b/z1/v$d;->d:Le/i/b/u2/q;

    .line 5
    sget-object v2, Le/i/b/z1/f;->a:Le/i/b/z1/f;

    invoke-virtual {v0, v1, v2}, Le/i/b/z1/v;->f(Le/i/b/u2/q;Le/i/b/z1/b0$a;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/i/b/z1/v$d;->d:Le/i/b/u2/q;

    invoke-virtual {v0}, Le/i/b/u2/q;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/u2/s;

    .line 7
    invoke-virtual {v1}, Le/i/b/u2/s;->a()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Le/i/b/z1/v$d;->e:Le/i/b/z1/v;

    .line 9
    iget-object v3, v2, Le/i/b/z1/v;->b:Le/i/b/z1/h0;

    .line 10
    iget-object v2, v2, Le/i/b/z1/v;->a:Le/i/b/z1/b0;

    .line 11
    invoke-virtual {v3, v2, v1}, Le/i/b/z1/h0;->a(Le/i/b/z1/b0;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
