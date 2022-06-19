.class public Lp3/a/n1/a1$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/a1$g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/a1$g;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/a1$g$a;->a:Lp3/a/n1/a1$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$g$a;->a:Lp3/a/n1/a1$g;

    iget-object v1, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Lp3/a/n1/a1;->n:Lp3/a/n1/l;

    .line 3
    iget-object v3, v1, Lp3/a/n1/a1;->x:Lp3/a/g1;

    if-eqz v3, :cond_1

    .line 4
    iget-object v0, v1, Lp3/a/n1/a1;->v:Lp3/a/n1/t1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    .line 5
    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lp3/a/n1/a1$g$a;->a:Lp3/a/n1/a1$g;

    iget-object v1, v0, Lp3/a/n1/a1$g;->a:Lp3/a/n1/x;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 7
    iget-object v0, v0, Lp3/a/n1/a1;->x:Lp3/a/g1;

    .line 8
    invoke-interface {v1, v0}, Lp3/a/n1/t1;->g(Lp3/a/g1;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v3, v1, Lp3/a/n1/a1;->u:Lp3/a/n1/x;

    .line 10
    iget-object v0, v0, Lp3/a/n1/a1$g;->a:Lp3/a/n1/x;

    if-ne v3, v0, :cond_2

    .line 11
    iput-object v0, v1, Lp3/a/n1/a1;->v:Lp3/a/n1/t1;

    .line 12
    iget-object v0, p0, Lp3/a/n1/a1$g$a;->a:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 13
    iput-object v2, v0, Lp3/a/n1/a1;->u:Lp3/a/n1/x;

    .line 14
    sget-object v1, Lp3/a/o;->b:Lp3/a/o;

    .line 15
    iget-object v2, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    invoke-virtual {v2}, Lp3/a/k1;->d()V

    .line 16
    invoke-static {v1}, Lp3/a/p;->a(Lp3/a/o;)Lp3/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp3/a/n1/a1;->j(Lp3/a/p;)V

    :cond_2
    :goto_1
    return-void
.end method
