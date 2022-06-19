.class public final Le/a/c/i/e/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/e/d;->o(Ljava/lang/String;ZLandroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/c/q/a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/i/e/d;

.field public final synthetic c:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Le/a/c/i/e/d;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/e/d$a;->b:Le/a/c/i/e/d;

    iput-object p2, p0, Le/a/c/i/e/d$a;->c:Landroidx/fragment/app/FragmentManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/c/q/a;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/i/e/d$a;->b:Le/a/c/i/e/d;

    iget-object v1, p0, Le/a/c/i/e/d$a;->c:Landroidx/fragment/app/FragmentManager;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x1020002

    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Le/a/c/i/e/c$a;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    instance-of p1, p1, Le/a/c/q/a$a$a;

    if-eqz p1, :cond_1

    check-cast v0, Le/a/c/i/e/c$a;

    invoke-interface {v0}, Le/a/c/i/e/c$a;->On()V

    .line 7
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
