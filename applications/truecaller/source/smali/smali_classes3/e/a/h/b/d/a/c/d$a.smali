.class public final Le/a/h/b/d/a/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/a/c/d;-><init>(Landroid/view/View;Le/a/h/b/d/a/c/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/d/a/c/b$a;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/c/b$a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/a/c/d$a;->a:Le/a/h/b/d/a/c/b$a;

    iput-object p2, p0, Le/a/h/b/d/a/c/d$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/h/b/d/a/c/d$a;->a:Le/a/h/b/d/a/c/b$a;

    iget-object v0, p0, Le/a/h/b/d/a/c/d$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Le/a/h/b/d/a/c/b$a;->a(Landroid/view/View;)V

    return-void
.end method
