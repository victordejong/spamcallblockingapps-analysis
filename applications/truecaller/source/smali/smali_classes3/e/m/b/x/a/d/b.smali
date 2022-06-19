.class public Le/m/b/x/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/b/x/b/u;
.implements Le/m/b/x/b/l;


# static fields
.field public static final d:Ljava/util/logging/Logger;


# instance fields
.field public final a:Le/m/b/x/a/d/a;

.field public final b:Le/m/b/x/b/l;

.field public final c:Le/m/b/x/b/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/m/b/x/a/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/m/b/x/a/d/b;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Le/m/b/x/a/d/a;Le/m/b/x/b/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/x/a/d/b;->a:Le/m/b/x/a/d/a;

    .line 3
    iget-object p1, p2, Le/m/b/x/b/n;->o:Le/m/b/x/b/l;

    .line 4
    iput-object p1, p0, Le/m/b/x/a/d/b;->b:Le/m/b/x/b/l;

    .line 5
    iget-object p1, p2, Le/m/b/x/b/n;->n:Le/m/b/x/b/u;

    .line 6
    iput-object p1, p0, Le/m/b/x/a/d/b;->c:Le/m/b/x/b/u;

    .line 7
    iput-object p0, p2, Le/m/b/x/b/n;->o:Le/m/b/x/b/l;

    .line 8
    iput-object p0, p2, Le/m/b/x/b/n;->n:Le/m/b/x/b/u;

    return-void
.end method


# virtual methods
.method public a(Le/m/b/x/b/n;Le/m/b/x/b/q;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/a/d/b;->c:Le/m/b/x/b/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Le/m/b/x/b/u;->a(Le/m/b/x/b/n;Le/m/b/x/b/q;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 3
    iget p2, p2, Le/m/b/x/b/q;->f:I

    .line 4
    div-int/lit8 p2, p2, 0x64

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    .line 5
    :try_start_0
    iget-object p2, p0, Le/m/b/x/a/d/b;->a:Le/m/b/x/a/d/a;

    invoke-virtual {p2}, Le/m/b/x/a/d/a;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 6
    sget-object p3, Le/m/b/x/a/d/b;->d:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "exception thrown while calling server callback"

    invoke-virtual {p3, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return p1
.end method

.method public b(Le/m/b/x/b/n;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/a/d/b;->b:Le/m/b/x/b/l;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/m/b/x/a/d/b;

    invoke-virtual {v0, p1, p2}, Le/m/b/x/a/d/b;->b(Le/m/b/x/b/n;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    iget-object p2, p0, Le/m/b/x/a/d/b;->a:Le/m/b/x/a/d/a;

    invoke-virtual {p2}, Le/m/b/x/a/d/a;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 4
    sget-object v0, Le/m/b/x/a/d/b;->d:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "exception thrown while calling server callback"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return p1
.end method
