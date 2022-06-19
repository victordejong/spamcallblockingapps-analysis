.class public Ln3/y/c/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/y/b/a/n0/u;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ln3/y/b/a/n0/u;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/i0;->a:Ln3/y/b/a/n0/u;

    iput p2, p0, Ln3/y/c/i0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/c/i0;->a:Ln3/y/b/a/n0/u;

    iget v1, p0, Ln3/y/c/i0;->b:I

    .line 2
    iget v2, v0, Ln3/y/b/a/n0/u;->M:I

    if-eq v2, v1, :cond_0

    .line 3
    iput v1, v0, Ln3/y/b/a/n0/u;->M:I

    .line 4
    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->d()V

    :cond_0
    return-void
.end method
