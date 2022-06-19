.class public Le/a/e/v0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/v0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/v0;


# direct methods
.method public constructor <init>(Le/a/e/v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/v0$a;->a:Le/a/e/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/v0$a;->a:Le/a/e/v0;

    .line 2
    sget-object v0, Le/a/e/v0;->y:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Le/a/e/v0;->YA(Z)Z

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
