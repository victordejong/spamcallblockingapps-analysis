.class public final Le/a/r/a/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a/a;->Tx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/a/a;


# direct methods
.method public constructor <init>(Le/a/r/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a/a$f;->a:Le/a/r/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/r/a/a$f;->a:Le/a/r/a/a;

    invoke-virtual {p1}, Le/a/r/a/a;->SA()Le/a/r/a/g;

    move-result-object p1

    iget-object p2, p0, Le/a/r/a/a$f;->a:Le/a/r/a/a;

    invoke-virtual {p1, p2}, Le/a/r/a/g;->Ij(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
