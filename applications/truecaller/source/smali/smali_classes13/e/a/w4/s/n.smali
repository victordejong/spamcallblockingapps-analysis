.class public final synthetic Le/a/w4/s/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/search/global/GlobalSearchResultActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/s/n;->a:Lcom/truecaller/search/global/GlobalSearchResultActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Le/a/w4/s/n;->a:Lcom/truecaller/search/global/GlobalSearchResultActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 2
    iget-object p1, p1, Lcom/truecaller/search/global/GlobalSearchResultActivity;->e:Le/a/w4/s/e0;

    invoke-interface {p1}, Le/a/w4/s/e0;->Rf()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
