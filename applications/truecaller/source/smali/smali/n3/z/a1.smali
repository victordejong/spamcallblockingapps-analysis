.class public final Ln3/z/a1;
.super Ln3/b0/a/h$b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/z/z0;

.field public final synthetic b:Ln3/z/z0;

.field public final synthetic c:Ln3/b0/a/h$e;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Ln3/z/z0;Ln3/z/z0;Ln3/b0/a/h$e;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/z/z0;",
            "Ln3/b0/a/h$e;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/z/a1;->a:Ln3/z/z0;

    iput-object p2, p0, Ln3/z/a1;->b:Ln3/z/z0;

    iput-object p3, p0, Ln3/z/a1;->c:Ln3/b0/a/h$e;

    iput p4, p0, Ln3/z/a1;->d:I

    iput p5, p0, Ln3/z/a1;->e:I

    invoke-direct {p0}, Ln3/b0/a/h$b;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/a1;->a:Ln3/z/z0;

    invoke-interface {v0, p1}, Ln3/z/z0;->e(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ln3/z/a1;->b:Ln3/z/z0;

    invoke-interface {v0, p2}, Ln3/z/z0;->e(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/z/a1;->c:Ln3/b0/a/h$e;

    invoke-virtual {v0, p1, p2}, Ln3/b0/a/h$e;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/a1;->a:Ln3/z/z0;

    invoke-interface {v0, p1}, Ln3/z/z0;->e(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ln3/z/a1;->b:Ln3/z/z0;

    invoke-interface {v0, p2}, Ln3/z/z0;->e(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/z/a1;->c:Ln3/b0/a/h$e;

    invoke-virtual {v0, p1, p2}, Ln3/b0/a/h$e;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/a1;->a:Ln3/z/z0;

    invoke-interface {v0, p1}, Ln3/z/z0;->e(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ln3/z/a1;->b:Ln3/z/z0;

    invoke-interface {v0, p2}, Ln3/z/z0;->e(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/z/a1;->c:Ln3/b0/a/h$e;

    invoke-virtual {v0, p1, p2}, Ln3/b0/a/h$e;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/z/a1;->e:I

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/z/a1;->d:I

    return v0
.end method
