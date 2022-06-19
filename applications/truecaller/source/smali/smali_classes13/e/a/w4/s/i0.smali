.class public Le/a/w4/s/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/truecaller/search/global/GlobalSearchResultActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/w4/s/i0;->a:Lcom/truecaller/search/global/GlobalSearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/w4/s/i0;->a:Lcom/truecaller/search/global/GlobalSearchResultActivity;

    iget-object p2, p1, Lcom/truecaller/search/global/GlobalSearchResultActivity;->e:Le/a/w4/s/e0;

    iget-object p1, p1, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Le/a/w4/s/e0;->We(Ljava/lang/String;)V

    return-void
.end method
