.class public final Le/a/d/c/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/n;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ls1/k<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/n;


# direct methods
.method public constructor <init>(Le/a/d/c/n;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/n$b;->a:Le/a/d/c/n;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Le/a/d/c/n$b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c/n$b$a;

    iget v1, v0, Le/a/d/c/n$b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c/n$b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c/n$b$a;

    invoke-direct {v0, p0, p2}, Le/a/d/c/n$b$a;-><init>(Le/a/d/c/n$b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c/n$b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c/n$b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/c/n$b$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/n$b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Ls1/k;

    .line 5
    iget-object p2, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 7
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 9
    iget-object p1, p0, Le/a/d/c/n$b;->a:Le/a/d/c/n;

    iget-object p1, p1, Le/a/d/c/n;->f:Le/a/d/c/t;

    .line 10
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_7

    .line 11
    invoke-interface {p1}, Le/a/d/c/l;->b3()V

    const/4 p2, 0x0

    .line 12
    invoke-interface {p1, p2}, Le/a/d/c/l;->J5(I)V

    .line 13
    sget-object p2, Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;->WARNING:Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;

    invoke-interface {p1, p2}, Le/a/d/c/l;->setRingState(Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;)V

    .line 14
    invoke-interface {p1}, Le/a/d/c/l;->s0()V

    .line 15
    invoke-interface {p1}, Le/a/d/c/l;->B4()V

    .line 16
    invoke-interface {p1}, Le/a/d/c/l;->c3()V

    .line 17
    iget-object p1, p0, Le/a/d/c/n$b;->a:Le/a/d/c/n;

    iget-object v3, p1, Le/a/d/c/n;->f:Le/a/d/c/t;

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v6, Le/a/d/c/m;

    invoke-direct {v6, v3, v2}, Le/a/d/c/m;-><init>(Le/a/d/c/t;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 20
    iget-object p1, p0, Le/a/d/c/n$b;->a:Le/a/d/c/n;

    iget-object v3, p1, Le/a/d/c/n;->f:Le/a/d/c/t;

    .line 21
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v6, Le/a/d/c/q;

    invoke-direct {v6, v3, v2}, Le/a/d/c/q;-><init>(Le/a/d/c/t;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 23
    iget-object p1, p0, Le/a/d/c/n$b;->a:Le/a/d/c/n;

    iget-object p1, p1, Le/a/d/c/n;->f:Le/a/d/c/t;

    .line 24
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    .line 25
    invoke-interface {p1, p2}, Le/a/d/c/l;->J5(I)V

    .line 26
    invoke-interface {p1}, Le/a/d/c/l;->x9()V

    .line 27
    invoke-interface {p1}, Le/a/d/c/l;->X2()V

    .line 28
    iget-object p1, p0, Le/a/d/c/n$b;->a:Le/a/d/c/n;

    iget-object v3, p1, Le/a/d/c/n;->f:Le/a/d/c/t;

    .line 29
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v6, Le/a/d/c/p;

    invoke-direct {v6, v3, v2}, Le/a/d/c/p;-><init>(Le/a/d/c/t;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 31
    iget-object p1, p0, Le/a/d/c/n$b;->a:Le/a/d/c/n;

    iget-object p1, p1, Le/a/d/c/n;->f:Le/a/d/c/t;

    invoke-static {p1}, Le/a/d/c/t;->Ij(Le/a/d/c/t;)V

    goto :goto_2

    .line 32
    :cond_4
    iget-object p1, p0, Le/a/d/c/n$b;->a:Le/a/d/c/n;

    iget-object p1, p1, Le/a/d/c/n;->f:Le/a/d/c/t;

    .line 33
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_5

    .line 34
    sget-object p2, Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;->ERROR:Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;

    invoke-interface {p1, p2}, Le/a/d/c/l;->setRingState(Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;)V

    .line 35
    invoke-interface {p1}, Le/a/d/c/l;->s0()V

    :cond_5
    const-wide/16 p1, 0x3e8

    .line 36
    iput-object p0, v0, Le/a/d/c/n$b$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c/n$b$a;->e:I

    invoke-static {p1, p2, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, p0

    .line 37
    :goto_1
    iget-object p1, p1, Le/a/d/c/n$b;->a:Le/a/d/c/n;

    iget-object p1, p1, Le/a/d/c/n;->f:Le/a/d/c/t;

    .line 38
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_7

    .line 39
    invoke-interface {p1}, Le/a/d/c/l;->t()V

    .line 40
    :cond_7
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
