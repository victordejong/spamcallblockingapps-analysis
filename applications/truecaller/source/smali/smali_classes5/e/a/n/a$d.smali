.class public final Le/a/n/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/a;->hq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/n/a;


# direct methods
.method public constructor <init>(Le/a/n/a;)V
    .locals 0

    iput-object p1, p0, Le/a/n/a$d;->a:Le/a/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/n/a$d;->a:Le/a/n/a;

    invoke-virtual {p1}, Le/a/n/a;->OA()Le/a/n/y;

    move-result-object p1

    iget-object p2, p0, Le/a/n/a$d;->a:Le/a/n/a;

    invoke-interface {p1, p2}, Le/a/n/y;->K9(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
