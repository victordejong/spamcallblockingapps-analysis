.class public Lp3/a/n1/a1$d$a$a;
.super Lp3/a/n1/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/a1$d$a;->n(Lp3/a/n1/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/t;

.field public final synthetic b:Lp3/a/n1/a1$d$a;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1$d$a;Lp3/a/n1/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/a1$d$a$a;->b:Lp3/a/n1/a1$d$a;

    iput-object p2, p0, Lp3/a/n1/a1$d$a$a;->a:Lp3/a/n1/t;

    invoke-direct {p0}, Lp3/a/n1/k0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lp3/a/g1;Lp3/a/o0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$d$a$a;->b:Lp3/a/n1/a1$d$a;

    iget-object v0, v0, Lp3/a/n1/a1$d$a;->b:Lp3/a/n1/a1$d;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1$d;->b:Lp3/a/n1/n;

    .line 3
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lp3/a/n1/n;->a(Z)V

    .line 4
    iget-object v0, p0, Lp3/a/n1/a1$d$a$a;->a:Lp3/a/n1/t;

    .line 5
    invoke-interface {v0, p1, p2}, Lp3/a/n1/t;->c(Lp3/a/g1;Lp3/a/o0;)V

    return-void
.end method

.method public e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$d$a$a;->b:Lp3/a/n1/a1$d$a;

    iget-object v0, v0, Lp3/a/n1/a1$d$a;->b:Lp3/a/n1/a1$d;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1$d;->b:Lp3/a/n1/n;

    .line 3
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lp3/a/n1/n;->a(Z)V

    .line 4
    iget-object v0, p0, Lp3/a/n1/a1$d$a$a;->a:Lp3/a/n1/t;

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lp3/a/n1/t;->e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V

    return-void
.end method
