.class public final Lp3/a/n1/h2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/h2;


# direct methods
.method public constructor <init>(Lp3/a/n1/h2;Lp3/a/n1/h2$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/h2$c;->a:Lp3/a/n1/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/h2$c;->a:Lp3/a/n1/h2;

    .line 2
    iget-object v1, v0, Lp3/a/n1/h2;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v2, Lp3/a/n1/h2$b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lp3/a/n1/h2$b;-><init>(Lp3/a/n1/h2;Lp3/a/n1/h2$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
