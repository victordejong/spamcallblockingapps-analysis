.class public final Lx3/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lu3/k0;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Lu3/l0;


# direct methods
.method public constructor <init>(Lu3/k0;Ljava/lang/Object;Lu3/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/k0;",
            "TT;",
            "Lu3/l0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/a0;->a:Lu3/k0;

    .line 3
    iput-object p2, p0, Lx3/a0;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lx3/a0;->c:Lu3/l0;

    return-void
.end method

.method public static a(Lu3/l0;Lu3/k0;)Lx3/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu3/l0;",
            "Lu3/k0;",
            ")",
            "Lx3/a0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "body == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rawResponse == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lu3/k0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lx3/a0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lx3/a0;-><init>(Lu3/k0;Ljava/lang/Object;Lu3/l0;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/Object;Lu3/z;)Lx3/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lu3/z;",
            ")",
            "Lx3/a0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "headers == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lu3/k0$a;

    invoke-direct {v0}, Lu3/k0$a;-><init>()V

    const/16 v1, 0xc8

    .line 3
    iput v1, v0, Lu3/k0$a;->c:I

    const-string v1, "OK"

    .line 4
    invoke-virtual {v0, v1}, Lu3/k0$a;->e(Ljava/lang/String;)Lu3/k0$a;

    sget-object v1, Lu3/f0;->c:Lu3/f0;

    .line 5
    invoke-virtual {v0, v1}, Lu3/k0$a;->f(Lu3/f0;)Lu3/k0$a;

    .line 6
    invoke-virtual {v0, p1}, Lu3/k0$a;->d(Lu3/z;)Lu3/k0$a;

    new-instance p1, Lu3/g0$a;

    invoke-direct {p1}, Lu3/g0$a;-><init>()V

    const-string v1, "http://localhost/"

    .line 7
    invoke-virtual {p1, v1}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    invoke-virtual {p1}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu3/k0$a;->g(Lu3/g0;)Lu3/k0$a;

    .line 8
    invoke-virtual {v0}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lx3/a0;->d(Ljava/lang/Object;Lu3/k0;)Lx3/a0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;Lu3/k0;)Lx3/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lu3/k0;",
            ")",
            "Lx3/a0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "rawResponse == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lu3/k0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lx3/a0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lx3/a0;-><init>(Lu3/k0;Ljava/lang/Object;Lu3/l0;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/a0;->a:Lu3/k0;

    invoke-virtual {v0}, Lu3/k0;->j()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/a0;->a:Lu3/k0;

    invoke-virtual {v0}, Lu3/k0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
