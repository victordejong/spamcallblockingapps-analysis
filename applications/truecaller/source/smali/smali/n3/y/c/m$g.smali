.class public Ln3/y/c/m$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/c/m$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/c/m;->i(Landroidx/media2/common/MediaItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:I

.field public final synthetic c:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;Landroidx/media2/common/MediaItem;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/m$g;->c:Ln3/y/c/m;

    iput-object p2, p0, Ln3/y/c/m$g;->a:Landroidx/media2/common/MediaItem;

    iput p3, p0, Ln3/y/c/m$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/c/x0$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/m$g;->c:Ln3/y/c/m;

    iget-object v1, p0, Ln3/y/c/m$g;->a:Landroidx/media2/common/MediaItem;

    iget v2, p0, Ln3/y/c/m$g;->b:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Ln3/y/c/x0$b;->b(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;II)V

    return-void
.end method
