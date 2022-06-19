.class public final Le/a/o/b/e0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/b/e0;-><init>(Ls1/w/f;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/m0/y;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/o/b/e0;


# direct methods
.method public constructor <init>(Le/a/o/b/e0;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/e0$a;->b:Le/a/o/b/e0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/b/e0$a;->b:Le/a/o/b/e0;

    .line 2
    iget-object v0, v0, Le/a/o/b/e0;->c:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    return-object v0
.end method
