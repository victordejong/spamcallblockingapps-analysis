.class public final Le/p/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/a/s$b;
    }
.end annotation


# instance fields
.field public final a:Le/p/a/n;

.field public final b:Ljava/lang/String;

.field public final c:Le/p/a/m;

.field public final d:Ljava/lang/Object;

.field public volatile e:Ljava/net/URI;

.field public volatile f:Le/p/a/c;


# direct methods
.method public constructor <init>(Le/p/a/s$b;Le/p/a/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Le/p/a/s$b;->a:Le/p/a/n;

    .line 3
    iput-object p2, p0, Le/p/a/s;->a:Le/p/a/n;

    .line 4
    iget-object p2, p1, Le/p/a/s$b;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Le/p/a/s;->b:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Le/p/a/s$b;->c:Le/p/a/m$b;

    .line 7
    invoke-virtual {p2}, Le/p/a/m$b;->c()Le/p/a/m;

    move-result-object p2

    iput-object p2, p0, Le/p/a/s;->c:Le/p/a/m;

    .line 8
    iget-object p1, p1, Le/p/a/s$b;->d:Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    .line 9
    :goto_0
    iput-object p1, p0, Le/p/a/s;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Le/p/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/s;->f:Le/p/a/c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/s;->c:Le/p/a/m;

    invoke-static {v0}, Le/p/a/c;->a(Le/p/a/m;)Le/p/a/c;

    move-result-object v0

    iput-object v0, p0, Le/p/a/s;->f:Le/p/a/c;

    :goto_0
    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/p/a/s;->a:Le/p/a/n;

    .line 2
    iget-object v0, v0, Le/p/a/n;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Le/p/a/s$b;
    .locals 2

    .line 1
    new-instance v0, Le/p/a/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/p/a/s$b;-><init>(Le/p/a/s;Le/p/a/s$a;)V

    return-object v0
.end method

.method public d()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/a/s;->e:Ljava/net/URI;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/s;->a:Le/p/a/n;

    invoke-virtual {v0}, Le/p/a/n;->p()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Le/p/a/s;->e:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Request{method="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/p/a/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/a/s;->a:Le/p/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/a/s;->d:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
