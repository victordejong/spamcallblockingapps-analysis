.class public final Ln3/k/a/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/app/PendingIntent;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/app/PendingIntent;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bubble requires non-null pending intent"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Ln3/k/a/p$a;->a:Landroid/app/PendingIntent;

    .line 8
    iput-object p2, p0, Ln3/k/a/p$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Ln3/k/a/p$a;->g:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bubble requires a non-null shortcut id"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ln3/k/a/p;
    .locals 11

    .line 1
    iget-object v7, p0, Ln3/k/a/p$a;->g:Ljava/lang/String;

    if-nez v7, :cond_0

    iget-object v0, p0, Ln3/k/a/p$a;->a:Landroid/app/PendingIntent;

    const-string v1, "Must supply pending intent or shortcut to bubble"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    if-nez v7, :cond_1

    .line 3
    iget-object v0, p0, Ln3/k/a/p$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    const-string v1, "Must supply an icon or shortcut for the bubble"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    :cond_1
    new-instance v9, Ln3/k/a/p;

    iget-object v1, p0, Ln3/k/a/p$a;->a:Landroid/app/PendingIntent;

    iget-object v2, p0, Ln3/k/a/p$a;->f:Landroid/app/PendingIntent;

    iget-object v3, p0, Ln3/k/a/p$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    iget v4, p0, Ln3/k/a/p$a;->c:I

    iget v5, p0, Ln3/k/a/p$a;->d:I

    iget v10, p0, Ln3/k/a/p$a;->e:I

    const/4 v8, 0x0

    move-object v0, v9

    move v6, v10

    invoke-direct/range {v0 .. v8}, Ln3/k/a/p;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Ln3/k/a/l;)V

    .line 6
    iput v10, v9, Ln3/k/a/p;->f:I

    return-object v9
.end method

.method public b(Z)Ln3/k/a/p$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Ln3/k/a/p$a;->e:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Ln3/k/a/p$a;->e:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Ln3/k/a/p$a;->e:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Ln3/k/a/p$a;->e:I

    :goto_0
    return-object p0
.end method

.method public c(I)Ln3/k/a/p$a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ln3/k/a/p$a;->c:I

    .line 2
    iput v0, p0, Ln3/k/a/p$a;->d:I

    return-object p0
.end method

.method public d(Z)Ln3/k/a/p$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Ln3/k/a/p$a;->e:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Ln3/k/a/p$a;->e:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Ln3/k/a/p$a;->e:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Ln3/k/a/p$a;->e:I

    :goto_0
    return-object p0
.end method
