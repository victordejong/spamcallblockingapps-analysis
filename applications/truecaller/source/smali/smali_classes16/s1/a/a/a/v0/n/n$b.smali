.class public final Ls1/a/a/a/v0/n/n$b;
.super Ls1/a/a/a/v0/n/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/n/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, "must have exactly "

    const-string v1, " value parameters"

    .line 1
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ls1/a/a/a/v0/n/n;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    iput p1, p0, Ls1/a/a/a/v0/n/n$b;->b:I

    return-void
.end method


# virtual methods
.method public b(Ls1/a/a/a/v0/b/v;)Z
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Ls1/a/a/a/v0/n/n$b;->b:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
