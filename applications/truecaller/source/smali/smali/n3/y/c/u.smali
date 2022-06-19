.class public Ln3/y/c/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/media2/common/SessionPlayer$TrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/u;->b:Ln3/y/c/m;

    iput p2, p0, Ln3/y/c/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/c/u;->b:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    iget v1, p0, Ln3/y/c/u;->a:I

    .line 2
    iget-object v0, v0, Ln3/y/c/j0;->j:Ln3/y/c/d1;

    invoke-virtual {v0, v1}, Ln3/y/c/d1;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    return-object v0
.end method
