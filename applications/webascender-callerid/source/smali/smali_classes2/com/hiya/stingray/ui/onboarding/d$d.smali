.class final Lcom/hiya/stingray/ui/onboarding/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/onboarding/d;->p1(Lcom/hiya/stingray/manager/d3$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/onboarding/d;

.field final synthetic g:Lcom/hiya/stingray/manager/d3$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/onboarding/d;Lcom/hiya/stingray/manager/d3$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/onboarding/d$d;->f:Lcom/hiya/stingray/ui/onboarding/d;

    iput-object p2, p0, Lcom/hiya/stingray/ui/onboarding/d$d;->g:Lcom/hiya/stingray/manager/d3$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/onboarding/d$d;->f:Lcom/hiya/stingray/ui/onboarding/d;

    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d$d;->g:Lcom/hiya/stingray/manager/d3$a;

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/onboarding/d;->h1(Lcom/hiya/stingray/ui/onboarding/d;Lcom/hiya/stingray/manager/d3$a;)V

    return-void
.end method
