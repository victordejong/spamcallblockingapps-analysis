.class public Lp3/a/n1/m1$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Lp3/a/n1/m1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$m;->a:Lp3/a/n1/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$m;->a:Lp3/a/n1/m1;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lp3/a/n1/m1;->p(Z)V

    .line 3
    iget-object v2, v0, Lp3/a/n1/m1;->H:Lp3/a/n1/d0;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lp3/a/n1/d0;->i(Lp3/a/i0$i;)V

    .line 4
    iget-object v2, v0, Lp3/a/n1/m1;->Q:Lp3/a/e;

    sget-object v3, Lp3/a/e$a;->b:Lp3/a/e$a;

    const-string v4, "Entering IDLE state"

    invoke-virtual {v2, v3, v4}, Lp3/a/e;->a(Lp3/a/e$a;Ljava/lang/String;)V

    .line 5
    iget-object v2, v0, Lp3/a/n1/m1;->u:Lp3/a/n1/y;

    sget-object v3, Lp3/a/o;->d:Lp3/a/o;

    invoke-virtual {v2, v3}, Lp3/a/n1/y;->a(Lp3/a/o;)V

    .line 6
    iget-object v2, v0, Lp3/a/n1/m1;->b0:Lp3/a/n1/y0;

    .line 7
    iget-object v2, v2, Lp3/a/n1/y0;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lp3/a/n1/m1;->l()V

    :cond_0
    return-void
.end method
