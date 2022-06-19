.class public final Lg/f/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lg/f/c/a/l;)Lg/f/c/a/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lg/f/c/a/l;->b()Lg/f/c/a/f0/w0;

    move-result-object p0

    invoke-static {p0}, Lg/f/c/a/j;->e(Lg/f/c/a/f0/w0;)Lg/f/c/a/j;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lg/f/c/a/j;Lg/f/c/a/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/j;->f()Lg/f/c/a/f0/w0;

    move-result-object p0

    invoke-interface {p1, p0}, Lg/f/c/a/m;->a(Lg/f/c/a/f0/w0;)V

    return-void
.end method
