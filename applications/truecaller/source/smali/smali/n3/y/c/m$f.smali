.class public Ln3/y/c/m$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/c/m$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/c/m;->j(Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:Ln3/y/c/y0;

.field public final synthetic c:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/m$f;->c:Ln3/y/c/m;

    iput-object p2, p0, Ln3/y/c/m$f;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Ln3/y/c/m$f;->b:Ln3/y/c/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/c/x0$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/c/m$f;->c:Ln3/y/c/m;

    iget-object v1, p0, Ln3/y/c/m$f;->a:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Ln3/y/c/m$f;->b:Ln3/y/c/y0;

    invoke-virtual {p1, v0, v1, v2}, Ln3/y/c/x0$b;->d(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V

    return-void
.end method
