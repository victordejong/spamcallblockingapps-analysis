.class public final Le/a/e/b/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/b/c/a;


# direct methods
.method public constructor <init>(Le/a/e/b/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/c/a$b;->a:Le/a/e/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/e/b/c/a$b;->a:Le/a/e/b/c/a;

    invoke-virtual {p1}, Le/a/e/b/c/a;->OA()Le/a/e/b/c/d;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/e/b/c/d;->f8(Z)V

    return-void
.end method
