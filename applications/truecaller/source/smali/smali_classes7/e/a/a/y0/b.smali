.class public final synthetic Le/a/a/y0/b;
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

    iput-object p1, p0, Le/a/a/y0/b;->a:Lcom/truecaller/messaging/notifications/ClassZeroActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Le/a/a/y0/b;->a:Lcom/truecaller/messaging/notifications/ClassZeroActivity;

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->qa()V

    return-void
.end method
