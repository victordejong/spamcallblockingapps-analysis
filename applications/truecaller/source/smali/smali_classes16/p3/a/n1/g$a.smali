.class public Lp3/a/n1/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/g;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp3/a/n1/g;


# direct methods
.method public constructor <init>(Lp3/a/n1/g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/g$a;->b:Lp3/a/n1/g;

    iput p2, p0, Lp3/a/n1/g$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/g$a;->b:Lp3/a/n1/g;

    .line 2
    iget-object v0, v0, Lp3/a/n1/g;->c:Lp3/a/n1/u1;

    .line 3
    invoke-virtual {v0}, Lp3/a/n1/u1;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/g$a;->b:Lp3/a/n1/g;

    .line 5
    iget-object v0, v0, Lp3/a/n1/g;->c:Lp3/a/n1/u1;

    .line 6
    iget v1, p0, Lp3/a/n1/g$a;->a:I

    invoke-virtual {v0, v1}, Lp3/a/n1/u1;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lp3/a/n1/g$a;->b:Lp3/a/n1/g;

    .line 8
    iget-object v1, v1, Lp3/a/n1/g;->b:Lp3/a/n1/h;

    .line 9
    iget-object v2, v1, Lp3/a/n1/h;->a:Lp3/a/n1/h$d;

    new-instance v3, Lp3/a/n1/h$c;

    invoke-direct {v3, v1, v0}, Lp3/a/n1/h$c;-><init>(Lp3/a/n1/h;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lp3/a/n1/h$d;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lp3/a/n1/g$a;->b:Lp3/a/n1/g;

    .line 11
    iget-object v0, v0, Lp3/a/n1/g;->c:Lp3/a/n1/u1;

    .line 12
    invoke-virtual {v0}, Lp3/a/n1/u1;->close()V

    :goto_0
    return-void
.end method
