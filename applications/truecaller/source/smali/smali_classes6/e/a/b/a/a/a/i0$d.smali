.class public final Le/a/b/a/a/a/i0$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/i0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/text/Editable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/a/a/i0;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/i0;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/i0$d;->b:Le/a/b/a/a/a/i0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/text/Editable;

    .line 2
    iget-object p1, p0, Le/a/b/a/a/a/i0$d;->b:Le/a/b/a/a/a/i0;

    invoke-static {p1}, Le/a/b/a/a/a/i0;->OA(Le/a/b/a/a/a/i0;)Le/a/b/m/o;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/o;->d:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, "binding.ttlName"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
