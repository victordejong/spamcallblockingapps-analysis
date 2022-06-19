.class public abstract Lw3/b/a/h0/h;
.super Lw3/b/a/h0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/h0/h$a;
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Lw3/b/a/j;


# direct methods
.method public constructor <init>(Lw3/b/a/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw3/b/a/h0/b;-><init>(Lw3/b/a/d;)V

    .line 2
    iput-wide p2, p0, Lw3/b/a/h0/h;->b:J

    .line 3
    new-instance p2, Lw3/b/a/h0/h$a;

    check-cast p1, Lw3/b/a/d$a;

    .line 4
    iget-object p1, p1, Lw3/b/a/d$a;->z:Lw3/b/a/k;

    .line 5
    invoke-direct {p2, p0, p1}, Lw3/b/a/h0/h$a;-><init>(Lw3/b/a/h0/h;Lw3/b/a/k;)V

    iput-object p2, p0, Lw3/b/a/h0/h;->c:Lw3/b/a/j;

    return-void
.end method


# virtual methods
.method public j(JJ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lw3/b/a/h0/b;->k(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->g3(J)I

    move-result p1

    return p1
.end method

.method public final l()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/h;->c:Lw3/b/a/j;

    return-object v0
.end method
