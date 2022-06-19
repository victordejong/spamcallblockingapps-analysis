.class public final Le/a/s/q/f/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/q/f/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/s/q/f/b;


# direct methods
.method public constructor <init>(Le/a/s/q/f/b;)V
    .locals 0

    iput-object p1, p0, Le/a/s/q/f/b$b;->a:Le/a/s/q/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/s/q/f/b$b;->a:Le/a/s/q/f/b;

    invoke-virtual {p1}, Le/a/s/q/f/b;->PA()Le/a/s/q/f/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/s/q/f/c;->Cd()V

    return-void
.end method
