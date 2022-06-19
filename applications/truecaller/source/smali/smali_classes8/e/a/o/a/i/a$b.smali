.class public final Le/a/o/a/i/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/i/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/o/a/i/a;


# direct methods
.method public constructor <init>(Le/a/o/a/i/a;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/i/a$b;->a:Le/a/o/a/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/o/a/i/a$b;->a:Le/a/o/a/i/a;

    invoke-virtual {p1}, Ln3/r/a/k;->dismiss()V

    return-void
.end method
