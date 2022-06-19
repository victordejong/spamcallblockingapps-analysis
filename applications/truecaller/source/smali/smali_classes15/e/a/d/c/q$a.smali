.class public final Le/a/d/c/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/q;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/v/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/q;

.field public final synthetic b:Le/a/d/v/b;


# direct methods
.method public constructor <init>(Le/a/d/c/q;Le/a/d/v/b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/q$a;->a:Le/a/d/c/q;

    iput-object p2, p0, Le/a/d/c/q$a;->b:Le/a/d/v/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object p2, Ls1/s;->a:Ls1/s;

    check-cast p1, Le/a/d/v/h;

    .line 2
    instance-of v0, p1, Le/a/d/v/h$a;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Le/a/d/v/h$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 4
    iget-object p1, p0, Le/a/d/c/q$a;->a:Le/a/d/c/q;

    iget-object p1, p1, Le/a/d/c/q;->f:Le/a/d/c/t;

    .line 5
    iget-object p1, p1, Le/a/d/c/t;->m:Le/a/d/v/d;

    invoke-interface {p1}, Le/a/d/v/d;->f()Lq3/a/x2/i1;

    move-result-object p1

    invoke-interface {p1}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/d/c/q$a;->a:Le/a/d/c/q;

    iget-object p1, p1, Le/a/d/c/q;->f:Le/a/d/c/t;

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1, v1}, Le/a/d/c/l;->A8(Z)V

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/d/c/q$a;->a:Le/a/d/c/q;

    iget-object v0, p1, Le/a/d/c/q;->f:Le/a/d/c/t;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v3, Le/a/d/c/s;

    const/4 p1, 0x0

    invoke-direct {v3, v0, p1}, Le/a/d/c/s;-><init>(Le/a/d/c/t;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 12
    iget-object v0, p0, Le/a/d/c/q$a;->a:Le/a/d/c/q;

    iget-object v0, v0, Le/a/d/c/q;->f:Le/a/d/c/t;

    iget-object v1, p0, Le/a/d/c/q$a;->b:Le/a/d/v/b;

    invoke-static {v0, v1}, Le/a/d/c/t;->Jj(Le/a/d/c/t;Le/a/d/v/b;)V

    .line 13
    iget-object v0, p0, Le/a/d/c/q$a;->a:Le/a/d/c/q;

    iget-object v0, v0, Le/a/d/c/q;->f:Le/a/d/c/t;

    iget-object v1, p0, Le/a/d/c/q$a;->b:Le/a/d/v/b;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v4, Le/a/d/c/o;

    invoke-direct {v4, v0, v1, p1}, Le/a/d/c/o;-><init>(Le/a/d/c/t;Le/a/d/v/b;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, v0, Le/a/d/c/t;->e:Lq3/a/p1;

    goto :goto_0

    .line 16
    :cond_3
    instance-of v0, p1, Le/a/d/v/h$b;

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Le/a/d/c/q$a;->a:Le/a/d/c/q;

    iget-object v0, v0, Le/a/d/c/q;->f:Le/a/d/c/t;

    .line 18
    invoke-virtual {v0, v1}, Le/a/d/c/t;->Mj(Z)V

    .line 19
    iget-object v0, p0, Le/a/d/c/q$a;->a:Le/a/d/c/q;

    iget-object v0, v0, Le/a/d/c/q;->f:Le/a/d/c/t;

    .line 20
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    .line 21
    invoke-static/range {v1 .. v6}, Le/a/p5/s0/g;->T1(Le/a/d/c/l;ZJILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 22
    invoke-interface {v0, v1}, Le/a/d/c/l;->A8(Z)V

    .line 23
    invoke-interface {v0}, Le/a/d/c/l;->V7()V

    .line 24
    :cond_4
    iget-object v0, p0, Le/a/d/c/q$a;->a:Le/a/d/c/q;

    iget-object v0, v0, Le/a/d/c/q;->f:Le/a/d/c/t;

    .line 25
    iget-boolean v1, v0, Le/a/d/c/t;->i:Z

    if-eqz v1, :cond_5

    .line 26
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_5

    .line 27
    check-cast p1, Le/a/d/v/h$b;

    invoke-static {p1}, Le/a/p5/s0/g;->M1(Le/a/d/v/h$b;)I

    move-result p1

    sget v1, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    invoke-interface {v0, p1, v1}, Le/a/d/c/l;->v3(II)V

    :cond_5
    :goto_0
    return-object p2
.end method
