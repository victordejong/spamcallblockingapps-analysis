.class public final Le/a/o/a/g/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/g/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/o/a/g/a;


# direct methods
.method public constructor <init>(Le/a/o/a/g/a;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/g/a$b;->a:Le/a/o/a/g/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/a/g/a$b;->a:Le/a/o/a/g/a;

    .line 2
    iget-object v0, v0, Le/a/o/a/g/a;->a:Le/a/o/a/g/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le/a/o/a/g/e;->T(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public w1(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/a/g/a$b;->a:Le/a/o/a/g/a;

    .line 2
    iget-object v0, v0, Le/a/o/a/g/a;->a:Le/a/o/a/g/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le/a/o/a/g/e;->w1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
