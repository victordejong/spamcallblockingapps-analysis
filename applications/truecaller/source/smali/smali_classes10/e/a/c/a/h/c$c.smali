.class public final Le/a/c/a/h/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/h/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/h/c;


# direct methods
.method public constructor <init>(Le/a/c/a/h/c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/h/c$c;->a:Le/a/c/a/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/c/a/h/c$c;->a:Le/a/c/a/h/c;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    return-void
.end method
