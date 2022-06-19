.class public Le/a/h0/a/d0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h0/a/d0/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h0/a/d0/c;


# direct methods
.method public constructor <init>(Le/a/h0/a/d0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/h0/a/d0/c$a;->a:Le/a/h0/a/d0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/d0/c$a;->a:Le/a/h0/a/d0/c;

    iget-object v0, v0, Le/a/h0/a/d0/c;->a:Le/a/h0/a/d0/e;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/h0/a/d0/e;->Ij(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
