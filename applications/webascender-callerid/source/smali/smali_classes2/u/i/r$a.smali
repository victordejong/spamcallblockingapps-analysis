.class Lu/i/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/i/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/i/b$b<",
        "Lu/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lu/i/b$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lu/i/r$a;->b(Lu/i/b$a;)Lu/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Lu/i/b$a;)Lu/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lu/f;->j()Lu/f$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lu/i/b$a;->b()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lu/i/b$a;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4
    invoke-virtual {p1}, Lu/i/b$a;->j()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lu/i/b$a;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto :goto_0

    :cond_0
    const-string v3, "serviceName"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/f$a;->h(Ljava/lang/String;)Lu/f$a;

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "ipv4"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "ipv6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "port"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p1}, Lu/i/b$a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/f$a;->g(I)Lu/f$a;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto :goto_0

    .line 13
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/f$a;->d(Ljava/lang/String;)Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p1}, Lu/i/b$a;->d()V

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v0}, Lu/f$a;->a()Lu/f;

    move-result-object p1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Endpoint"

    return-object v0
.end method
