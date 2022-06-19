.class public Le/p/a/y/j/d$e$a;
.super Le/p/a/y/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/p/a/y/j/d$e;->d(ZZIILjava/util/List;Le/p/a/y/j/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le/p/a/y/j/k;

.field public final synthetic c:Le/p/a/y/j/d$e;


# direct methods
.method public varargs constructor <init>(Le/p/a/y/j/d$e;Ljava/lang/String;[Ljava/lang/Object;Le/p/a/y/j/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/d$e$a;->c:Le/p/a/y/j/d$e;

    iput-object p4, p0, Le/p/a/y/j/d$e$a;->b:Le/p/a/y/j/k;

    invoke-direct {p0, p2, p3}, Le/p/a/y/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/d$e$a;->c:Le/p/a/y/j/d$e;

    iget-object v0, v0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 2
    iget-object v0, v0, Le/p/a/y/j/d;->c:Le/p/a/y/j/d$d;

    .line 3
    iget-object v1, p0, Le/p/a/y/j/d$e$a;->b:Le/p/a/y/j/k;

    check-cast v0, Le/p/a/y/j/d$d$a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Le/p/a/y/j/a;->n:Le/p/a/y/j/a;

    invoke-virtual {v1, v0}, Le/p/a/y/j/k;->c(Le/p/a/y/j/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Le/p/a/y/b;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "FramedConnection.Listener failure for "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Le/p/a/y/j/d$e$a;->c:Le/p/a/y/j/d$e;

    iget-object v4, v4, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 7
    iget-object v4, v4, Le/p/a/y/j/d;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :try_start_1
    iget-object v0, p0, Le/p/a/y/j/d$e$a;->b:Le/p/a/y/j/k;

    sget-object v1, Le/p/a/y/j/a;->e:Le/p/a/y/j/a;

    invoke-virtual {v0, v1}, Le/p/a/y/j/k;->c(Le/p/a/y/j/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
