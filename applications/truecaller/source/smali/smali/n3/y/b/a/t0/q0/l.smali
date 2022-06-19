.class public final synthetic Ln3/y/b/a/t0/q0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/t0/q0/n;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/q0/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/q0/l;->a:Ln3/y/b/a/t0/q0/n;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/t0/q0/l;->a:Ln3/y/b/a/t0/q0/n;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Ln3/y/b/a/t0/q0/n;->A:Z

    .line 2
    invoke-virtual {v0}, Ln3/y/b/a/t0/q0/n;->A()V

    return-void
.end method
