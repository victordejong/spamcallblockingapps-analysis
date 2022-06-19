.class Landroidx/appcompat/app/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/h/l/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f;->T()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lf/h/l/b0;)Lf/h/l/b0;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lf/h/l/b0;->h()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroidx/appcompat/app/f;->O0(Lf/h/l/b0;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lf/h/l/b0;->f()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lf/h/l/b0;->g()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Lf/h/l/b0;->e()I

    move-result v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, v3}, Lf/h/l/b0;->m(IIII)Lf/h/l/b0;

    move-result-object p2

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lf/h/l/t;->X(Landroid/view/View;Lf/h/l/b0;)Lf/h/l/b0;

    move-result-object p1

    return-object p1
.end method
