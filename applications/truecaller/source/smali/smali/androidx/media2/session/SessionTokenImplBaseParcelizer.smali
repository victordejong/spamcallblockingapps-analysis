.class public final Landroidx/media2/session/SessionTokenImplBaseParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/SessionTokenImplBase;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/session/SessionTokenImplBase;

    invoke-direct {v0}, Landroidx/media2/session/SessionTokenImplBase;-><init>()V

    .line 2
    iget v1, v0, Landroidx/media2/session/SessionTokenImplBase;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/SessionTokenImplBase;->a:I

    .line 3
    iget v1, v0, Landroidx/media2/session/SessionTokenImplBase;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/SessionTokenImplBase;->b:I

    .line 4
    iget-object v1, v0, Landroidx/media2/session/SessionTokenImplBase;->c:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->x(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionTokenImplBase;->c:Ljava/lang/String;

    .line 5
    iget-object v1, v0, Landroidx/media2/session/SessionTokenImplBase;->d:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->x(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionTokenImplBase;->d:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Landroidx/media2/session/SessionTokenImplBase;->e:Landroid/os/IBinder;

    const/4 v2, 0x5

    .line 7
    invoke-virtual {p0, v2}, Ln3/i0/c;->n(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ln3/i0/c;->y()Landroid/os/IBinder;

    move-result-object v1

    .line 9
    :goto_0
    iput-object v1, v0, Landroidx/media2/session/SessionTokenImplBase;->e:Landroid/os/IBinder;

    .line 10
    iget-object v1, v0, Landroidx/media2/session/SessionTokenImplBase;->f:Landroid/content/ComponentName;

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->v(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, v0, Landroidx/media2/session/SessionTokenImplBase;->f:Landroid/content/ComponentName;

    .line 11
    iget-object v1, v0, Landroidx/media2/session/SessionTokenImplBase;->g:Landroid/os/Bundle;

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->i(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/session/SessionTokenImplBase;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionTokenImplBase;Ln3/i0/c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroidx/media2/session/SessionTokenImplBase;->a:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 4
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 5
    iget v0, p0, Landroidx/media2/session/SessionTokenImplBase;->b:I

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 7
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 8
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->c:Ljava/lang/String;

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 10
    invoke-virtual {p1, v0}, Ln3/i0/c;->L(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->d:Ljava/lang/String;

    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 13
    invoke-virtual {p1, v0}, Ln3/i0/c;->L(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->e:Landroid/os/IBinder;

    const/4 v1, 0x5

    .line 15
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 16
    invoke-virtual {p1, v0}, Ln3/i0/c;->M(Landroid/os/IBinder;)V

    .line 17
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->f:Landroid/content/ComponentName;

    const/4 v1, 0x6

    .line 18
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 19
    invoke-virtual {p1, v0}, Ln3/i0/c;->K(Landroid/os/Parcelable;)V

    .line 20
    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplBase;->g:Landroid/os/Bundle;

    const/4 v0, 0x7

    .line 21
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 22
    invoke-virtual {p1, p0}, Ln3/i0/c;->D(Landroid/os/Bundle;)V

    return-void
.end method
