.class public final Le/a/d0/a/a$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/a;->r5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d0/a/a;


# direct methods
.method public constructor <init>(Le/a/d0/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/a$o;->a:Le/a/d0/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d0/a/a$o;->a:Le/a/d0/a/a;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Le/a/d0/a/a;->j0:Landroid/widget/PopupWindow;

    return-void
.end method
