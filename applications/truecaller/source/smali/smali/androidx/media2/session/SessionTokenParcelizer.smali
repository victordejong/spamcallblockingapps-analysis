.class public final Landroidx/media2/session/SessionTokenParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/SessionToken;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/session/SessionToken;

    invoke-direct {v0}, Landroidx/media2/session/SessionToken;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ln3/i0/c;->A(Ln3/i0/e;I)Ln3/i0/e;

    move-result-object p0

    check-cast p0, Landroidx/media2/session/SessionToken$SessionTokenImpl;

    iput-object p0, v0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionToken;Ln3/i0/c;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Ln3/i0/c;->B(I)V

    .line 4
    invoke-virtual {p1, p0}, Ln3/i0/c;->N(Ln3/i0/e;)V

    return-void
.end method
