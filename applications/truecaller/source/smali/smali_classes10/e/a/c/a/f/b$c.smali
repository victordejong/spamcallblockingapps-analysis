.class public final Le/a/c/a/f/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/f/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/f/b;


# direct methods
.method public constructor <init>(Le/a/c/a/f/b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/f/b$c;->a:Le/a/c/a/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/c/a/f/b$c;->a:Le/a/c/a/f/b;

    invoke-virtual {p1}, Ln3/r/a/k;->dismiss()V

    return-void
.end method
