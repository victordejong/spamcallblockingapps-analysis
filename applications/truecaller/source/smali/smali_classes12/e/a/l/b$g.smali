.class public final Le/a/l/b$g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/b;->nn(Le/a/l/v2/i/a/d;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/l/v2/i/c/a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Le/a/l/b;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Le/a/l/b;ZLe/a/l/v2/i/a/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/b$g;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Le/a/l/b$g;->c:Le/a/l/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/l/v2/i/c/a;

    const-string v0, "subscriptionOffer"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/l/b$g;->c:Le/a/l/b;

    invoke-virtual {v0}, Le/a/l/b;->SA()Le/a/l/y1;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/l/d0;->H9(Le/a/l/v2/i/c/a;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
