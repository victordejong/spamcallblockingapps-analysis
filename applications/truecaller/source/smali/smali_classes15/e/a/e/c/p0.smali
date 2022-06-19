.class public final synthetic Le/a/e/c/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/n0/d;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/p0;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Le/a/e/c/p0;->a:Le/a/e/c/s1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/truecaller/ui/details/DetailsShowcases;->VOIP:Lcom/truecaller/ui/details/DetailsShowcases;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, v0, Le/a/e/c/s1;->w:Lcom/truecaller/ui/details/DetailsActionBar;

    .line 4
    iget-object v0, p1, Lcom/truecaller/ui/details/DetailsActionBar;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/truecaller/ui/details/DetailsActionBar;->k:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lcom/truecaller/ui/details/DetailsActionBar;->k:Ljava/lang/Runnable;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/truecaller/ui/details/DetailsShowcases;->CONTEXT_CALL:Lcom/truecaller/ui/details/DetailsShowcases;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
