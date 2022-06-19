.class public Ln3/g0/c$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/g0/c;->m(Landroid/view/ViewGroup;Ln3/g0/u;Ln3/g0/u;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/g0/c$i;

.field private mViewBounds:Ln3/g0/c$i;


# direct methods
.method public constructor <init>(Ln3/g0/c;Ln3/g0/c$i;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/g0/c$g;->a:Ln3/g0/c$i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Ln3/g0/c$g;->mViewBounds:Ln3/g0/c$i;

    return-void
.end method
