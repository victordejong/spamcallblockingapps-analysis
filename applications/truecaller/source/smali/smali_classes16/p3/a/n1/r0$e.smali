.class public Lp3/a/n1/r0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/r0;->f(Lp3/a/i0$e;Z)Lp3/a/n1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/u;

.field public final synthetic b:Lp3/a/j$a;


# direct methods
.method public constructor <init>(Lp3/a/n1/u;Lp3/a/j$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/r0$e;->a:Lp3/a/n1/u;

    iput-object p2, p0, Lp3/a/n1/r0$e;->b:Lp3/a/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lp3/a/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/r0$e;->a:Lp3/a/n1/u;

    invoke-interface {v0}, Lp3/a/d0;->b()Lp3/a/e0;

    move-result-object v0

    return-object v0
.end method

.method public e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/p0<",
            "**>;",
            "Lp3/a/o0;",
            "Lp3/a/c;",
            ")",
            "Lp3/a/n1/s;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/r0$e;->a:Lp3/a/n1/u;

    iget-object v1, p0, Lp3/a/n1/r0$e;->b:Lp3/a/j$a;

    .line 2
    invoke-virtual {p3, v1}, Lp3/a/c;->g(Lp3/a/j$a;)Lp3/a/c;

    move-result-object p3

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lp3/a/n1/u;->e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;

    move-result-object p1

    return-object p1
.end method
