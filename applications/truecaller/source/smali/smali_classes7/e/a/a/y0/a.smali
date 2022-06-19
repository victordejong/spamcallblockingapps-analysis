.class public final synthetic Le/a/a/y0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/notifications/ClassZeroActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/messaging/notifications/ClassZeroActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/y0/a;->a:Lcom/truecaller/messaging/notifications/ClassZeroActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Le/a/a/y0/a;->a:Lcom/truecaller/messaging/notifications/ClassZeroActivity;

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->ta(Z)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->qa()V

    return-void
.end method
