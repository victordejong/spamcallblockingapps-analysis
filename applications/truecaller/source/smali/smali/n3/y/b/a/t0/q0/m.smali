.class public final synthetic Ln3/y/b/a/t0/q0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/t0/q0/n$a;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/q0/n$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/q0/m;->a:Ln3/y/b/a/t0/q0/n$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ln3/y/b/a/t0/q0/m;->a:Ln3/y/b/a/t0/q0/n$a;

    check-cast v0, Ln3/y/b/a/t0/q0/i;

    invoke-virtual {v0}, Ln3/y/b/a/t0/q0/i;->s()V

    return-void
.end method
