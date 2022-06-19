.class public Le/a/l/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Le/a/l/i1;


# direct methods
.method public constructor <init>(Le/a/l/i1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/l/h1;->a:Le/a/l/i1;

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
    iget-object p1, p0, Le/a/l/h1;->a:Le/a/l/i1;

    .line 2
    invoke-virtual {p1}, Le/a/l/i1;->h()V

    return-void
.end method
