.class public final Le/a/o/a/g/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/g/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/o/a/g/a;


# direct methods
.method public constructor <init>(Le/a/o/a/g/a;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/g/a$d;->a:Le/a/o/a/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/o/a/g/a$d;->a:Le/a/o/a/g/a;

    .line 2
    iget-object p1, p1, Le/a/o/a/g/a;->a:Le/a/o/a/g/e;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/o/a/g/e;->G0()V

    :cond_0
    return-void
.end method
