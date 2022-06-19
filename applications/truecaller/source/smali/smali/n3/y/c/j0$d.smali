.class public final Ln3/y/c/j0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/c/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/media2/common/MediaItem;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroidx/media2/common/MediaItem;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/c/j0$d;->a:Landroidx/media2/common/MediaItem;

    .line 3
    iput-boolean p2, p0, Ln3/y/c/j0$d;->b:Z

    return-void
.end method
