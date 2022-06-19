.class public final Le/a/l/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/a/a;


# direct methods
.method public constructor <init>(Le/a/l/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/l/a/a$b;->a:Le/a/l/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/l/a/a$b;->a:Le/a/l/a/a;

    .line 2
    iget-object p1, p1, Le/a/l/a/a;->e:Le/a/p4/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Le/a/p4/b;->L1(Z)V

    return-void

    :cond_0
    const-string p1, "qaMenuSettings"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
