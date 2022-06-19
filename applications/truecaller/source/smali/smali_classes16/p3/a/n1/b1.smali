.class public Lp3/a/n1/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lp3/a/n1/a1;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/b1;->a:Lp3/a/n1/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/b1;->a:Lp3/a/n1/a1;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lp3/a/n1/a1;->p:Lp3/a/k1$c;

    .line 3
    iget-object v0, v0, Lp3/a/n1/a1;->j:Lp3/a/e;

    .line 4
    sget-object v1, Lp3/a/e$a;->b:Lp3/a/e$a;

    const-string v2, "CONNECTING after backoff"

    invoke-virtual {v0, v1, v2}, Lp3/a/e;->a(Lp3/a/e$a;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lp3/a/n1/b1;->a:Lp3/a/n1/a1;

    sget-object v1, Lp3/a/o;->a:Lp3/a/o;

    invoke-static {v0, v1}, Lp3/a/n1/a1;->h(Lp3/a/n1/a1;Lp3/a/o;)V

    .line 6
    iget-object v0, p0, Lp3/a/n1/b1;->a:Lp3/a/n1/a1;

    invoke-static {v0}, Lp3/a/n1/a1;->i(Lp3/a/n1/a1;)V

    return-void
.end method
