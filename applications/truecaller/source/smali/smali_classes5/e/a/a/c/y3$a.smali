.class public Le/a/a/c/y3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/y3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/y3$a;->a:Le/a/a/c/y3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/y3$a;->a:Le/a/a/c/y3;

    iget-object v0, v0, Le/a/a/c/y3;->S0:Le/a/a/c/o8/g;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/a/c/y3$a;->a:Le/a/a/c/y3;

    .line 2
    iget-object v2, v2, Le/a/a/c/y3;->g0:Lcom/truecaller/messaging/views/MediaEditText;

    .line 3
    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Le/a/a/c/y3$a;->a:Le/a/a/c/y3;

    .line 4
    iget-boolean v3, v3, Le/a/a/c/y3;->b1:Z

    xor-int/lit8 v3, v3, 0x1

    .line 5
    invoke-interface {v0, v1, v2, v3}, Le/a/a/c/o8/g;->W7(Ljava/lang/String;IZ)V

    .line 6
    iget-object v0, p0, Le/a/a/c/y3$a;->a:Le/a/a/c/y3;

    iget-object v0, v0, Le/a/a/c/y3;->S0:Le/a/a/c/o8/g;

    invoke-interface {v0, p1}, Le/a/a/c/o8/g;->V1(Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-nez p4, :cond_0

    if-lez p3, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/y3$a;->a:Le/a/a/c/y3;

    iget-object p1, p1, Le/a/a/c/y3;->S0:Le/a/a/c/o8/g;

    invoke-interface {p1, p2, p3}, Le/a/a/c/o8/g;->W5(II)V

    :cond_0
    return-void
.end method
