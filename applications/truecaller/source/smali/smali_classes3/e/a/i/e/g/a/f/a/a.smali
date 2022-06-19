.class public final Le/a/i/e/g/a/f/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/i/e/g/a/f/b/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/i/e/g/a/f/b/h;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/e/g/a/f/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/i/e/g/a/f/a/a;->b:Le/a/i/e/g/a/f/b/h;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/e/g/a/f/a/a;->b:Le/a/i/e/g/a/f/b/h;

    iget-object v1, p0, Le/a/i/e/g/a/f/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Le/a/i/e/g/a/f/b/h;->S(Ljava/lang/String;Ljava/lang/String;)V

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
