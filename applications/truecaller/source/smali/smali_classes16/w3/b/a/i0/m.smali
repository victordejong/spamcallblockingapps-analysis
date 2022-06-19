.class public Lw3/b/a/i0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw3/b/a/i0/p;

.field public final b:Lw3/b/a/i0/o;

.field public final c:Ljava/util/Locale;

.field public final d:Lw3/b/a/v;


# direct methods
.method public constructor <init>(Lw3/b/a/i0/p;Lw3/b/a/i0/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/m;->a:Lw3/b/a/i0/p;

    .line 3
    iput-object p2, p0, Lw3/b/a/i0/m;->b:Lw3/b/a/i0/o;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lw3/b/a/i0/m;->c:Ljava/util/Locale;

    .line 5
    iput-object p1, p0, Lw3/b/a/i0/m;->d:Lw3/b/a/v;

    return-void
.end method

.method public constructor <init>(Lw3/b/a/i0/p;Lw3/b/a/i0/o;Ljava/util/Locale;Lw3/b/a/v;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lw3/b/a/i0/m;->a:Lw3/b/a/i0/p;

    .line 8
    iput-object p2, p0, Lw3/b/a/i0/m;->b:Lw3/b/a/i0/o;

    .line 9
    iput-object p3, p0, Lw3/b/a/i0/m;->c:Ljava/util/Locale;

    .line 10
    iput-object p4, p0, Lw3/b/a/i0/m;->d:Lw3/b/a/v;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/m;->b:Lw3/b/a/i0/o;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lw3/b/a/t;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lw3/b/a/i0/m;->a()V

    .line 2
    new-instance v0, Lw3/b/a/t;

    iget-object v1, p0, Lw3/b/a/i0/m;->d:Lw3/b/a/v;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lw3/b/a/t;-><init>(JLw3/b/a/v;)V

    .line 3
    iget-object v1, p0, Lw3/b/a/i0/m;->b:Lw3/b/a/i0/o;

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lw3/b/a/i0/m;->c:Ljava/util/Locale;

    invoke-interface {v1, v0, p1, v2, v3}, Lw3/b/a/i0/o;->c(Lw3/b/a/w;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_0
    not-int v1, v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v1}, Lw3/b/a/i0/h;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lw3/b/a/c0;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/m;->a:Lw3/b/a/i0/p;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lw3/b/a/i0/m;->c:Ljava/util/Locale;

    invoke-interface {v0, p1, v2}, Lw3/b/a/i0/p;->d(Lw3/b/a/c0;Ljava/util/Locale;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3
    iget-object v2, p0, Lw3/b/a/i0/m;->c:Ljava/util/Locale;

    invoke-interface {v0, v1, p1, v2}, Lw3/b/a/i0/p;->b(Ljava/lang/StringBuffer;Lw3/b/a/c0;Ljava/util/Locale;)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Printing not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
