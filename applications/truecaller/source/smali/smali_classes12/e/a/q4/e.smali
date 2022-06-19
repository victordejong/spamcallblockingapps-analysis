.class public final synthetic Le/a/q4/e;
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

    iput-object p1, p0, Le/a/q4/e;->a:Le/a/q4/v;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Le/a/q4/e;->a:Le/a/q4/v;

    .line 1
    iget-object p1, p1, Le/a/q4/v;->k:Le/a/q4/x;

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/truecaller/referral/BulkSmsView;

    invoke-interface {v0}, Le/a/q4/t0;->T9()I

    move-result v0

    .line 4
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/referral/BulkSmsView;

    invoke-interface {v1}, Le/a/q4/t0;->Lz()I

    move-result v1

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/referral/BulkSmsView;

    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    invoke-interface {p1, v1}, Le/a/q4/t0;->Il(I)V

    :cond_0
    return-void
.end method
