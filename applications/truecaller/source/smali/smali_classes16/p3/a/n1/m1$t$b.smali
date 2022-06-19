.class public final Lp3/a/n1/m1$t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1$t;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1$t;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$t$b;->a:Lp3/a/n1/m1$t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$t$b;->a:Lp3/a/n1/m1$t;

    iget-object v0, v0, Lp3/a/n1/m1$t;->f:Lp3/a/n1/a1;

    sget-object v1, Lp3/a/n1/m1;->k0:Lp3/a/g1;

    invoke-virtual {v0, v1}, Lp3/a/n1/a1;->g(Lp3/a/g1;)V

    return-void
.end method
