.class public final Le/a/n/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/c;->Ph()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/n/c;


# direct methods
.method public constructor <init>(Le/a/n/c;)V
    .locals 0

    iput-object p1, p0, Le/a/n/c$d;->a:Le/a/n/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/n/c$d;->a:Le/a/n/c;

    invoke-virtual {p1}, Le/a/n/c;->OA()Le/a/n/r;

    move-result-object p1

    invoke-interface {p1}, Le/a/n/r;->Wc()V

    return-void
.end method
