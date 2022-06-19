.class public final Le/a/s/n/b/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/n/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/s/n/b/a;


# direct methods
.method public constructor <init>(Le/a/s/n/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/s/n/b/a$d;->a:Le/a/s/n/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/s/n/b/a$d;->a:Le/a/s/n/b/a;

    invoke-virtual {p1}, Le/a/s/n/b/a;->PA()Le/a/s/n/b/b;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/s/n/b/b;->W2(Z)V

    return-void
.end method
