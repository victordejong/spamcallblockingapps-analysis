.class public abstract Ln3/r/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/r/a/f0$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/r/a/f0$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public m:Ljava/lang/CharSequence;

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z


# direct methods
.method public constructor <init>(Ln3/r/a/t;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/r/a/f0;->a:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ln3/r/a/f0;->h:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Ln3/r/a/f0;->p:Z

    return-void
.end method


# virtual methods
.method public b(ILandroidx/fragment/app/Fragment;)Ln3/r/a/f0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ln3/r/a/f0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, p1, p2, v1}, Ln3/r/a/f0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public d(Ln3/r/a/f0$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p0, Ln3/r/a/f0;->b:I

    iput v0, p1, Ln3/r/a/f0$a;->c:I

    .line 3
    iget v0, p0, Ln3/r/a/f0;->c:I

    iput v0, p1, Ln3/r/a/f0$a;->d:I

    .line 4
    iget v0, p0, Ln3/r/a/f0;->d:I

    iput v0, p1, Ln3/r/a/f0$a;->e:I

    .line 5
    iget v0, p0, Ln3/r/a/f0;->e:I

    iput v0, p1, Ln3/r/a/f0$a;->f:I

    return-void
.end method

.method public e(Ljava/lang/String;)Ln3/r/a/f0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/r/a/f0;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln3/r/a/f0;->g:Z

    .line 3
    iput-object p1, p0, Ln3/r/a/f0;->i:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public j()Ln3/r/a/f0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/r/a/f0;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/r/a/f0;->h:Z

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method

.method public abstract l(Landroidx/fragment/app/Fragment;)Ln3/r/a/f0;
.end method

.method public m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Ln3/r/a/f0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(II)Ln3/r/a/f0;
    .locals 0

    .line 1
    iput p1, p0, Ln3/r/a/f0;->b:I

    .line 2
    iput p2, p0, Ln3/r/a/f0;->c:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Ln3/r/a/f0;->d:I

    .line 4
    iput p1, p0, Ln3/r/a/f0;->e:I

    return-object p0
.end method

.method public o(IIII)Ln3/r/a/f0;
    .locals 0

    .line 1
    iput p1, p0, Ln3/r/a/f0;->b:I

    .line 2
    iput p2, p0, Ln3/r/a/f0;->c:I

    .line 3
    iput p3, p0, Ln3/r/a/f0;->d:I

    .line 4
    iput p4, p0, Ln3/r/a/f0;->e:I

    return-object p0
.end method

.method public abstract p(Landroidx/fragment/app/Fragment;Ln3/v/u$b;)Ln3/r/a/f0;
.end method
