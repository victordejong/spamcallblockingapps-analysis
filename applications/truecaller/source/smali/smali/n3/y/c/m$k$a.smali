.class public Ln3/y/c/m$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/c/m$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/c/m$k;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln3/y/c/m$k;


# direct methods
.method public constructor <init>(Ln3/y/c/m$k;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/m$k$a;->b:Ln3/y/c/m$k;

    iput p2, p0, Ln3/y/c/m$k$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/c/x0$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/m$k$a;->b:Ln3/y/c/m$k;

    iget-object v1, v0, Ln3/y/c/m$k;->e:Ln3/y/c/m;

    iget-object v2, v0, Ln3/y/c/m$k;->c:Landroidx/media2/common/MediaItem;

    iget v0, v0, Ln3/y/c/m$k;->a:I

    iget v3, p0, Ln3/y/c/m$k$a;->a:I

    invoke-virtual {p1, v1, v2, v0, v3}, Ln3/y/c/x0$b;->a(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;II)V

    return-void
.end method
