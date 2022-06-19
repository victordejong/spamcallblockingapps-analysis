.class public final Le/a/c/a/m/c/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/c0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/c0;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/c0;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/c0$c;->a:Le/a/c/a/m/c/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/c/a/m/c/c0$c;->a:Le/a/c/a/m/c/c0;

    .line 2
    iget-object p1, p1, Le/a/c/a/m/c/c0;->b:Le/a/c/c0/o;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/c/c0/o;->s0()V

    .line 4
    iget-object p1, p0, Le/a/c/a/m/c/c0$c;->a:Le/a/c/a/m/c/c0;

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Le/a/c/a/m/c/c0;->PA(J)V

    return-void

    :cond_0
    const-string p1, "insightsConfig"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
