.class public Lcom/truecaller/ui/components/FloatingWindow$a;
.super Le/a/o5/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/components/FloatingWindow;->b(Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

.field public final synthetic b:Lcom/truecaller/ui/components/FloatingWindow;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/FloatingWindow;Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$a;->b:Lcom/truecaller/ui/components/FloatingWindow;

    iput-object p2, p0, Lcom/truecaller/ui/components/FloatingWindow$a;->a:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    invoke-direct {p0}, Le/a/o5/p1;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$a;->b:Lcom/truecaller/ui/components/FloatingWindow;

    iget-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow$a;->a:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    invoke-virtual {p1, v0}, Lcom/truecaller/ui/components/FloatingWindow;->c(Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V

    return-void
.end method
