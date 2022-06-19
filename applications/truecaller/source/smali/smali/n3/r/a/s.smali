.class public Ln3/r/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/r/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/r/a/u<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/r/a/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/r/a/u<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/r/a/s;->a:Ln3/r/a/u;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a0()V

    return-void
.end method
