.class Lzendesk/commonui/InputBox$c;
.super Lzendesk/commonui/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/commonui/InputBox;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lzendesk/commonui/InputBox;


# direct methods
.method constructor <init>(Lzendesk/commonui/InputBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/commonui/InputBox$c;->f:Lzendesk/commonui/InputBox;

    invoke-direct {p0}, Lzendesk/commonui/o;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lzendesk/commonui/InputBox$c;->f:Lzendesk/commonui/InputBox;

    invoke-static {v1}, Lzendesk/commonui/InputBox;->d(Lzendesk/commonui/InputBox;)Lzendesk/commonui/AttachmentsIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/commonui/AttachmentsIndicator;->getAttachmentsCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lzendesk/commonui/InputBox$c;->f:Lzendesk/commonui/InputBox;

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_3
    invoke-static {v4, v5, v2}, Lzendesk/commonui/InputBox;->e(Lzendesk/commonui/InputBox;ZZ)V

    .line 4
    iget-object v0, p0, Lzendesk/commonui/InputBox$c;->f:Lzendesk/commonui/InputBox;

    invoke-static {v0}, Lzendesk/commonui/InputBox;->f(Lzendesk/commonui/InputBox;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lzendesk/commonui/InputBox$c;->f:Lzendesk/commonui/InputBox;

    invoke-static {v0}, Lzendesk/commonui/InputBox;->f(Lzendesk/commonui/InputBox;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    :cond_5
    return-void
.end method
