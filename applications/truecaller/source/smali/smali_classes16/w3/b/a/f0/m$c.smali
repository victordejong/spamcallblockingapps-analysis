.class public Lw3/b/a/f0/m$c;
.super Lw3/b/a/h0/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/f0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:Lw3/b/a/f0/m$b;


# direct methods
.method public constructor <init>(Lw3/b/a/j;Lw3/b/a/f0/m$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lw3/b/a/j;->f()Lw3/b/a/k;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lw3/b/a/h0/e;-><init>(Lw3/b/a/j;Lw3/b/a/k;)V

    .line 2
    iput-object p2, p0, Lw3/b/a/f0/m$c;->c:Lw3/b/a/f0/m$b;

    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$c;->c:Lw3/b/a/f0/m$b;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/f0/m$b;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$c;->c:Lw3/b/a/f0/m$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/f0/m$b;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$c;->c:Lw3/b/a/f0/m$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/f0/m$b;->j(JJ)I

    move-result p1

    return p1
.end method

.method public e(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$c;->c:Lw3/b/a/f0/m$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/f0/m$b;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method
