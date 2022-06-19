.class public final synthetic Le/a/e/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/x;->a:Lcom/truecaller/ui/TruecallerInit;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Le/a/e/x;->a:Lcom/truecaller/ui/TruecallerInit;

    .line 1
    iget-object p1, v0, Lcom/truecaller/ui/TruecallerInit;->A:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "Current tab shouldn\'t be null"

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v4, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_CTGM:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    iget-object v6, v0, Lcom/truecaller/ui/TruecallerInit;->k:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 4
    invoke-static/range {v0 .. v6}, Le/a/w4/s/b0;->QA(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;ZLandroid/view/View;)V

    :goto_0
    return-void
.end method
