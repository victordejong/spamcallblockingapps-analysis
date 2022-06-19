.class public final Lokhttp3/internal/http2/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Ln/h;

.field public d:Ln/g;

.field private e:Lokhttp3/internal/http2/e$d;

.field private f:Lokhttp3/internal/http2/l;

.field private g:I

.field private h:Z

.field private final i:Lm/k0/e/e;


# direct methods
.method public constructor <init>(ZLm/k0/e/e;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http2/e$b;->h:Z

    iput-object p2, p0, Lokhttp3/internal/http2/e$b;->i:Lm/k0/e/e;

    .line 2
    sget-object p1, Lokhttp3/internal/http2/e$d;->a:Lokhttp3/internal/http2/e$d;

    iput-object p1, p0, Lokhttp3/internal/http2/e$b;->e:Lokhttp3/internal/http2/e$d;

    .line 3
    sget-object p1, Lokhttp3/internal/http2/l;->a:Lokhttp3/internal/http2/l;

    iput-object p1, p0, Lokhttp3/internal/http2/e$b;->f:Lokhttp3/internal/http2/l;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/internal/http2/e;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http2/e;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/e;-><init>(Lokhttp3/internal/http2/e$b;)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/e$b;->h:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "connectionName"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Lokhttp3/internal/http2/e$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->e:Lokhttp3/internal/http2/e$d;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/e$b;->g:I

    return v0
.end method

.method public final f()Lokhttp3/internal/http2/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->f:Lokhttp3/internal/http2/l;

    return-object v0
.end method

.method public final g()Ln/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->d:Ln/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sink"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "socket"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()Ln/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->c:Ln/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "source"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()Lm/k0/e/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$b;->i:Lm/k0/e/e;

    return-object v0
.end method

.method public final k(Lokhttp3/internal/http2/e$d;)Lokhttp3/internal/http2/e$b;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/e$b;->e:Lokhttp3/internal/http2/e$d;

    return-object p0
.end method

.method public final l(I)Lokhttp3/internal/http2/e$b;
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/e$b;->g:I

    return-object p0
.end method

.method public final m(Ljava/net/Socket;Ljava/lang/String;Ln/h;Ln/g;)Lokhttp3/internal/http2/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "socket"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerName"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/e$b;->a:Ljava/net/Socket;

    .line 2
    iget-boolean p1, p0, Lokhttp3/internal/http2/e$b;->h:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lm/k0/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MockWebServer "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    iput-object p1, p0, Lokhttp3/internal/http2/e$b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lokhttp3/internal/http2/e$b;->c:Ln/h;

    .line 6
    iput-object p4, p0, Lokhttp3/internal/http2/e$b;->d:Ln/g;

    return-object p0
.end method
