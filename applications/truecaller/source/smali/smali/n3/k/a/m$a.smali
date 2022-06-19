.class public final Ln3/k/a/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/core/graphics/drawable/IconCompat;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Landroid/app/PendingIntent;

.field public d:Z

.field public final e:Landroid/os/Bundle;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/k/a/z;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 2
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    move-object v2, v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Ln3/k/a/m$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ln3/k/a/z;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 10

    .line 1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Ln3/k/a/m$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ln3/k/a/z;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ln3/k/a/z;ZIZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x1

    .line 4
    iput-boolean p5, p0, Ln3/k/a/m$a;->d:Z

    .line 5
    iput-boolean p5, p0, Ln3/k/a/m$a;->h:Z

    .line 6
    iput-object p1, p0, Ln3/k/a/m$a;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 7
    invoke-static {p2}, Ln3/k/a/q;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ln3/k/a/m$a;->b:Ljava/lang/CharSequence;

    .line 8
    iput-object p3, p0, Ln3/k/a/m$a;->c:Landroid/app/PendingIntent;

    .line 9
    iput-object p4, p0, Ln3/k/a/m$a;->e:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Ln3/k/a/m$a;->f:Ljava/util/ArrayList;

    .line 11
    iput-boolean p6, p0, Ln3/k/a/m$a;->d:Z

    .line 12
    iput p7, p0, Ln3/k/a/m$a;->g:I

    .line 13
    iput-boolean p8, p0, Ln3/k/a/m$a;->h:Z

    .line 14
    iput-boolean p9, p0, Ln3/k/a/m$a;->i:Z

    return-void
.end method


# virtual methods
.method public a(Ln3/k/a/z;)Ln3/k/a/m$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/a/m$a;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/k/a/m$a;->f:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/k/a/m$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Ln3/k/a/m;
    .locals 15

    .line 1
    iget-boolean v0, p0, Ln3/k/a/m$a;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/k/a/m$a;->c:Landroid/app/PendingIntent;

    const-string v1, "Contextual Actions must contain a valid PendingIntent"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Ln3/k/a/m$a;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/k/a/z;

    .line 8
    iget-boolean v4, v3, Ln3/k/a/z;->d:Z

    if-nez v4, :cond_2

    .line 9
    iget-object v4, v3, Ln3/k/a/z;->c:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 10
    array-length v4, v4

    if-nez v4, :cond_2

    .line 11
    :cond_1
    iget-object v4, v3, Ln3/k/a/z;->g:Ljava/util/Set;

    if-eqz v4, :cond_2

    .line 12
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    move-object v10, v3

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ln3/k/a/z;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/k/a/z;

    move-object v10, v0

    .line 17
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 18
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ln3/k/a/z;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ln3/k/a/z;

    :goto_4
    move-object v9, v3

    .line 19
    new-instance v0, Ln3/k/a/m;

    iget-object v5, p0, Ln3/k/a/m$a;->a:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v6, p0, Ln3/k/a/m$a;->b:Ljava/lang/CharSequence;

    iget-object v7, p0, Ln3/k/a/m$a;->c:Landroid/app/PendingIntent;

    iget-object v8, p0, Ln3/k/a/m$a;->e:Landroid/os/Bundle;

    iget-boolean v11, p0, Ln3/k/a/m$a;->d:Z

    iget v12, p0, Ln3/k/a/m$a;->g:I

    iget-boolean v13, p0, Ln3/k/a/m$a;->h:Z

    iget-boolean v14, p0, Ln3/k/a/m$a;->i:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Ln3/k/a/m;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ln3/k/a/z;[Ln3/k/a/z;ZIZZ)V

    return-object v0
.end method
