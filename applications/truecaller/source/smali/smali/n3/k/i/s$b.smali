.class public abstract Ln3/k/i/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/i/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/k/i/s$b;->a:I

    .line 3
    iput-object p2, p0, Ln3/k/i/s$b;->b:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Ln3/k/i/s$b;->d:I

    .line 5
    iput p3, p0, Ln3/k/i/s$b;->c:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Ln3/k/i/s$b;->a:I

    .line 8
    iput-object p2, p0, Ln3/k/i/s$b;->b:Ljava/lang/Class;

    .line 9
    iput p3, p0, Ln3/k/i/s$b;->d:I

    .line 10
    iput p4, p0, Ln3/k/i/s$b;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    move p2, v0

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_1
    if-ne p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public abstract b(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract c(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public d(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Ln3/k/i/s$b;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ln3/k/i/s$b;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget v0, p0, Ln3/k/i/s$b;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-object v0, p0, Ln3/k/i/s$b;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Ln3/k/i/s$b;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2}, Ln3/k/i/s$b;->c(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Ln3/k/i/s$b;->d(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ln3/k/i/s$b;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {p1}, Ln3/k/i/s;->e(Landroid/view/View;)Ln3/k/i/a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Ln3/k/i/a;

    invoke-direct {v0}, Ln3/k/i/a;-><init>()V

    .line 6
    :cond_2
    invoke-static {p1, v0}, Ln3/k/i/s;->q(Landroid/view/View;Ln3/k/i/a;)V

    .line 7
    iget v0, p0, Ln3/k/i/s$b;->a:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    iget p2, p0, Ln3/k/i/s$b;->d:I

    invoke-static {p1, p2}, Ln3/k/i/s;->j(Landroid/view/View;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method
