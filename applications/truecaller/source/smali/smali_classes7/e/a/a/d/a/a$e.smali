.class public final Le/a/a/d/a/a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/d/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/d/a/a;


# direct methods
.method public constructor <init>(Le/a/a/d/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/a/a$e;->b:Le/a/a/d/a/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/a/d/a/a$e;->b:Le/a/a/d/a/a;

    .line 3
    sget-object v0, Le/a/a/d/a/a;->e:[Ls1/a/l;

    .line 4
    invoke-virtual {p1}, Le/a/a/d/a/a;->PA()Le/a/m3/k0;

    move-result-object p1

    .line 5
    iget-object p1, p1, Le/a/m3/k0;->g:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "binding.groupNameEditText"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    .line 6
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
