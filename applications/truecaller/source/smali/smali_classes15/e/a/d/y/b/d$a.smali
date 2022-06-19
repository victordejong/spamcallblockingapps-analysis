.class public final Le/a/d/y/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/y/b/d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/y/b/d;


# direct methods
.method public constructor <init>(Le/a/d/y/b/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/y/b/d$a;->a:Le/a/d/y/b/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Le/a/d/i;

    .line 2
    iget-object p2, p0, Le/a/d/y/b/d$a;->a:Le/a/d/y/b/d;

    iget-object p2, p2, Le/a/d/y/b/d;->f:Le/a/d/y/b/h;

    .line 3
    iget-object p2, p2, Le/a/d/y/b/h;->e:Lq3/a/p1;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-static {p2, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    :cond_0
    instance-of p2, p1, Le/a/d/i$b;

    if-eqz p2, :cond_1

    iget-object p1, p0, Le/a/d/y/b/d$a;->a:Le/a/d/y/b/d;

    iget-object p1, p1, Le/a/d/y/b/d;->f:Le/a/d/y/b/h;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/y/b/c;

    if-eqz p1, :cond_6

    .line 7
    invoke-interface {p1}, Le/a/d/y/b/c;->F0()V

    goto :goto_0

    .line 8
    :cond_1
    instance-of p2, p1, Le/a/d/i$c;

    if-eqz p2, :cond_2

    iget-object p1, p0, Le/a/d/y/b/d$a;->a:Le/a/d/y/b/d;

    iget-object p1, p1, Le/a/d/y/b/d;->f:Le/a/d/y/b/h;

    invoke-static {p1}, Le/a/d/y/b/h;->Ij(Le/a/d/y/b/h;)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of p2, p1, Le/a/d/i$e;

    if-eqz p2, :cond_3

    iget-object p1, p0, Le/a/d/y/b/d$a;->a:Le/a/d/y/b/d;

    iget-object p1, p1, Le/a/d/y/b/d;->f:Le/a/d/y/b/h;

    invoke-static {p1}, Le/a/d/y/b/h;->Jj(Le/a/d/y/b/h;)V

    goto :goto_0

    .line 10
    :cond_3
    instance-of p2, p1, Le/a/d/i$a;

    if-eqz p2, :cond_5

    .line 11
    check-cast p1, Le/a/d/i$a;

    .line 12
    iget-boolean p1, p1, Le/a/d/i$a;->a:Z

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Le/a/d/y/b/d$a;->a:Le/a/d/y/b/d;

    iget-object p1, p1, Le/a/d/y/b/d;->f:Le/a/d/y/b/h;

    invoke-static {p1}, Le/a/d/y/b/h;->Jj(Le/a/d/y/b/h;)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/d/y/b/d$a;->a:Le/a/d/y/b/d;

    iget-object p1, p1, Le/a/d/y/b/d;->f:Le/a/d/y/b/h;

    invoke-static {p1}, Le/a/d/y/b/h;->Ij(Le/a/d/y/b/h;)V

    goto :goto_0

    .line 15
    :cond_5
    instance-of p2, p1, Le/a/d/i$d;

    if-eqz p2, :cond_6

    .line 16
    iget-object p2, p0, Le/a/d/y/b/d$a;->a:Le/a/d/y/b/d;

    iget-object p2, p2, Le/a/d/y/b/d;->f:Le/a/d/y/b/h;

    check-cast p1, Le/a/d/i$d;

    .line 17
    iget-wide v3, p1, Le/a/d/i$d;->a:J

    .line 18
    iget-object v2, p1, Le/a/d/i$d;->b:Lq3/a/x2/f;

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p1, Le/a/d/y/b/g;

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Le/a/d/y/b/g;-><init>(Le/a/d/y/b/h;Lq3/a/x2/f;JLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    move-object v0, p2

    move-object v3, p1

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p2, Le/a/d/y/b/h;->e:Lq3/a/p1;

    .line 21
    :cond_6
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
