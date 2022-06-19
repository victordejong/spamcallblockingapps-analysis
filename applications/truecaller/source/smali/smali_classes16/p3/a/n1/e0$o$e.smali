.class public Lp3/a/n1/e0$o$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/e0$o;->e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/g1;

.field public final synthetic b:Lp3/a/n1/t$a;

.field public final synthetic c:Lp3/a/o0;

.field public final synthetic d:Lp3/a/n1/e0$o;


# direct methods
.method public constructor <init>(Lp3/a/n1/e0$o;Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/e0$o$e;->d:Lp3/a/n1/e0$o;

    iput-object p2, p0, Lp3/a/n1/e0$o$e;->a:Lp3/a/g1;

    iput-object p3, p0, Lp3/a/n1/e0$o$e;->b:Lp3/a/n1/t$a;

    iput-object p4, p0, Lp3/a/n1/e0$o$e;->c:Lp3/a/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0$o$e;->d:Lp3/a/n1/e0$o;

    .line 2
    iget-object v0, v0, Lp3/a/n1/e0$o;->a:Lp3/a/n1/t;

    .line 3
    iget-object v1, p0, Lp3/a/n1/e0$o$e;->a:Lp3/a/g1;

    iget-object v2, p0, Lp3/a/n1/e0$o$e;->b:Lp3/a/n1/t$a;

    iget-object v3, p0, Lp3/a/n1/e0$o$e;->c:Lp3/a/o0;

    invoke-interface {v0, v1, v2, v3}, Lp3/a/n1/t;->e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V

    return-void
.end method
