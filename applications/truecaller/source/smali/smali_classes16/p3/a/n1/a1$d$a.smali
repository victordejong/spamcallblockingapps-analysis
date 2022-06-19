.class public Lp3/a/n1/a1$d$a;
.super Lp3/a/n1/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/a1$d;->e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/s;

.field public final synthetic b:Lp3/a/n1/a1$d;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1$d;Lp3/a/n1/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/a1$d$a;->b:Lp3/a/n1/a1$d;

    iput-object p2, p0, Lp3/a/n1/a1$d$a;->a:Lp3/a/n1/s;

    invoke-direct {p0}, Lp3/a/n1/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Lp3/a/n1/t;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$d$a;->b:Lp3/a/n1/a1$d;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1$d;->b:Lp3/a/n1/n;

    .line 3
    iget-object v1, v0, Lp3/a/n1/n;->b:Lp3/a/n1/l1;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lp3/a/n1/l1;->a(J)V

    .line 4
    iget-object v0, v0, Lp3/a/n1/n;->a:Lp3/a/n1/u2;

    invoke-interface {v0}, Lp3/a/n1/u2;->a()J

    .line 5
    new-instance v0, Lp3/a/n1/a1$d$a$a;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/a1$d$a$a;-><init>(Lp3/a/n1/a1$d$a;Lp3/a/n1/t;)V

    .line 6
    iget-object p1, p0, Lp3/a/n1/a1$d$a;->a:Lp3/a/n1/s;

    .line 7
    invoke-interface {p1, v0}, Lp3/a/n1/s;->n(Lp3/a/n1/t;)V

    return-void
.end method
