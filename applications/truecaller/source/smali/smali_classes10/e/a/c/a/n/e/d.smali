.class public final Le/a/c/a/n/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/n/e/d;->a:Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/c/a/n/e/d;->a:Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
