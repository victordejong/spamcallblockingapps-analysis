.class public Lw3/b/a/i0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/i0/d;
.implements Lw3/b/a/i0/j;


# instance fields
.field public final a:Lw3/b/a/i0/j;


# direct methods
.method public constructor <init>(Lw3/b/a/i0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/k;->a:Lw3/b/a/i0/j;

    return-void
.end method

.method public static d(Lw3/b/a/i0/j;)Lw3/b/a/i0/d;
    .locals 1

    .line 1
    instance-of v0, p0, Lw3/b/a/i0/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lw3/b/a/i0/f;

    .line 3
    iget-object p0, p0, Lw3/b/a/i0/f;->a:Lw3/b/a/i0/d;

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Lw3/b/a/i0/d;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lw3/b/a/i0/d;

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_2
    new-instance v0, Lw3/b/a/i0/k;

    invoke-direct {v0, p0}, Lw3/b/a/i0/k;-><init>(Lw3/b/a/i0/j;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/k;->a:Lw3/b/a/i0/j;

    invoke-interface {v0}, Lw3/b/a/i0/j;->a()I

    move-result v0

    return v0
.end method

.method public b(Lw3/b/a/i0/e;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/k;->a:Lw3/b/a/i0/j;

    invoke-interface {v0, p1, p2, p3}, Lw3/b/a/i0/j;->c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/k;->a:Lw3/b/a/i0/j;

    invoke-interface {v0, p1, p2, p3}, Lw3/b/a/i0/j;->c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lw3/b/a/i0/k;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lw3/b/a/i0/k;

    .line 3
    iget-object v0, p0, Lw3/b/a/i0/k;->a:Lw3/b/a/i0/j;

    iget-object p1, p1, Lw3/b/a/i0/k;->a:Lw3/b/a/i0/j;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
