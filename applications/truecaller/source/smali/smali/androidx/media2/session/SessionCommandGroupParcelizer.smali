.class public final Landroidx/media2/session/SessionCommandGroupParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ln3/i0/c;)Landroidx/media2/session/SessionCommandGroup;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media2/session/SessionCommandGroup;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommandGroup;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/media2/session/SessionCommandGroup;->a:Ljava/util/Set;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v2}, Ln3/i0/c;->n(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ln3/g/c;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, v2}, Ln3/g/c;-><init>(I)V

    .line 6
    invoke-virtual {p0, v1}, Ln3/i0/c;->m(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    .line 7
    :goto_0
    iput-object v1, v0, Landroidx/media2/session/SessionCommandGroup;->a:Ljava/util/Set;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionCommandGroup;Ln3/i0/c;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Landroidx/media2/session/SessionCommandGroup;->a:Ljava/util/Set;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, p0, v0}, Ln3/i0/c;->G(Ljava/util/Collection;I)V

    return-void
.end method
