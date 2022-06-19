.class public final Le/a/c/a/n/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/n/e/c;->a:Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/n/e/c;->a:Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;

    .line 2
    sget v1, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->e:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->pa()Le/a/c/a/g/e;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/c/a/g/e;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.emptyState"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method
