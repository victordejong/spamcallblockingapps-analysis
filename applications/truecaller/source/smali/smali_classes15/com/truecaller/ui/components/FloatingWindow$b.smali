.class public Lcom/truecaller/ui/components/FloatingWindow$b;
.super Le/a/o5/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/components/FloatingWindow;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/truecaller/ui/components/FloatingWindow;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/FloatingWindow;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$b;->b:Lcom/truecaller/ui/components/FloatingWindow;

    iput p2, p0, Lcom/truecaller/ui/components/FloatingWindow$b;->a:I

    invoke-direct {p0}, Le/a/o5/p1;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/truecaller/ui/components/FloatingWindow$b;->a:I

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$b;->b:Lcom/truecaller/ui/components/FloatingWindow;

    sget-object v0, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->UNDEFINED:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    invoke-virtual {p1, v0}, Lcom/truecaller/ui/components/FloatingWindow;->c(Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V

    :cond_0
    return-void
.end method
