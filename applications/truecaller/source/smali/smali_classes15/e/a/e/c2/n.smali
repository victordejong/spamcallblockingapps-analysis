.class public final synthetic Le/a/e/c2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/FloatingWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/components/FloatingWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/n;->a:Lcom/truecaller/ui/components/FloatingWindow;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p0, Le/a/e/c2/n;->a:Lcom/truecaller/ui/components/FloatingWindow;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->AUTOMATIC:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    invoke-virtual {v0, p1}, Lcom/truecaller/ui/components/FloatingWindow;->b(Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->MANUAL:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    invoke-virtual {v0, p1}, Lcom/truecaller/ui/components/FloatingWindow;->b(Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V

    :goto_0
    return v1
.end method
