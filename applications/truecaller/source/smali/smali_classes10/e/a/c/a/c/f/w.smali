.class public final Le/a/c/a/c/f/w;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/content/Context;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/c/f/x;

.field public final synthetic c:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/x;Landroidx/activity/result/ActivityResultRegistry;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/w;->b:Le/a/c/a/c/f/x;

    iput-object p2, p0, Le/a/c/a/c/f/w;->c:Landroidx/activity/result/ActivityResultRegistry;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/content/Context;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Le/a/c/a/c/h/h;

    iget-object v0, p0, Le/a/c/a/c/f/w;->c:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v1, p0, Le/a/c/a/c/f/w;->b:Le/a/c/a/c/f/x;

    .line 4
    iget-object v1, v1, Le/a/c/a/c/f/x;->c:Le/a/c/b/h;

    .line 5
    new-instance v2, Le/a/c/a/c/f/v;

    invoke-direct {v2, p0}, Le/a/c/a/c/f/v;-><init>(Le/a/c/a/c/f/w;)V

    invoke-direct {p1, v0, v1, v2}, Le/a/c/a/c/h/h;-><init>(Landroidx/activity/result/ActivityResultRegistry;Le/a/c/b/h;Ls1/z/b/l;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
