.class public final Le/a/p/a/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/b;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/p/a/b;


# direct methods
.method public constructor <init>(Le/a/p/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/b$g;->a:Le/a/p/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/p/a/b$g;->a:Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->onBackPressed()V

    return-void
.end method
