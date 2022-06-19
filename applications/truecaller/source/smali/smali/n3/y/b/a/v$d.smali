.class public final Ln3/y/b/a/v$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:Ln3/y/b/a/d0;

.field public b:I

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Ln3/y/b/a/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/v$d;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Ln3/y/b/a/v$d;->b:I

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/v$d;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Ln3/y/b/a/v$d;->d:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    return-void

    .line 3
    :cond_1
    iput-boolean v1, p0, Ln3/y/b/a/v$d;->c:Z

    .line 4
    iput p1, p0, Ln3/y/b/a/v$d;->d:I

    return-void
.end method
