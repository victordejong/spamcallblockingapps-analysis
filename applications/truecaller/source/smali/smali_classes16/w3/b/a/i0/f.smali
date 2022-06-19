.class public Lw3/b/a/i0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/i0/j;


# instance fields
.field public final a:Lw3/b/a/i0/d;


# direct methods
.method public constructor <init>(Lw3/b/a/i0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/f;->a:Lw3/b/a/i0/d;

    return-void
.end method

.method public static b(Lw3/b/a/i0/d;)Lw3/b/a/i0/j;
    .locals 1

    .line 1
    instance-of v0, p0, Lw3/b/a/i0/k;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lw3/b/a/i0/j;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Lw3/b/a/i0/f;

    invoke-direct {v0, p0}, Lw3/b/a/i0/f;-><init>(Lw3/b/a/i0/d;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/f;->a:Lw3/b/a/i0/d;

    invoke-interface {v0}, Lw3/b/a/i0/d;->a()I

    move-result v0

    return v0
.end method

.method public c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/f;->a:Lw3/b/a/i0/d;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lw3/b/a/i0/d;->b(Lw3/b/a/i0/e;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
