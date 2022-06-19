.class public final Le/a/a0/a/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a0/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a0/a/a;


# direct methods
.method public constructor <init>(Le/a/a0/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a0/a/a$e;->a:Le/a/a0/a/a;

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
    iget-object p2, p0, Le/a/a0/a/a$e;->a:Le/a/a0/a/a;

    invoke-virtual {p2}, Le/a/a0/a/a;->WA()Le/a/a0/e;

    move-result-object p2

    iget-object p3, p0, Le/a/a0/a/a$e;->a:Le/a/a0/a/a;

    invoke-static {p3}, Le/a/a0/a/a;->SA(Le/a/a0/a/a;)Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p2, Le/a/a0/b;

    invoke-virtual {p2, p3, p1}, Le/a/a0/b;->Nj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
