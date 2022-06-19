.class public final Lcom/google/firebase/perf/network/c;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/perf/network/e;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/i/g;Lcom/google/firebase/perf/f/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 2
    new-instance v0, Lcom/google/firebase/perf/network/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/e;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/i/g;Lcom/google/firebase/perf/f/a;)V

    iput-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->b()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->c()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->d()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->e()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->g([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->i()I

    move-result v0

    return v0
.end method

.method public getContentLengthLong()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->m()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->n()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->o()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->p()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->r(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/e;->t(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/e;->u(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->v(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/e;->w(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->x()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->z()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->A()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->C()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->D()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->E()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->G()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->I()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->K()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->L()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->M(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->N(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->O(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->P(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->Q(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->R(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->S(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/e;->T(J)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/e;->U(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->V(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->W(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->X(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/e;->Y(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/e;->Z(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/network/c;->a:Lcom/google/firebase/perf/network/e;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/e;->b0()Z

    move-result v0

    return v0
.end method
