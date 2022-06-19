.class public final synthetic Le/a/i4/x/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i4/x/c;->a:Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Le/a/i4/x/c;->a:Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
