.class public Lcom/truecaller/service/WidgetListService;
.super Landroid/widget/RemoteViewsService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/service/WidgetListService$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method

.method public static a(Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 4
    sget-object v3, Lcom/truecaller/blocking/ActionSource;->NONE:Lcom/truecaller/blocking/ActionSource;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object p0, p0, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    .line 6
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/service/WidgetListService$a;

    invoke-virtual {p0}, Landroid/widget/RemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/truecaller/service/WidgetListService$a;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
