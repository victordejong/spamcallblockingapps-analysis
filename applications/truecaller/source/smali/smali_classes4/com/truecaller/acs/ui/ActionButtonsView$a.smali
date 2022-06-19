.class public final Lcom/truecaller/acs/ui/ActionButtonsView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/f;


# direct methods
.method public constructor <init>(Le/a/g/a/f;II)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/acs/ui/ActionButtonsView$a;->a:Le/a/g/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/acs/ui/ActionButtonsView$a;->a:Le/a/g/a/f;

    .line 2
    iget-object v0, p1, Le/a/g/a/f;->b:Le/a/g/a/g;

    .line 3
    iget-object p1, p1, Le/a/g/a/f;->a:Lcom/truecaller/acs/ui/ActionButtonType;

    .line 4
    invoke-interface {v0, p1}, Le/a/g/a/g;->bg(Lcom/truecaller/acs/ui/ActionButtonType;)V

    return-void
.end method
