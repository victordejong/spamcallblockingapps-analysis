.class public final Le/a/t/a/x/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/x/e;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/x/e;


# direct methods
.method public constructor <init>(Le/a/t/a/x/e;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/x/e$a;->a:Le/a/t/a/x/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/t/a/x/e$a;->a:Le/a/t/a/x/e;

    invoke-virtual {p1}, Le/a/t/a/x/e;->h()Le/a/t/a/x/f;

    move-result-object p1

    check-cast p1, Le/a/t/a/x/h;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/x/g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/t/a/x/g;->dismiss()V

    :cond_0
    return-void
.end method
