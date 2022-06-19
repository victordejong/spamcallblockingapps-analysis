.class public final Le/a/r5/v$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r5/v;->Vn(Le/a/r5/s;Le/a/l/c/a/q;Le/a/l/c/a/q;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r5/v;


# direct methods
.method public constructor <init>(Le/a/r5/v;Le/a/r5/s;Le/a/b0/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/r5/v$h;->b:Le/a/r5/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/r5/v$h;->b:Le/a/r5/v;

    invoke-virtual {p1}, Le/a/r5/v;->QA()Le/a/r5/f0;

    move-result-object p1

    invoke-interface {p1}, Le/a/r5/f0;->D7()V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
