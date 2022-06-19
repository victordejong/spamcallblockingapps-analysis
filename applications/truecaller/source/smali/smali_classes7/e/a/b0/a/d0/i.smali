.class public final Le/a/b0/a/d0/i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/view/ContextThemeWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/d0/i;->b:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/a/d0/i;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    return-object v0
.end method
