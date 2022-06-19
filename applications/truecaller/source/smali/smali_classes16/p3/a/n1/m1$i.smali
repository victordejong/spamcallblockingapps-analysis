.class public Lp3/a/n1/m1$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$i;->a:Lp3/a/n1/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$i;->a:Lp3/a/n1/m1;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lp3/a/n1/m1;->c0:Lp3/a/k1$c;

    .line 3
    iget-object v1, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    invoke-virtual {v1}, Lp3/a/k1;->d()V

    .line 4
    iget-boolean v1, v0, Lp3/a/n1/m1;->z:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Lp3/a/n1/m1;->y:Lp3/a/r0;

    invoke-virtual {v0}, Lp3/a/r0;->b()V

    :cond_0
    return-void
.end method
