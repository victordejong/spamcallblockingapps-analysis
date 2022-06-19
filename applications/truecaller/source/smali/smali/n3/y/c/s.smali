.class public Ln3/y/c/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/s;->a:Ln3/y/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/c/s;->a:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    .line 2
    iget-object v0, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 3
    iget v0, v0, Ln3/y/b/a/k0;->t:F

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
