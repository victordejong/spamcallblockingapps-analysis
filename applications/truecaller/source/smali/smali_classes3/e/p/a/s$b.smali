.class public Le/p/a/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Le/p/a/n;

.field public b:Ljava/lang/String;

.field public c:Le/p/a/m$b;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 2
    iput-object v0, p0, Le/p/a/s$b;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Le/p/a/m$b;

    invoke-direct {v0}, Le/p/a/m$b;-><init>()V

    iput-object v0, p0, Le/p/a/s$b;->c:Le/p/a/m$b;

    return-void
.end method

.method public constructor <init>(Le/p/a/s;Le/p/a/s$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p2, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 6
    iput-object p2, p0, Le/p/a/s$b;->a:Le/p/a/n;

    .line 7
    iget-object p2, p1, Le/p/a/s;->b:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Le/p/a/s$b;->b:Ljava/lang/String;

    .line 9
    iget-object p2, p1, Le/p/a/s;->d:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Le/p/a/s$b;->d:Ljava/lang/Object;

    .line 11
    iget-object p1, p1, Le/p/a/s;->c:Le/p/a/m;

    .line 12
    invoke-virtual {p1}, Le/p/a/m;->c()Le/p/a/m$b;

    move-result-object p1

    iput-object p1, p0, Le/p/a/s$b;->c:Le/p/a/m$b;

    return-void
.end method


# virtual methods
.method public a()Le/p/a/s;
    .locals 2

    .line 1
    iget-object v0, p0, Le/p/a/s$b;->a:Le/p/a/n;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/p/a/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/p/a/s;-><init>(Le/p/a/s$b;Le/p/a/s$a;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;
    .locals 2

    .line 1
    iget-object v0, p0, Le/p/a/s$b;->c:Le/p/a/m$b;

    .line 2
    invoke-virtual {v0, p1, p2}, Le/p/a/m$b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Le/p/a/m$b;->e(Ljava/lang/String;)Le/p/a/m$b;

    .line 4
    iget-object v1, v0, Le/p/a/m$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, v0, Le/p/a/m$b;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Ljava/lang/String;Le/p/a/t;)Le/p/a/s$b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p1}, Le/m/d/y/n;->a1(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iput-object p1, p0, Le/p/a/s$b;->b:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "method "

    const-string v1, " must have a request body."

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method == null || method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Le/p/a/n;)Le/p/a/s$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Le/p/a/s$b;->a:Le/p/a/n;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/net/URL;)Le/p/a/s$b;
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Le/p/a/n$b;

    invoke-direct {v1}, Le/p/a/n$b;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v0}, Le/p/a/n$b;->e(Le/p/a/n;Ljava/lang/String;)Le/p/a/n$b$a;

    move-result-object v0

    .line 4
    sget-object v3, Le/p/a/n$b$a;->a:Le/p/a/n$b$a;

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Le/p/a/n$b;->a()Le/p/a/n;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Le/p/a/s$b;->d(Le/p/a/n;)Le/p/a/s$b;

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
