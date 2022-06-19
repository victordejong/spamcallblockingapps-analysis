.class public Lcom/truecaller/ui/components/CyclicProgressBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/components/CyclicProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/CyclicProgressBar;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/CyclicProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/CyclicProgressBar$b;->a:Lcom/truecaller/ui/components/CyclicProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar$b;->a:Lcom/truecaller/ui/components/CyclicProgressBar;

    .line 2
    sget-object v1, Lcom/truecaller/ui/components/CyclicProgressBar;->j:Landroid/view/animation/Interpolator;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar$b;->a:Lcom/truecaller/ui/components/CyclicProgressBar;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar$b;->a:Lcom/truecaller/ui/components/CyclicProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
