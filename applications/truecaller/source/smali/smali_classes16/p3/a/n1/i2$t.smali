.class public final Lp3/a/n1/i2$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "t"
.end annotation


# instance fields
.field public final a:Lp3/a/n1/i2$s;

.field public final synthetic b:Lp3/a/n1/i2;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2;Lp3/a/n1/i2$s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/i2$t;->b:Lp3/a/n1/i2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lp3/a/n1/i2$t;->a:Lp3/a/n1/i2$s;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2$t;->b:Lp3/a/n1/i2;

    .line 2
    iget-object v0, v0, Lp3/a/n1/i2;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v1, Lp3/a/n1/i2$t$a;

    invoke-direct {v1, p0}, Lp3/a/n1/i2$t$a;-><init>(Lp3/a/n1/i2$t;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
