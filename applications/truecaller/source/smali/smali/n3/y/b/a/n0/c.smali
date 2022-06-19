.class public final Ln3/y/b/a/n0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ln3/y/b/a/n0/c;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Landroid/media/AudioAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ln3/y/b/a/n0/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Ln3/y/b/a/n0/c;-><init>(IIILn3/y/b/a/n0/c$a;)V

    .line 2
    sput-object v0, Ln3/y/b/a/n0/c;->e:Ln3/y/b/a/n0/c;

    return-void
.end method

.method public constructor <init>(IIILn3/y/b/a/n0/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/b/a/n0/c;->a:I

    .line 3
    iput p2, p0, Ln3/y/b/a/n0/c;->b:I

    .line 4
    iput p3, p0, Ln3/y/b/a/n0/c;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/media/AudioAttributes;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/c;->d:Landroid/media/AudioAttributes;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Ln3/y/b/a/n0/c;->a:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Ln3/y/b/a/n0/c;->b:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Ln3/y/b/a/n0/c;->c:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/n0/c;->d:Landroid/media/AudioAttributes;

    .line 7
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/n0/c;->d:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Ln3/y/b/a/n0/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Ln3/y/b/a/n0/c;

    .line 3
    iget v2, p0, Ln3/y/b/a/n0/c;->a:I

    iget v3, p1, Ln3/y/b/a/n0/c;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ln3/y/b/a/n0/c;->b:I

    iget v3, p1, Ln3/y/b/a/n0/c;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ln3/y/b/a/n0/c;->c:I

    iget p1, p1, Ln3/y/b/a/n0/c;->c:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/c;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Ln3/y/b/a/n0/c;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Ln3/y/b/a/n0/c;->c:I

    add-int/2addr v1, v0

    return v1
.end method
