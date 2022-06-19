.class public Lp3/a/n1/j1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/j1$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/j1$c;


# direct methods
.method public constructor <init>(Lp3/a/n1/j1$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/j1$c$a;->a:Lp3/a/n1/j1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lp3/a/n1/j1$c$a;->a:Lp3/a/n1/j1$c;

    .line 2
    iget-object p1, p1, Lp3/a/n1/j1$c;->a:Lp3/a/n1/x;

    .line 3
    sget-object v0, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v1, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    invoke-interface {p1, v0}, Lp3/a/n1/t1;->f(Lp3/a/g1;)V

    return-void
.end method

.method public b(J)V
    .locals 0

    return-void
.end method
