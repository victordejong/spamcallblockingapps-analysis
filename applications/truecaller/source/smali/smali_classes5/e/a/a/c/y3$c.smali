.class public Le/a/a/c/y3$c;
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
    iput-object p1, p0, Le/a/a/c/y3$c;->a:Le/a/a/c/y3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/y3$c;->a:Le/a/a/c/y3;

    iget-object v1, v0, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    .line 2
    iget-boolean v0, v0, Le/a/a/c/y3;->b1:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-interface {v1, p1, v0}, Le/a/a/c/f4;->k(Ljava/lang/CharSequence;Z)V

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
