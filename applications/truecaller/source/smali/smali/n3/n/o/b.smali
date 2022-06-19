.class public final Ln3/n/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Ln3/n/o/d;

.field public final synthetic b:Ln3/n/o/e;

.field public final synthetic c:Ln3/n/h;

.field public final synthetic d:Ln3/n/o/c;


# direct methods
.method public constructor <init>(Ln3/n/o/d;Ln3/n/o/e;Ln3/n/h;Ln3/n/o/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/n/o/b;->a:Ln3/n/o/d;

    iput-object p2, p0, Ln3/n/o/b;->b:Ln3/n/o/e;

    iput-object p3, p0, Ln3/n/o/b;->c:Ln3/n/h;

    iput-object p4, p0, Ln3/n/o/b;->d:Ln3/n/o/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/n/o/b;->d:Ln3/n/o/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ln3/n/o/c;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/n/o/b;->a:Ln3/n/o/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Ln3/n/o/d;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/n/o/b;->b:Ln3/n/o/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Ln3/n/o/e;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 3
    :cond_0
    iget-object p1, p0, Ln3/n/o/b;->c:Ln3/n/h;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ln3/n/h;->a()V

    :cond_1
    return-void
.end method
