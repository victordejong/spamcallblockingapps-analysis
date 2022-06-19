.class public Ln3/v/i0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/v/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Ln3/v/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/l0<",
            "-TV;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TV;>;",
            "Ln3/v/l0<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ln3/v/i0$a;->c:I

    .line 3
    iput-object p1, p0, Ln3/v/i0$a;->a:Landroidx/lifecycle/LiveData;

    .line 4
    iput-object p2, p0, Ln3/v/i0$a;->b:Ln3/v/l0;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Ln3/v/i0$a;->c:I

    iget-object v1, p0, Ln3/v/i0$a;->a:Landroidx/lifecycle/LiveData;

    .line 2
    iget v1, v1, Landroidx/lifecycle/LiveData;->g:I

    if-eq v0, v1, :cond_0

    .line 3
    iput v1, p0, Ln3/v/i0$a;->c:I

    .line 4
    iget-object v0, p0, Ln3/v/i0$a;->b:Ln3/v/l0;

    invoke-interface {v0, p1}, Ln3/v/l0;->onChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
