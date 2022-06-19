.class public final Landroidx/media2/session/SessionCommandParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/SessionCommand;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/session/SessionCommand;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommand;-><init>()V

    .line 2
    iget v1, v0, Landroidx/media2/session/SessionCommand;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->r(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/SessionCommand;->a:I

    .line 3
    iget-object v1, v0, Landroidx/media2/session/SessionCommand;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->x(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionCommand;->b:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Landroidx/media2/session/SessionCommand;->c:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->i(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/session/SessionCommand;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionCommand;Ln3/i0/c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroidx/media2/session/SessionCommand;->a:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 4
    invoke-virtual {p1, v0}, Ln3/i0/c;->I(I)V

    .line 5
    iget-object v0, p0, Landroidx/media2/session/SessionCommand;->b:Ljava/lang/String;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1}, Ln3/i0/c;->B(I)V

    .line 7
    invoke-virtual {p1, v0}, Ln3/i0/c;->L(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Landroidx/media2/session/SessionCommand;->c:Landroid/os/Bundle;

    const/4 v0, 0x3

    .line 9
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 10
    invoke-virtual {p1, p0}, Ln3/i0/c;->D(Landroid/os/Bundle;)V

    return-void
.end method
