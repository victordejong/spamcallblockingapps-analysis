.class public final Le/a/a/e/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/e;-><init>(Landroid/content/Context;IIIZLs1/z/b/a;Ls1/z/b/a;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/e/e;

.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/a/e/e;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/e$b;->a:Le/a/a/e/e;

    iput-object p2, p0, Le/a/a/e/e$b;->b:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/e/e$b;->b:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Le/a/a/e/e$b;->a:Le/a/a/e/e;

    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    return-void
.end method
