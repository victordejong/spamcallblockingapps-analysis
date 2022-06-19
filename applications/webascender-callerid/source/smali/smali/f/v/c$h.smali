.class Lf/v/c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v/c;->o(Landroid/view/ViewGroup;Lf/v/s;Lf/v/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/v/c$k;

.field private mViewBounds:Lf/v/c$k;


# direct methods
.method constructor <init>(Lf/v/c;Lf/v/c$k;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/v/c$h;->a:Lf/v/c$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lf/v/c$h;->mViewBounds:Lf/v/c$k;

    return-void
.end method
