.class public final Le/a/h/b/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/c;-><init>(Le/a/h/b/j0$a;Landroidx/constraintlayout/widget/ConstraintLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/c;


# direct methods
.method public constructor <init>(Le/a/h/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/c$d;->a:Le/a/h/b/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/c$d;->a:Le/a/h/b/c;

    .line 2
    iget-object v0, v0, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 3
    new-instance v1, Le/a/h/b/e/e/a;

    invoke-direct {v1, p1}, Le/a/h/b/e/e/a;-><init>(Landroid/text/Editable;)V

    invoke-interface {v0, v1}, Le/a/h/b/j0$a;->Kg(Le/a/h/b/e/e/f;)V

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
