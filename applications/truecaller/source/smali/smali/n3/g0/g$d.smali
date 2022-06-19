.class public Ln3/g0/g$d;
.super Ln3/g0/m$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/g0/g;->s(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ln3/g0/g;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/g0/g$d;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Ln3/g0/m$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/g0/m;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/g0/g$d;->a:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Ln3/g0/g$d;->a:Landroid/graphics/Rect;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
