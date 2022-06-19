.class public Lp3/a/n1/i2$w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/i2$w;->e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/i2$w;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2$w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/i2$w$b;->a:Lp3/a/n1/i2$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2$w$b;->a:Lp3/a/n1/i2$w;

    iget-object v0, v0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 2
    iget-object v0, v0, Lp3/a/n1/i2;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v1, Lp3/a/n1/i2$w$b$a;

    invoke-direct {v1, p0}, Lp3/a/n1/i2$w$b$a;-><init>(Lp3/a/n1/i2$w$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
