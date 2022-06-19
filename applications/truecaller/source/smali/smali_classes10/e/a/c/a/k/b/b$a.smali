.class public final Le/a/c/a/k/b/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/k/b/b;->d(ZLe/a/c/a/k/d/a;)Lcom/truecaller/insights/ui/models/AdapterItem$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic b:Le/a/c/a/k/d/a;


# direct methods
.method public constructor <init>(Le/a/c/a/k/d/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/b/b$a;->b:Le/a/c/a/k/d/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/content/Context;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/c/a/k/b/b$a;->b:Le/a/c/a/k/d/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/c/a/k/d/a;->a()V

    .line 4
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
