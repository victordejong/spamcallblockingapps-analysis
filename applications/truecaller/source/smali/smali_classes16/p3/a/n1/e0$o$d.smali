.class public Lp3/a/n1/e0$o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/e0$o;->c(Lp3/a/g1;Lp3/a/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/g1;

.field public final synthetic b:Lp3/a/o0;

.field public final synthetic c:Lp3/a/n1/e0$o;


# direct methods
.method public constructor <init>(Lp3/a/n1/e0$o;Lp3/a/g1;Lp3/a/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/e0$o$d;->c:Lp3/a/n1/e0$o;

    iput-object p2, p0, Lp3/a/n1/e0$o$d;->a:Lp3/a/g1;

    iput-object p3, p0, Lp3/a/n1/e0$o$d;->b:Lp3/a/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0$o$d;->c:Lp3/a/n1/e0$o;

    .line 2
    iget-object v0, v0, Lp3/a/n1/e0$o;->a:Lp3/a/n1/t;

    .line 3
    iget-object v1, p0, Lp3/a/n1/e0$o$d;->a:Lp3/a/g1;

    iget-object v2, p0, Lp3/a/n1/e0$o$d;->b:Lp3/a/o0;

    invoke-interface {v0, v1, v2}, Lp3/a/n1/t;->c(Lp3/a/g1;Lp3/a/o0;)V

    return-void
.end method
