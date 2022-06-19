.class public final Le/a/i/e/a/b/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/a/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/e/a/b/a;


# direct methods
.method public constructor <init>(Le/a/i/e/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/b/a$f;->a:Le/a/i/e/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/i/e/a/b/a$f;->a:Le/a/i/e/a/b/a;

    .line 2
    iget-object p1, p1, Le/a/i/e/a/b/a;->k:Le/a/i/e/g/a/e/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/i/e/g/a/e/c;->v9()V

    :cond_0
    return-void
.end method
