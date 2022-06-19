.class public final synthetic Le/a/e/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;

.field public final synthetic b:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/TruecallerInit;Ljava/io/Serializable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/f0;->a:Lcom/truecaller/ui/TruecallerInit;

    iput-object p2, p0, Le/a/e/f0;->b:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/a/e/f0;->a:Lcom/truecaller/ui/TruecallerInit;

    iget-object v1, p0, Le/a/e/f0;->b:Ljava/io/Serializable;

    .line 1
    iget-object v0, v0, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Le/a/a/r0/j;

    if-eqz v2, :cond_0

    .line 2
    check-cast v0, Le/a/a/r0/j;

    check-cast v1, Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-virtual {v0, v1}, Le/a/a/r0/j;->z0(Lcom/truecaller/messaging/data/types/InboxTab;)V

    :cond_0
    return-void
.end method
