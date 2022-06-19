.class public final synthetic Le/a/q4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/q4/v;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/d;->a:Le/a/q4/v;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Le/a/q4/d;->a:Le/a/q4/v;

    .line 1
    iget-object p1, p1, Le/a/q4/v;->k:Le/a/q4/x;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/truecaller/referral/BulkSmsView;

    invoke-interface {p1}, Lcom/truecaller/referral/BulkSmsView;->finish()V

    :cond_0
    return-void
.end method
