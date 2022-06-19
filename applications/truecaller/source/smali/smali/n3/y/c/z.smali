.class public Ln3/y/c/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/c/m$j;


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:Ln3/y/c/c1;

.field public final synthetic c:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;Landroidx/media2/common/MediaItem;Ln3/y/c/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/z;->c:Ln3/y/c/m;

    iput-object p2, p0, Ln3/y/c/z;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Ln3/y/c/z;->b:Ln3/y/c/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/c/x0$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/c/z;->c:Ln3/y/c/m;

    iget-object v1, p0, Ln3/y/c/z;->a:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Ln3/y/c/z;->b:Ln3/y/c/c1;

    invoke-virtual {p1, v0, v1, v2}, Ln3/y/c/x0$b;->f(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;Ln3/y/c/c1;)V

    return-void
.end method
