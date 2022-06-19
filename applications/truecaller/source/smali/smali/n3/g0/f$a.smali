.class public Ln3/g0/f$a;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/g0/f;->P(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Ln3/g0/f;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/g0/f$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ln3/g0/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/g0/f$a;->a:Landroid/view/View;

    .line 2
    sget-object v1, Ln3/g0/z;->a:Ln3/g0/f0;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Ln3/g0/f0;->e(Landroid/view/View;F)V

    .line 3
    iget-object v0, p0, Ln3/g0/f$a;->a:Landroid/view/View;

    .line 4
    invoke-virtual {v1, v0}, Ln3/g0/f0;->a(Landroid/view/View;)V

    .line 5
    invoke-virtual {p1, p0}, Ln3/g0/m;->y(Ln3/g0/m$d;)Ln3/g0/m;

    return-void
.end method
