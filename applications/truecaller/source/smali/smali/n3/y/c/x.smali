.class public Ln3/y/c/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/c/m$j;


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/x;->d:Ln3/y/c/m;

    iput-object p2, p0, Ln3/y/c/x;->a:Landroidx/media2/common/MediaItem;

    iput p3, p0, Ln3/y/c/x;->b:I

    iput p4, p0, Ln3/y/c/x;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/c/x0$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/x;->d:Ln3/y/c/m;

    iget-object v1, p0, Ln3/y/c/x;->a:Landroidx/media2/common/MediaItem;

    iget v2, p0, Ln3/y/c/x;->b:I

    iget v3, p0, Ln3/y/c/x;->c:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ln3/y/c/x0$b;->h(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;II)V

    return-void
.end method
