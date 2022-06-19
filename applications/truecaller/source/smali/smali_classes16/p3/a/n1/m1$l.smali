.class public final Lp3/a/n1/m1$l;
.super Lp3/a/n1/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/n1/y0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Lp3/a/n1/m1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$l;->b:Lp3/a/n1/m1;

    invoke-direct {p0}, Lp3/a/n1/y0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$l;->b:Lp3/a/n1/m1;

    invoke-virtual {v0}, Lp3/a/n1/m1;->l()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$l;->b:Lp3/a/n1/m1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/m1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/a/n1/m1$l;->b:Lp3/a/n1/m1;

    .line 5
    invoke-virtual {v0}, Lp3/a/n1/m1;->o()V

    return-void
.end method
