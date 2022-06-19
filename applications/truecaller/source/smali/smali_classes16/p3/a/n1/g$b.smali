.class public Lp3/a/n1/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/g;->k(Lp3/a/n1/e2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/e2;

.field public final synthetic b:Lp3/a/n1/g;


# direct methods
.method public constructor <init>(Lp3/a/n1/g;Lp3/a/n1/e2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/g$b;->b:Lp3/a/n1/g;

    iput-object p2, p0, Lp3/a/n1/g$b;->a:Lp3/a/n1/e2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/g$b;->b:Lp3/a/n1/g;

    .line 2
    iget-object v0, v0, Lp3/a/n1/g;->c:Lp3/a/n1/u1;

    .line 3
    iget-object v1, p0, Lp3/a/n1/g$b;->a:Lp3/a/n1/e2;

    invoke-virtual {v0, v1}, Lp3/a/n1/u1;->k(Lp3/a/n1/e2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lp3/a/n1/g$b;->b:Lp3/a/n1/g;

    .line 5
    iget-object v1, v1, Lp3/a/n1/g;->b:Lp3/a/n1/h;

    .line 6
    iget-object v2, v1, Lp3/a/n1/h;->a:Lp3/a/n1/h$d;

    new-instance v3, Lp3/a/n1/h$c;

    invoke-direct {v3, v1, v0}, Lp3/a/n1/h$c;-><init>(Lp3/a/n1/h;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lp3/a/n1/h$d;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lp3/a/n1/g$b;->b:Lp3/a/n1/g;

    .line 8
    iget-object v0, v0, Lp3/a/n1/g;->c:Lp3/a/n1/u1;

    .line 9
    invoke-virtual {v0}, Lp3/a/n1/u1;->close()V

    :goto_0
    return-void
.end method
