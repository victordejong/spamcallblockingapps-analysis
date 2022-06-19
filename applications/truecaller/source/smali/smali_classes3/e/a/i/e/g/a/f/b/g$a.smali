.class public final Le/a/i/e/g/a/f/b/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/g/a/f/b/g;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/e/g/a/f/b/g;

.field public final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Le/a/i/e/g/a/f/b/g;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/g/a/f/b/g$a;->b:Le/a/i/e/g/a/f/b/g;

    iput-object p2, p0, Le/a/i/e/g/a/f/b/g$a;->c:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i/e/g/a/f/b/g$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater\n         \u2026 .from(container.context)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/i/e/g/a/f/b/g$a;->b:Le/a/i/e/g/a/f/b/g;

    invoke-virtual {v1}, Le/a/i/e/g/a/f/b/g;->b()I

    move-result v1

    iget-object v2, p0, Le/a/i/e/g/a/f/b/g$a;->c:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/i/e/g/a/f/b/g$a;->b:Le/a/i/e/g/a/f/b/g;

    invoke-virtual {v1, v0}, Le/a/i/e/g/a/f/b/g;->c(Landroid/view/View;)V

    return-object v0
.end method
